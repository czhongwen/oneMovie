package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.Index;
import org.lanqiao.dao.IndexDAO;
import org.lanqiao.util.DButil;

public class IndexDAOImpl implements IndexDAO {

	@Override
	public boolean add(Index index) {
		int result = 0;
		String sql = "insert into index_table values(index_ID_SEQ.Nextval,?,?,?,?)";
		Object[] objs= {index.getPic(),index.getMoiveName(),index.getMoiveComment(),index.getMoiveAddress()};
		result = DButil.update(sql, objs);
		return result>0?true:false;
	}

	@Override
	public int del(int ID) {
		int result = 0;
		String sql = "delete from index_table where index_id=?";
		Object[] objs= {ID};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int update(Index index) {
		//这是返回的结果默认为0
		int result = 0;
		String sql = "update index_table set pic=?, moive_name=?,moive_comment=?,moive_address=? where index_id=?";
		Object[] objs= {index.getPic(),index.getMoiveName(),index.getMoiveComment(),index.getMoiveAddress(),index.getIndexID()};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public List<Index> query() {
		List<Index> listIndex = new ArrayList<>();
		String sql = "select * from index_table";
		ResultSet res = DButil.query(sql, null);
		try {
			//封装所有轮播的信息
			while(res.next()) {
				Index index = new Index
						(res.getInt("index_id"),res.getString("pic"),
						 res.getString("moive_name"),res.getString("moive_comment"),
						 res.getString("moive_address")
						);
				listIndex.add(index);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return listIndex;
	}

	@Override
	public Index queryById(int id) {
		String sql = "select * from index_table where index_id=?";
		Index index = null;
		Object[] objs = {id};
		ResultSet res = DButil.query(sql, objs);
		try {
			//封装所有轮播的信息
			while(res.next()) {
				index = new Index
						(res.getInt("index_id"),res.getString("pic"),
						 res.getString("moive_name"),res.getString("moive_comment"),
						 res.getString("moive_address")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return index;
	}

	
	
}
