package cn.edu.lingnan.service.admin;

import cn.edu.lingnan.pojo.User;

import java.util.List;

public interface UserManageService {

    List<User> queryList();

    List<User> getByKeys(String key);

    User getById(Integer id);

    List<User> getList();

    int deleteById(Integer id);

}
