package cn.edu.lingnan.service.impl;

import cn.edu.lingnan.mapper.OrderformMapper;
import cn.edu.lingnan.pojo.Orderform;
import cn.edu.lingnan.service.OrderformService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("orderformService")
public class OrderformServiceImpl implements OrderformService {

    @Autowired
    private OrderformMapper orderformMapper;

    @Override
    public Orderform getById(Integer id) {
        return orderformMapper.getById(id);
    }

    @Override
    public List<Orderform> getByUserId(Integer userId) {
        return orderformMapper.getByUserId(userId);
    }

    @Override
    public List<Orderform> getByBean(Orderform bean) {
        return orderformMapper.getByBean(bean);
    }

    @Override
    public List<Orderform> select(Integer userId,String num) {
        return orderformMapper.select(userId,num);
    }

    @Override
    public List<Orderform> backSelect(String param) {
        return orderformMapper.backSelect(param);
    }

    @Override
    public  List<Orderform> getByStatus(Integer userId, String status) {
        return orderformMapper.getByStatus(userId, status);
    }

    @Override
    public boolean insert(Orderform bean) {
        return orderformMapper.insert(bean);
    }

    @Override
    public boolean delete(Integer id) {
        return orderformMapper.delete(id);
    }

    @Override
    public boolean update(Orderform orderform) {
        return orderformMapper.update(orderform);
    }

    @Override
    public boolean updateStatus(Integer id, String status) {
        return orderformMapper.updateStatus(id, status);
    }

    @Override
    public List<Orderform> getList() {
        return orderformMapper.getList();
    }

}

