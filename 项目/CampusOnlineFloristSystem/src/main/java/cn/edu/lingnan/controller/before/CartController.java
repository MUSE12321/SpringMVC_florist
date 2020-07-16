package cn.edu.lingnan.controller.before;

import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.service.FlowerService;
import cn.edu.lingnan.service.before.CartService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cart")
@Transactional
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private FlowerService flowerService;

    @RequestMapping("/focus")
    public String focus(Model model, HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user_id", MyUtil.getUserId(session));
        map.put("flower_id", MyUtil.getFlowerId(session));
        List<Map<String, Object>> list = cartService.isFocus(map);
        if(list.size() > 0) {
            model.addAttribute("msg", "已关注该商品!");
        }else {
            int n = cartService.focus(map);
            if(n > 0)
                model.addAttribute("msg", "成功关注该商品!");
            else
                model.addAttribute("msg", "关注失败!");
        }
       return "before/focus";
    }

    @RequestMapping(value = "/putCart")
    public String putCart(Model model, Integer shoppingnum, HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();

        map.put("user_id", MyUtil.getUserId(session));
        map.put("flower_id", MyUtil.getFlowerId(session));
        map.put("shoppingnum", shoppingnum);
        //是否已添加购物车
        List<Map<String, Object>> list = cartService.isPutCart(map);
        if(list.size() > 0)
            cartService.updateCart(map);
        else
            cartService.putCart(map);

        session.setAttribute("cartlist1",map);
        Flower bean = flowerService.getById( MyUtil.getFlowerId(session));
        session.setAttribute("bean",bean);
        System.out.println("bean:::"+bean);
        return "before/cart";
    }

    @RequestMapping("/selectCart")
    public String selectCart(Model model, HttpSession session) {
        List<Map<String, Object>> list = cartService.selectCart(MyUtil.getUserId(session));
        double sum = 0;
        for (Map<String, Object> map : list) {
            sum = sum + (Double)map.get("payment");
        }
        session.setAttribute("total", sum);
        session.setAttribute("cartlist", list);
        return "before/cart";
    }

    @RequestMapping("/selectCartByMap")
    public String selectCartByMap(Model model, HttpSession session) {
        Map<String,Object> map1 = cartService.selectCartByMap();
        session.setAttribute("cartlist2", map1);
        return "before/cart";
    }

    @RequestMapping("/deleteflowers")
    public String deleteflowers(HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user_id", MyUtil.getUserId(session));
        map.put("flower_id", MyUtil.getFlowerId(session));
        cartService.deleteflowers(map);
        return "forward:/cart/putCart";
    }

    @RequestMapping("/clear")
    public String clear(HttpSession session) {
        cartService.clear(MyUtil.getUserId(session));
        return "forward:/cart/deleteflowers";
    }

    /**
     * 结算购物车
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("/orderConfirm")
    public String orderConfirm(Model model, HttpSession session) {
        List<Map<String, Object>> list = cartService.selectCart(MyUtil.getUserId(session));
        double sum = 0;
        for (Map<String, Object> map : list) {
            sum = sum + (Double)map.get("payment");
            System.out.println("sum::::"+sum);
        }
        model.addAttribute("total", sum);
        model.addAttribute("cartlist", list);
        //return "before/orderconfirm";
        return "before/user-orderconfirm";
    }

}
