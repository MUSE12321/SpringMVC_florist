package cn.edu.lingnan.service.before;

import cn.edu.lingnan.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserCenterService {

    public List<Map<String, Object>> myOrder(Integer id);//我的订单
    public List<Map<String, Object>> myFocus(Integer id);//我的收藏
    boolean update(User bean);
    User userCenter(String account);
}
