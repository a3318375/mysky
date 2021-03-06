package mysky;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yuxh.mysky.entry.User;
import com.yuxh.mysky.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
// 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring/spring-mybatis.xml" })
public class TestMyBatis {

	@Resource
	private UserService userService;

	@Test
	public void test1() {
		User user = userService.getUserById("admin");
		System.out.println(user.getName());
		// logger.info("值："+user.getUserName());
	}
}
