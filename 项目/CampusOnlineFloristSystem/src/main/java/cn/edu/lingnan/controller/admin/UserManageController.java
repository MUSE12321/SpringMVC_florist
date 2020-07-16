package cn.edu.lingnan.controller.admin;

import cn.edu.lingnan.pojo.User;
import cn.edu.lingnan.service.admin.UserManageService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserManageController {

    @Autowired
    private UserManageService userManageService;

    //***********************************前台↑↓后台****************************************

    //后台数据显示
    @RequestMapping("/admin/userInfo")
    public String getList(Model model) {
        List<User> list = userManageService.getList();
        model.addAttribute("userList",list);
        return "admin/userManage";
    }

    //按关键字查找
    @RequestMapping("/admin/userInfo/sort")
    public String getByKey(String key,Model model){
        if(key !=null){
            List<User> list = userManageService.getByKeys(key);
            if (list != null){
                model.addAttribute("userList",list);
                return "admin/userManage";
            }
        }
        return getList(model);
    }

    //删除
    @RequestMapping(value="/admin/userInfo/del/{id}")
    public String deleteFlower(@PathVariable Integer id, Model model){
        userManageService.deleteById(id);
        return getList(model);
    }

}
