package cn.edu.lingnan.pojo;

import java.util.Date;

public class Orderform {
    private Integer id;
    private String name;
    private String photo;
    private Integer num;//订单号码
    private Integer userId;
    private  String conName;
    private String conSex;
    private String conPhone;
    private  String address;
    private Date ordDate;
    private String status;
    private Double totalAmount;
    private String remark;

    public Orderform() {
    }

    public Orderform(Integer id, String name, String photo, Integer num, Integer userId,
                     String conName, String conSex, String conPhone, String address, Date ordDate, String status, Double totalAmount, String remark) {
        this.id = id;
        this.name = name;
        this.photo = photo;
        this.num = num;
        this.userId = userId;
        this.conName = conName;
        this.conSex = conSex;
        this.conPhone = conPhone;
        this.address = address;
        this.ordDate = ordDate;
        this.status = status;
        this.totalAmount = totalAmount;
        this.remark = remark;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    public String getConSex() {
        return conSex;
    }

    public void setConSex(String conSex) {
        this.conSex = conSex;
    }

    public String getConPhone() {
        return conPhone;
    }

    public void setConPhone(String conPhone) {
        this.conPhone = conPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getOrdDate() {
        return ordDate;
    }

    public void setOrdDate(Date ordDate) {
        this.ordDate = ordDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Orderform{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", photo='" + photo + '\'' +
                ", num=" + num +
                ", userId=" + userId +
                ", conName='" + conName + '\'' +
                ", conSex='" + conSex + '\'' +
                ", conPhone='" + conPhone + '\'' +
                ", address='" + address + '\'' +
                ", ordDate=" + ordDate +
                ", status='" + status + '\'' +
                ", totalAmount=" + totalAmount +
                ", remark='" + remark + '\'' +
                '}';
    }
}
