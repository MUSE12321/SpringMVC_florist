package cn.edu.lingnan.controller.before;

import cn.edu.lingnan.pojo.User;
import cn.edu.lingnan.service.before.UserCenterService;
import cn.edu.lingnan.service.before.UserService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private UserCenterService userCenterService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user, Model model, HttpSession session,String code) throws ParseException {

        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
            model.addAttribute("msg", "验证码错误");
            return "forward:../login.jsp";
        }

        String account = user.getAccount();
        String password = user.getPassword();

        //判断是邮箱还是手机号的正则表达式
        String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";/*注：js和java用正则表达式不一样*/
        /*String em ="/^\\w+@\\w+\\.[A-Za-z]{2,3}(\\.[A-Za-z]{2,3})?$/";*/     /*js用正则表达式*/
        String ph = "^((13[0-9])|(15[^4,\\D])|(17[0-9])|(18[0,5-9]))\\d{8}$";  /*java用验证手机号*/

       /* *//*测试用代码,前台输入手机号时测试，matches返回true/false*//*
		System.out.println(account);
		System.out.println(account.matches(ph));*/

        if(account.matches(ph)) {
            /*如果匹配上则将用户名置空，并将account中的值写到setPhone()方法中*/
            user.setAccount(null);
            user.setPhone(account);

            /*代码测试用*/
            System.out.println(user.getPhone());

        }else if(account.matches(em)) {
            user.setAccount(null);
            user.setEmail(account);
            System.out.println(user.getAccount());
        }

        User bean = null;

        List<User> list = userService.login(user,code);

        if(list.size() > 0) {
            bean = list.get(0);
        }

        if((bean != null )) {

             session.setAttribute("loginUser",bean);
             return "forward:../index1.jsp";

        } else{

            model.addAttribute("msg", "登录信息错误");

            return "forward:../login.jsp";

        }
    }

    @PostMapping("/reg")
    public String reg(User bean, String cfmpassword, Model model) {
        System.out.println("reg:::" + bean);
        System.out.println("reg:::" + cfmpassword);
        //判断用户名重复
        if (userService.getByAccount(bean.getAccount()) != null) {
            model.addAttribute("msg", "该登录名已经被使用");
            return "forward:../reg.jsp";
        }
        //判断两次密码是否一致
        if(!bean.getPassword().equals(cfmpassword)) {
            model.addAttribute("msg", "两次输入密码不一致");
            return "forward:../reg.jsp";
        }

        boolean result = userService.insert(bean);
        System.out.println(result);

        if (result) {
            System.out.println("注册成功");
            return "forward:../login.jsp";
        }
        System.out.println("注册失败");
        model.addAttribute("msg", "注册失败");
        return "forward:../reg.jsp";
    }

    //我的信息
    @RequestMapping("/userCenter")
    public String userCenter(HttpSession session) {
      //  session.getAttribute("loginUser");
        return "before/userCenter";
    }

    @RequestMapping(value = "/update")
    public String update(User user, HttpSession session)
    {
        Integer id = MyUtil.getUserId(session);
        user.setId(id);
        boolean ss =userCenterService.update(user);
        System.out.println(ss);
        //再重新注入一次
        session.setAttribute("loginUser",user);
        return userCenter(session);
    }

    /**
     * 退出登录
     */
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "forward:../index1.jsp";

    }

}
