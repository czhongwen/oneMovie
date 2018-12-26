package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.MoiveType;
import org.lanqiao.dao.MoiveTypeDAO;
import org.lanqiao.util.DButil;

public class MoiveTypeDAOImpl implements MoiveTypeDAO {

	@Override
	public int add(MoiveType moiveType) {
		String sql = "insert into moive_type_table values(moive_type.nextval,?)";
		Object[] objs= {moiveType.getTypeName()};
		return DButil.update(sql, objs);
	}

	@Override
	public int del(int id) {
		String sql = "delete from moive_type_table where type_id=?";
		Object[] objs= {id};
		return DButil.update(sql, objs);
	}

	@Override
	public int update(MoiveType moiveType) {
		String sql = "update moive_type_table set type_name=? where type_id=?";
		Object[] objs= {moiveType.getTypeName(),moiveType.getId()};
		return DButil.update(sql, objs);
	}

	@Override
	public List<MoiveType> getAll() {
		List<MoiveType> list = new ArrayList<>();
		String sql = "select * from moive_type_table ";
		ResultSet res = DButil.query(sql, null);
		try {
			while(res.next()) {
				MoiveType mt = new MoiveType(res.getInt("type_id"), res.getString("type_name"));
				list.add(mt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public MoiveType queryById(int id) {
		MoiveType mt = null;
		String sql = "select * from moive_type_table where type_id=?";
		Object[] objs = {id};
		ResultSet res= DButil.query(sql, objs);
		try {
			if(res.next()) {
				mt=new MoiveType(res.getInt("type_id"), res.getString("type_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return mt;
	}

}
