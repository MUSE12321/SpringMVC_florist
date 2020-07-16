package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {

    public List<User> login(User user);

    //查询所有
    List<User> queryList();

    User getById(Integer id);

    List<User> getByKeys(String key);

    List<User> getList();

    int deleteById(Integer id);

    User getByAccount(String account);

    boolean insert(User bean);

}
