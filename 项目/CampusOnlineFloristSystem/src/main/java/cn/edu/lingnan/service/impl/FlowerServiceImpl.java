package cn.edu.lingnan.service.impl;

import cn.edu.lingnan.mapper.FlowerMapper;
import cn.edu.lingnan.pojo.Flower;
import cn.edu.lingnan.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlowerServiceImpl implements FlowerService {

    @Autowired
    private FlowerMapper flowerMapper;

    @Override
    public Flower getByBean(Flower bean) {
        return flowerMapper.getByBean(bean);
    }

    @Override
    public List<Flower> getByName(String name) {
        return flowerMapper.getByName(name);
    }

    @Override
    public Flower selectByName(String name) {
        return flowerMapper.selectByName(name);
    }

    @Override
    public Flower getById(Integer id) {
        return flowerMapper.getById(id);
    }

    @Override
    public List<Flower> getByKeys(String key) {
        return flowerMapper.getByKeys(key);
    }

    @Override
    public List<Flower> getList() {
        return flowerMapper.getList();
    }

    @Override
    public boolean insertFlower(Flower bean) {
        return flowerMapper.insertFlower(bean);
    }

    @Override
    public boolean deleteById(Integer id) {
        return flowerMapper.deleteById(id);
    }

    @Override
    public boolean updateById(Flower bean) {
        return flowerMapper.updateById(bean);
    }

}
