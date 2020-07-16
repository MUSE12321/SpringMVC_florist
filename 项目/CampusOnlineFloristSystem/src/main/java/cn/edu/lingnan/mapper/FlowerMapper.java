package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.Flower;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FlowerMapper {

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
