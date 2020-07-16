package cn.edu.lingnan.service;

import cn.edu.lingnan.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentService {

    List<Comment> getList();

    List<Comment> getByKeys(String key);

    List<Comment> getByBean(Comment bean);

    List<Comment> getByUserId(Integer id);

    List<Comment> getByOrderId(Integer id);

    List<Comment> getByFlowerId(Integer id);

    Comment getById(Integer id);

    boolean addComment(Comment bean);

    boolean deleteById(Integer id);

    boolean updateById(Comment bean);

}
