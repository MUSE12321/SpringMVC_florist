package cn.edu.lingnan.service.admin;

import cn.edu.lingnan.mapper.AdminMapper;
import cn.edu.lingnan.pojo.Admin;
import cn.edu.lingnan.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<Admin> login(String username, String password) {

        return adminMapper.login(username, password);
    }
}
