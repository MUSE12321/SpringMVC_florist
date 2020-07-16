package cn.edu.lingnan.controller.admin;

import cn.edu.lingnan.pojo.Comment;
import cn.edu.lingnan.service.CommentService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/comment")
public class CommentAdminController {
    @Autowired
    private CommentService commentService;

    //(全部)
    @RequestMapping("/all")
    public String queryComment(Model model) {
        List<Comment> list = commentService.getList();
        model.addAttribute("CommentList",list);
        return "admin/admin-comment";
    }

    //模糊查询
    @RequestMapping(value = "/getByKeys", method = RequestMethod.POST)
    public String select(String key, Model model) { //key来着jsp输入框，post方法
        System.out.println(key);
        List<Comment> list = commentService.getByKeys(key);
        model.addAttribute("CommentList",list);
        return "admin/admin-comment";
    }

    //删除
    @RequestMapping("{id}/deleteById")
    public String deleteOrder(@PathVariable Integer id, Model model) {
        System.out.println(id);
        boolean ss = commentService.deleteById(id);
        List<Comment> list = commentService.getList();
        model.addAttribute("CommentList",list);
        return queryComment(model);
    }
}
