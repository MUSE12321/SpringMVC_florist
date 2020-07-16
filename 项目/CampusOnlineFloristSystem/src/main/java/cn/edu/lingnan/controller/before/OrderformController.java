package cn.edu.lingnan.controller.before;

import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.pojo.Orderform;
import cn.edu.lingnan.service.OrderformService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/orderform")
public class OrderformController {

    @Autowired
    private OrderformService orderformService;

    //我的订单表模糊查询
    @RequestMapping(value = "/select", method = RequestMethod.POST)
    public String select(String select, Model model,HttpSession session) {
        System.out.println(select);
        Integer userId = MyUtil.getUserId(session);
        List<Orderform> list = orderformService.select(userId,select);
        model.addAttribute("orderList",list);
        return "before/user-orderform";
    }

    //我的订单表
    @RequestMapping(value = "/userorder")
    public String userOrderform(Model model,HttpSession session) {
        List<Orderform> list1 = orderformService.getByUserId(MyUtil.getUserId(session));
        model.addAttribute("orderList",list1);
        return "before/user-orderform";
    }

    @RequestMapping(value = "{status}/statusorder")
    public String status2( @PathVariable String status, Model model,HttpSession session){
        System.out.println( status);
        //userId通过用户登录获取！！！！
        Integer userId = MyUtil.getUserId(session);
        List<Orderform> list2 = orderformService.getByStatus(userId,status);
        model.addAttribute("orderList",list2);
        return "before/user-orderform";
    }

}
