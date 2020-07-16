package cn.edu.lingnan.controller.admin;

import cn.edu.lingnan.pojo.Admin;
import cn.edu.lingnan.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * 跳转后台登录页面
     * @param admin
     * @return
     */
    @RequestMapping("/tologin")
    public String toLogin(Admin admin) {
        return "admin/login";
    }

    @RequestMapping(value = "/admin/login", method = RequestMethod.POST)
    public String login(String username, String password, Model model, HttpSession session) {

        List<Admin> admin = adminService.login(username, password);

        Admin bean = null;

        if(admin != null && admin.size()>0 ){

            bean = admin.get(0);

            session.setAttribute("loginAdmin",bean);

        }else{

            model.addAttribute("msg","用户名或密码错误");

            return "forward:login.jsp";

        }
        return "admin/adminHome";
    }

    /**
     * 回到主页面
     * @return
     */
    @RequestMapping("/admin/home")
    public String toAdminHome(){
        return "admin/adminHome";
    }

    /**
     * 退出系统，返回后台登录界面
     */
    @RequestMapping("/admin/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "admin/login";

    }

}
