package cn.edu.lingnan.service.impl;


import cn.edu.lingnan.mapper.CommentMapper;
import cn.edu.lingnan.pojo.Comment;
import cn.edu.lingnan.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    CommentMapper commentMapper;

    @Override
    public List<Comment> getList() {
        return commentMapper.getList();
    }

    @Override
    public List<Comment> getByKeys(String key) {
        return commentMapper.getByKeys(key);
    }

    @Override
    public List<Comment> getByBean(Comment bean) {
        return null;
    }

    @Override
    public List<Comment> getByUserId(Integer id) {
        return commentMapper.getByUserId(id);
    }

    @Override
    public List<Comment> getByOrderId(Integer id) {
        return commentMapper.getByOrderId(id);
    }

    @Override
    public List<Comment> getByFlowerId(Integer id) {
        return commentMapper.getByFlowerId(id);
    }

    @Override
    public Comment getById(Integer id) {
        return commentMapper.getById(id);
    }

    @Override
    public boolean addComment(Comment bean) {
        return commentMapper.addComment(bean);
    }

    @Override
    public boolean deleteById(Integer id) {
        return commentMapper.deleteById(id);
    }

    @Override
    public boolean updateById(Comment bean) {
        return updateById(bean);
    }

}
