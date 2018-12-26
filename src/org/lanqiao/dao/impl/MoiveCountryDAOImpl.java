package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.dao.MoiveCountryDAO;
import org.lanqiao.util.DButil;

public class MoiveCountryDAOImpl implements MoiveCountryDAO {

	@Override
	public int add(MoiveCountry moiveCountry) {
		String sql = "insert into moive_country_table values(moive_country.nextval,?)";
		Object[] objs= {moiveCountry.getCountryName()};
		return DButil.update(sql, objs);
	}

	@Override
	public int del(int id) {
		String sql = "delete from moive_country_table where country_id=?";
		Object[] objs= {id};
		return  DButil.update(sql, objs);
	}

	@Override
	public int update(MoiveCountry moiveCountry) {
		String sql = "update from moive_country_table set country_name=? where country_id=?";
		Object[] objs= {moiveCountry.getCountryName(),moiveCountry.getId()};
		return  DButil.update(sql, objs);
	}

	@Override
	public List<MoiveCountry> getAll() {
		List<MoiveCountry> list = new ArrayList<>();
		String sql = "select * from moive_country_table";
		ResultSet res= DButil.query(sql, null);
		try {
			while(res.next()) {
				MoiveCountry mc=new MoiveCountry(res.getInt("country_id"), res.getString("country_name"));
				list.add(mc);
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
	public MoiveCountry queryById(int id) {
		MoiveCountry mc = null;
		String sql = "select * from moive_country_table where country_id=?";
		Object[] objs = {id};
		ResultSet res= DButil.query(sql, objs);
		try {
			if(res.next()) {
				mc=new MoiveCountry(res.getInt("country_id"), res.getString("country_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return mc;
	}

}
