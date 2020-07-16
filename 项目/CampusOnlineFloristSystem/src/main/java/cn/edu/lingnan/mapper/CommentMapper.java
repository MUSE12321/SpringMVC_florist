package cn.edu.lingnan.mapper;

import cn.edu.lingnan.pojo.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CommentMapper {

    List<Comment> getList();

    List<Comment> getByKeys(String key);

    List<Comment> getByBean(Comment bean);

    List<Comment> getByUserId(@Param("userId") Integer id);

    List<Comment> getByOrderId(@Param("orderId") Integer id);

    List<Comment> getByFlowerId(@Param("floId") Integer id);

    Comment getById(Integer id);

    boolean addComment(Comment bean);

    boolean deleteById(Integer id);

    boolean updateById(Comment bean);

}