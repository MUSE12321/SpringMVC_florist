package cn.edu.lingnan.service.before;

import cn.edu.lingnan.pojo.User;

import java.util.List;

public interface UserService {

    public List<User> login(User user,String code);

    //查询所有
    List<User> queryList();

    User getByAccount(String account);
    boolean insert(User bean);

}
