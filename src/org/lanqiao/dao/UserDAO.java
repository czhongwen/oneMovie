package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.User;

public interface UserDAO {

	/**
	 * 根据用户信息查找用户
	 * @param user
	 * @return
	 */
	User getUser(User user);
	
	/**
	 * 根据用户id查询用户信息
	 * @param id
	 * @return
	 */
	User getUserById(int id);
	
	/**
	 * 查询所有用户信息
	 * @return
	 */
	List<User> getAllUsers();
	
	/**
	 * 根据ID删除信息
	 * @param id
	 * @return
	 */
	int delUserById(int id);
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	int addUser(User user);
	
	/**
	 * 根据ID修改用户所有信息
	 * @param user
	 * @return
	 */
	int updateUserById(User user);
}
