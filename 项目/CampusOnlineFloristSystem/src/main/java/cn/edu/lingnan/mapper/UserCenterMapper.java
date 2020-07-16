package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface UserCenterMapper {
        public List<Map<String, Object>> myOrder(Integer id);//我的订单
        public List<Map<String, Object>> myFocus(Integer id);//我的收藏
        boolean update(User bean);
        User userCenter(String account);
}
