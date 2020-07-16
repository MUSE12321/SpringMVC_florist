package cn.edu.lingnan.pojo;

import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class Comment {

    private Integer id;
    private Integer userId;
    private String loginName;
    private Integer floId;
    private Integer orderId;
    private Date date;//评论时间
    private String comment;

    public Comment() {
    }

    public Comment(Integer id, Integer userId, String loginName, Integer floId, Integer orderId, Date date, String comment) {
        this.id = id;
        this.userId = userId;
        this.loginName = loginName;
        this.floId = floId;
        this.orderId = orderId;
        this.date = date;
        this.comment = comment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public Integer getFloId() {
        return floId;
    }

    public void setFloId(Integer floId) {
        this.floId = floId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", userId=" + userId +
                ", loginName='" + loginName + '\'' +
                ", floId=" + floId +
                ", orderId=" + orderId +
                ", date=" + date +
                ", comment='" + comment + '\'' +
                '}';
    }

}
