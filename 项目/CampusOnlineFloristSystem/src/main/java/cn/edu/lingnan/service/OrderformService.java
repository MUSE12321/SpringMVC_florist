package cn.edu.lingnan.service;

import cn.edu.lingnan.pojo.Orderform;

import java.util.List;

public interface OrderformService  {
    //前端：我的订单表
    List<Orderform> getByUserId(Integer userId);
    //我的订单模糊查询
    List<Orderform> select(Integer userId,String param);
    //按订单状态查询
    List<Orderform> getByStatus(Integer userId,String status);

    List<Orderform> getByBean(Orderform bean);

    //后台：模糊查询
    List<Orderform> backSelect(String param);
    //删除订单
    boolean delete(Integer id);
    //修改订单
    boolean update(Orderform orderform);
    //修改订单状态
    boolean updateStatus(Integer id,String status);
    //全部订单
    Orderform getById(Integer id);
    List<Orderform> getList();

    boolean insert(Orderform bean);

}
