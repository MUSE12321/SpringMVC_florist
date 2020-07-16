package cn.edu.lingnan.service.before;

import cn.edu.lingnan.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;

    @Override
    public int focus(Map<String, Object> map) {

        return cartMapper.focus(map);
    }

    @Override
    public List<Map<String, Object>> isFocus(Map<String, Object> map) {
        return cartMapper.isFocus(map);
    }

    @Override
    public List<Map<String, Object>> isPutCart(Map<String, Object> map) {

        return cartMapper.isPutCart(map);
    }

    @Override
    public int putCart(Map<String, Object> map) {

        return cartMapper.putCart(map);
    }

    @Override
    public int updateCart(Map<String, Object> map) {
        return cartMapper.updateCart(map);
    }

    @Override
    public List<Map<String, Object>> selectCart(Integer id) {

        return cartMapper.selectCart(id);
    }

    @Override
    public Map<String, Object> selectCartByMap() {
        return cartMapper.selectCartByMap();
    }

    @Override
    public int deleteflowers (Map<String, Object> map) {

        return cartMapper.deleteflowers(map);
    }

    @Override
    public int clear(Integer id) {

        return cartMapper.clear(id);
    }
}
