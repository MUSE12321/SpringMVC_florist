package cn.edu.lingnan.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface CartMapper {

    public int focus(Map<String, Object> map);//关注商品
    public List<Map<String, Object>> isFocus(Map<String, Object> map);//是否已关注商品
    public List<Map<String, Object>> isPutCart(Map<String, Object> map);//是否已添加购物车
    public int putCart (Map<String, Object> map);//添加购物车
    public int updateCart (Map<String, Object> map);//更新购物车
    public List<Map<String, Object>> selectCart(Integer id);//查询购物车
    public Map<String, Object> selectCartByMap();//查询购物车
    public int deleteflowers (Map<String, Object> map);//删除购物车
    public int clear(Integer id);//清除购物车

}
