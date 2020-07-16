package cn.edu.lingnan.service.admin;

import cn.edu.lingnan.mapper.UserMapper;
import cn.edu.lingnan.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserManageServiceImpl implements UserManageService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryList() {
        return userMapper.queryList();
    }

    @Override
    public List<User> getByKeys(String key) {
        return userMapper.getByKeys(key);
    }

    @Override
    public User getById(Integer id) {
        return userMapper.getById(id);
    }

    @Override
    public List<User> getList() {
        return userMapper.getList();
    }

    @Override
    public int deleteById(Integer id) {
        return userMapper.deleteById(id);
    }
}
