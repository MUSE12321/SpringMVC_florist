package cn.edu.lingnan.util;
import cn.edu.lingnan.pojo.Admin;
import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.pojo.User;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
public class MyUtil {
    /**
     * 获得时间字符串
     */
    public static String getStringID(){
        String id=null;
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS");
        id=sdf.format(date);
        return id;
    }

    /**
     * 获得用户ID
     */
    public static Integer getUserId(HttpSession session) {
        User user = (User)session.getAttribute("loginUser");
        return user.getId();
    }

    /**
     * 获得用户登录名
     */
    public static String getAccount(HttpSession session) {
        User user = (User)session.getAttribute("loginUser");
        return user.getAccount();
    }

    /**
     * 获得AdminName
     */
    public static String getAdminName(HttpSession session) {
        Admin admin = (Admin)session.getAttribute("loginAdmin");
        return admin.getName();
    }

    /**
     * 获得商品ID
     */
    public static Integer getFlowerId(HttpSession session) {
        Flower flower = (Flower)session.getAttribute("flower");
        return flower.getId();
    }

    /**
     * 获得商品名
     */
    public static String getFlowerName(HttpSession session) {
        Flower flower = (Flower)session.getAttribute("flower");
        return flower.getName();
    }

}

