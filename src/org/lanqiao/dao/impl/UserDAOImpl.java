package org.lanqiao.dao.impl;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.User;
import org.lanqiao.dao.UserDAO;
import org.lanqiao.util.DButil;

public class UserDAOImpl implements UserDAO {
	//声明jdbc的相关参数
	ResultSet rs=null;

	@Override
	public User getUser(User user) {
		User rtnUser = null;
		try {
			//sql语句
			String sql="select * from user_table where user_email=? and user_password=?";
			//准备参数
			Object[] objs= {user.getEmail(),user.getPassword()};
			//执行操作
			rs=DButil.query(sql, objs);
			//封装结果集
			if (rs.next()) {
				rtnUser=new User();
				rtnUser.setId(rs.getInt("user_id"));
				rtnUser.setAccount(rs.getString("user_account"));
				rtnUser.setPassword(rs.getString("user_password"));
				rtnUser.setName(rs.getString("user_name"));
				rtnUser.setEmail(rs.getString("user_email"));
				rtnUser.setPhone(rs.getString("user_phone"));
				rtnUser.setVip(rs.getInt("user_vip"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(rs);
		}
		return rtnUser;
	}


	@Override
	public User getUserById(int id) {
		User user=null;
		//sql语句
		String sql="select * from user_table where user_id=?";
		//准备参数
		Object[] objs= {id};
		//执行操作
		rs=DButil.query(sql, objs);
		//封装结果集
		try {
			if(rs.next()) {
				user=new User(rs.getInt("user_id"), rs.getString("user_account"),
						rs.getString("user_password"), rs.getString("user_name"),
						rs.getString("user_email"),rs.getString("user_phone"), 
						rs.getInt("user_vip"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(rs);
		}
		return user;
	}

	@Override
	public List<User> getAllUsers() {
		List<User> list=new ArrayList<>();
		//sql语句
		String sql="select * from user_table";
		//执行操作
		rs=DButil.query(sql, null);
		try {
			while(rs.next()) {
				//创建user对象
				User user=new User(rs.getInt("user_id"), rs.getString("user_account"),
						rs.getString("user_password"), rs.getString("user_name"),
						rs.getString("user_email"),rs.getString("user_phone"), 
						rs.getInt("user_vip"));
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int delUserById(int id) {
		int result=-1;
		//sql语句
		String sql="delete user_table where user_id=?";
		//准备参数
		Object[] objs= {id};
		result=DButil.update(sql, objs);
		DButil.close(rs);
		return result;
	}

	@Override
	public int addUser(User user) {
		int result=-1;
		//sql语句
		String sql="insert into user_table values(USER_ID_SEQ.nextval,?,?,?,?,?,?)";
		//准备参数
		Object[] objs= {user.getAccount(),user.getPassword(),user.getName(),
				user.getEmail(),user.getPhone(),user.getVip()};
		//执行操作
		result=DButil.update(sql, objs);
		DButil.close(rs);
		return result;
	}

	@Override
	public int updateUserById(User user) {
		int result = 0;
		//sql语句
		String sql = "update user_table set user_account=?,user_password=?,user_name=?,"
				+ "user_email=?,user_phone=?,user_vip=? where user_id=?";
		//准备参数
		Object[] objs = {user.getAccount(),user.getPassword(),user.getName(),user.getEmail(),
				user.getPhone(),user.getVip(),user.getId()};
		//执行操作
		result = DButil.update(sql, objs);
		DButil.close(rs);
		return result;
	}
	
}
