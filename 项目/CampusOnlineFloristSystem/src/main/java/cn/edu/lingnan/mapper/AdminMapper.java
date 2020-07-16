package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AdminMapper {

    List<Admin> login(@Param("username") String username, @Param("password") String password);

}
