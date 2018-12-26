package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.User;
import org.lanqiao.dao.UserDAO;
import org.lanqiao.dao.impl.UserDAOImpl;
import org.lanqiao.service.UserService;

public class UserServiceImpl implements UserService {
	UserDAO us = new UserDAOImpl();

	@Override
	public User getUser(User user) {
		return us.getUser(user);
	}

	@Override
	public User getUserById(int id) {
		return us.getUserById(id);
	}

	@Override
	public List<User> getAllUsers() {
		return us.getAllUsers();
	}

	@Override
	public boolean delUserById(int id) {
		return us.delUserById(id)>0;
	}

	@Override
	public boolean addUser(User user) {
		return us.addUser(user)>0;
	}

	@Override
	public boolean updateUserById(User user) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
