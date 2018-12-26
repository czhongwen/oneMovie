package org.lanqiao.service;

import org.lanqiao.bean.User;

public interface IUserService {
	
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User login(User user);
}
