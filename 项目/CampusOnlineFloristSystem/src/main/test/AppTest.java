
import cn.edu.lingnan.mapper.UserMapper;
import cn.edu.lingnan.pojo.User;
import cn.edu.lingnan.service.UserService;
import cn.edu.lingnan.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import java.io.IOException;
import java.util.List;

public class AppTest {

    @Test
    public void test1()  {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) ctx.getBean("userService");
        List<User> user = userService.queryList();
        System.out.println(user);
    }
}
