package cn.edu.lingnan.controller.before;

import cn.edu.lingnan.pojo.Comment;
import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.service.CommentService;
import cn.edu.lingnan.service.FlowerService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/flower")
public class FlowerController {

    @Autowired
    private FlowerService flowerService;
    @Autowired
    private CommentService commentService;

    //跳转至主页
    @RequestMapping("/flowerHome")
    public String toFlowerHome(Model model){
        List<Flower> list = flowerService.getList();
        //把list传到jsp
        model.addAttribute("flowerList",list);
        return "forward:../index.jsp";
    }

    //商品浏览页
    @RequestMapping("/flowerShop")
    public String queryFlowers(Model model) {
        List<Flower> list = flowerService.getList();
        //把list传到jsp
        model.addAttribute("flowerList",list);
        return "forward:../flowerShop.jsp";
    }

    //按关键字查找
    @RequestMapping("/flowerSort")
    public String queryByKey(String key,Model model){
        System.out.println(key);
        if (key != null){
            List<Flower> list = flowerService.getByKeys(key);
            model.addAttribute("flowerList",list);
            return "forward:../flowerShop.jsp";
        }
        return queryFlowers(model);
    }

    //商品详细页+评论显示
    @RequestMapping(value = "/{id}/detailFlower",method = RequestMethod.GET)
    public String detailFlower(@PathVariable Integer id, HttpSession session,Model model) {
        System.out.println(id);
        //flower数据
        Flower bean = flowerService.getById(id);
        session.setAttribute("flower",bean);
        //session.getAttribute("flower");
        //评价
        List<Comment> list = commentService.getByFlowerId(id);
        if(list!=null){
            model.addAttribute("commentList",list);
        }
        return "../../flowersDetails";
    }

}
