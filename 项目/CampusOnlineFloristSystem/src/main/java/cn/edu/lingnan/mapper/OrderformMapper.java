package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.Admin;
import cn.edu.lingnan.pojo.Orderform;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface OrderformMapper {

    //前端：我的订单表
    List<Orderform> getByUserId(Integer userId);
    //前端：我的订单模糊查询
    List<Orderform> select(@Param("userId")Integer userId, @Param("num")String num);
    //前端：按订单状态查询
    List<Orderform> getByStatus(@Param("userId")Integer userId, @Param("status")String status);
    //订单查询，用于评价审核(作废了，没得搞)
    List<Orderform> getByBean(Orderform bean);

    //后台：模糊查询
    List<Orderform> backSelect(String param);
    //后台：删除订单
    boolean delete(Integer id);
    //后台：修改订单
    boolean update(Orderform orderform);
    //后台：修改订单状态
    boolean updateStatus(@Param("id")Integer id, @Param("status")String status);
    //后台：全部订单
    Orderform getById(Integer id);
    List<Orderform> getList();

    boolean insert(Orderform bean);

}
