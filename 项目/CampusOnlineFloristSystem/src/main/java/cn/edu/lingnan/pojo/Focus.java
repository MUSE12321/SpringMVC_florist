package cn.edu.lingnan.pojo;

import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class Focus {
    private Integer id;
    private Integer flowerId;
    private Integer userId;
    private Date focustime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(Integer flowerId) {
        this.flowerId = flowerId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getFocustime() {
        return focustime;
    }

    public void setFocustime(Date focustime) {
        this.focustime = focustime;
    }

    public Focus() {
    }

    public Focus(Integer id, Integer flowerId, Integer userId, Date focustime) {
        this.id = id;
        this.flowerId = flowerId;
        this.userId = userId;
        this.focustime = focustime;
    }

    @Override
    public String toString() {
        return "Focus{" +
                "id=" + id +
                ", flowerId=" + flowerId +
                ", userId=" + userId +
                ", focustime=" + focustime +
                '}';
    }
}
