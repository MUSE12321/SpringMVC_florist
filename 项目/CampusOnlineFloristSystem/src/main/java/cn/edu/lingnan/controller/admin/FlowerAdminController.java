package cn.edu.lingnan.controller.admin;

import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.service.FlowerService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/admin/flower")
public class FlowerAdminController {

    @Autowired
    private FlowerService flowerService;

    //后台数据显示
    @RequestMapping("/flowerManagement")
    public String getList(Model model) {
        List<Flower> list = flowerService.getList();
        model.addAttribute("list",list);
        return "admin/flowers-management";
    }

    //按关键字查找
    @RequestMapping("/flowerManagement/sort")
    public String getByKey(String key,Model model){
        System.out.println(key);
        if(key !=null){
            List<Flower> list = flowerService.getByKeys(key);
            if (list != null){
                model.addAttribute("list",list);
                return "admin/flowers-management";
            }
        }
        return getList(model);
    }

    //删除
    @RequestMapping(value="/flowerManagement/del/{id}")
    public String deleteFlower(@PathVariable Integer id, Model model){

        flowerService.deleteById(id);

        return getList(model);
    }

    //跳转到修改
    @RequestMapping("/flowerManagement/{id}/jumpUpdate")
    public String updateFlower(@PathVariable Integer id, HttpSession session){
        Flower bean = flowerService.getById(id);
        session.setAttribute("flower",bean);
        return "admin/flower-update";
    }

    //修改
    @RequestMapping("/flowerManagement/update")
    public String updateFlower(Flower flower, MultipartFile pictureFile, Model model, HttpServletRequest request,HttpSession session) throws IOException {

        //如果有上传图片执行操作
        String picPath=null;
        if (!pictureFile.isEmpty()) {
            //UUID随机生成图片名字
            String imgName = UUID.randomUUID().toString().replace("-","");
            //获取原始文件名并截取后缀
            String fileName = pictureFile.getOriginalFilename();
            String imaLastName = fileName.substring(fileName.lastIndexOf("."));
            //获取项目路径
            String filePath = request.getSession().getServletContext().getRealPath("/")+"flowers/assets/img/flowers/";
            //创建本地文件流，存放图片路径
            File file = new File(filePath+imgName+imaLastName);
            //写入磁盘
            pictureFile.transferTo(file);
            picPath = "flowers/assets/img/flowers/"+imgName+imaLastName;
        }
        System.out.println(picPath);
        //set注入路径
        flower.setPhoto(picPath);
        boolean flag = flowerService.updateById(flower);
        if (flag != true) {
            model.addAttribute("msg", "修改失败，请重新输入");
            return "admin/flower-update";
        }
        return getList(model);
    }

    //跳转到添加页面
    @RequestMapping("/flowerManagement/jumpAdd")
    public String jumpAdd(){
        return "admin/flower-add";
    }

    //添加,method= {RequestMethod.POST,RequestMethod.GET}
    @RequestMapping("/flowerManagement/add")
    public String addFlower(Flower flower, MultipartFile pictureFile, Model model, HttpServletRequest request) throws IOException {
        //判断是否存在重复商品
        String name = flower.getName();
        System.out.println(name);
        if (flowerService.selectByName(flower.getName())!=null){
            model.addAttribute("msg", "数据库中已存在此商品");
            return "admin/flower-add";
        }
        //如果有上传图片执行操作
        String picPath=null;
        if (!pictureFile.isEmpty()) {
            //UUID随机生成图片名字
            String imgName = UUID.randomUUID().toString().replace("-","");
            //获取原始文件名并截取图片后缀名
            String fileName = pictureFile.getOriginalFilename();
            String imaLastName = fileName.substring(fileName.lastIndexOf("."));
            //获取项目路径
            String filePath = request.getSession().getServletContext().getRealPath("/")+"flowers/assets/img/flowers/";
            //创建本地文件流，存放图片路径
            File file = new File(filePath+imgName+imaLastName);
            //写入磁盘
            pictureFile.transferTo(file);
            picPath = "flowers/assets/img/flowers/"+imgName+imaLastName;
        }
        System.out.println(picPath);
        //set注入路径
        flower.setPhoto(picPath);
        System.out.println(flower);
        boolean flag = flowerService.insertFlower(flower);
        //失败返回添加页面
        if(flag!=true){
            model.addAttribute("msg", "添加失败，请重新输入");
            return "admin/flower-add";
        }
        return getList(model);
    }

}
