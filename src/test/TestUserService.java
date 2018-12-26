package test;

import org.lanqiao.bean.User;
import org.lanqiao.service.UserService;
import org.lanqiao.service.impl.UserServiceImpl;

public class TestUserService {
	public static void main(String[] args) {
		UserService us = new UserServiceImpl();
		User user = new User();
		user.setEmail("1415952110@qq.com");
		user.setPassword("12345");
		System.out.println(us.getUser(user));
	}
}
