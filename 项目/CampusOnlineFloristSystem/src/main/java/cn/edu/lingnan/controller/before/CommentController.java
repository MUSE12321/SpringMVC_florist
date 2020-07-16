package cn.edu.lingnan.controller.before;

import cn.edu.lingnan.pojo.Comment;
import cn.edu.lingnan.pojo.Orderform;
import cn.edu.lingnan.service.CommentService;
import cn.edu.lingnan.service.OrderformService;
import cn.edu.lingnan.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    CommentService commentService;

    //添加评论
    @RequestMapping(value="/flower")//method = RequestMethod.POST
    public String addComment(Comment comment, HttpSession session) throws ParseException {
        System.out.println(comment+"comment");
        comment.setUserId(MyUtil.getUserId(session));
        System.out.println(MyUtil.getUserId(session));
        comment.setLoginName(MyUtil.getAccount(session));
        comment.setFloId(MyUtil.getFlowerId(session));
        //String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        comment.setDate( sdf.parse(sdf.format( new Date() )) );
        commentService.addComment(comment);
        return "../../index1";
    }

}
