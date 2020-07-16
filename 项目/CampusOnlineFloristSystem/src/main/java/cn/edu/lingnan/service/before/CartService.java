package cn.edu.lingnan.service.before;

import java.util.List;
import java.util.Map;

public interface CartService {
    public int focus(Map<String, Object> map);
    public List<Map<String, Object>> isFocus(Map<String, Object> map);
    public List<Map<String, Object>> isPutCart(Map<String, Object> map);
    public int putCart (Map<String, Object> map);
    public int updateCart (Map<String, Object> map);
    public List<Map<String, Object>> selectCart(Integer id);
    public Map<String, Object> selectCartByMap();//查询购物车
    public int deleteflowers (Map<String, Object> map);//删除商品
    public int clear(Integer id);//清除购物车
}
