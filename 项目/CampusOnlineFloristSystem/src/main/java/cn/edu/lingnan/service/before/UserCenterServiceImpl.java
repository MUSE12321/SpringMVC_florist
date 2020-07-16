package cn.edu.lingnan.service.before;

import cn.edu.lingnan.mapper.UserCenterMapper;
import cn.edu.lingnan.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserCenterServiceImpl implements UserCenterService {

    @Autowired
    private UserCenterMapper userCenterMapper;

    @Override
    public List<Map<String, Object>> myOrder(Integer id) {
        return userCenterMapper.myOrder(id);
    }

    @Override
    public List<Map<String, Object>> myFocus(Integer id) {
        return userCenterMapper.myFocus(id);
    }

    @Override
    public boolean update(User bean) {
        return userCenterMapper.update(bean);
    }

    @Override
    public User userCenter(String account) {
        return userCenterMapper.userCenter(account);
    }

}
