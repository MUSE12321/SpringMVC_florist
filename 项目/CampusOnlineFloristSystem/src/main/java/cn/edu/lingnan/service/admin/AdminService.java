package cn.edu.lingnan.service.admin;

import cn.edu.lingnan.pojo.Admin;

import java.util.List;

public interface AdminService {

    List<Admin> login(String username, String password);

}
