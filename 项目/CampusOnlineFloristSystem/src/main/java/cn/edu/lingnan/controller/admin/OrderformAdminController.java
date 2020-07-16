package cn.edu.lingnan.controller.admin;

import cn.edu.lingnan.pojo.Orderform;
import cn.edu.lingnan.service.OrderformService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/orderform")
public class OrderformAdminController {

    @Autowired
    private OrderformService orderformService;

    //后台订单表(全部)
    @RequestMapping("/order")
    public String queryOrder(Model model) {
        List<Orderform> list = orderformService.getList();
        model.addAttribute("orderList",list);
        return "admin/backstage-orfo";
    }

    //后台管理模糊查询
    @RequestMapping(value = "/backselect", method = RequestMethod.POST)
    public String select(String key, Model model) {
        System.out.println(key);
        List<Orderform> list = orderformService.backSelect(key);
        model.addAttribute("orderList",list);
        return "admin/backstage-orfo";
    }

    //后台删除某条订单记录
    @RequestMapping("{id}/delete")
    public String deleteOrder(@PathVariable Integer id, Model model) {
        System.out.println(id);
        boolean ss = orderformService.delete(id);
//        List<Orderform> list = orderformService.getList();
//        model.addAttribute("orderList",list);
//        return "admin/backstage-orfo";
        return queryOrder(model);
    }

    //后台修改某条订单记录
    @RequestMapping("{id}/getId")
    public String updateIdOrder(@PathVariable Integer id, HttpSession session, HttpServletResponse response) {
//        System.out.println(id);
        response.setContentType("UTF-8");
        Orderform orderform = orderformService.getById(id);
        session.setAttribute("orderform",orderform);
        return "admin/orderform-update";
    }

    //后台修改某条订单记录
    @RequestMapping("{id}/update")
    public String updateOrder(@PathVariable Integer id,Orderform orderform, Model model) {
        System.out.println(id);
        boolean ss = orderformService.update(orderform);
        if(ss){
            return queryOrder(model);
        }
        return "admin/orderform-update";
    }

    //后台修改某条订单状态
    @RequestMapping("{id}/updateStatus")
    public String updateStatus(@PathVariable Integer id, @RequestParam("status") String status, Model model) {
        System.out.println("修改订单状态：：："+ id + status);
        boolean ss = orderformService.updateStatus(id, status);
        if(ss){
            return queryOrder(model);
        }
        return "orderform-update";
    }

}
