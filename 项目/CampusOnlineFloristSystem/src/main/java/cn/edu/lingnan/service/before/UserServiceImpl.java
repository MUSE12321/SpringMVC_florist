package cn.edu.lingnan.service.before;

import cn.edu.lingnan.mapper.UserMapper;
import cn.edu.lingnan.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> login(User user,String code) {

        // 测试
		System.out.println(user.getAccount());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		System.out.println(user.getName());

        return userMapper.login(user);
    }

    @Override
    public List<User> queryList() {

        return userMapper.queryList();
    }

    @Override
    public User getByAccount(String account) {
        return userMapper.getByAccount(account);
    }

    @Override
    public boolean insert(User bean) {
        return userMapper.insert(bean);
    }

}
