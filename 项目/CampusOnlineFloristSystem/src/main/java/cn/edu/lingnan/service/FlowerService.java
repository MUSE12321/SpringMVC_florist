package cn.edu.lingnan.service;

import cn.edu.lingnan.pojo.Flower;

import java.util.List;

public interface FlowerService {

    Flower getByBean(Flower bean);

    List<Flower> getByName(String name);

    Flower selectByName(String name);

    Flower getById(Integer id);

    List<Flower> getByKeys(String key);

    List<Flower> getList();

    boolean insertFlower(Flower bean);

    boolean deleteById(Integer id);

    boolean updateById(Flower bean);

}
