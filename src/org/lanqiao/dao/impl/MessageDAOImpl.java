package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.dao.IMessageDAO;
import org.lanqiao.util.DButil;
import org.lanqiao.util.Page;

public class MessageDAOImpl implements IMessageDAO{
	ResultSet rs=null;
	public List<Moive> getMoiveByPage(Page page) {
		List<Moive> moiveList = new ArrayList<>();
		String sql = "select * from " + 
				"(select rownum rn,m.*from " + 
				"(select m.* from moive_table m " + 
				"order by show_time desc)m) " + 
				"where rn>=? and rn<=?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		rs=DButil.query(sql, objs);
		try {
			while(rs.next()) {
				Moive moive = new Moive(rs.getString("MOIVE_ID"),rs.getString("MOIVE_PIC"),rs.getString("MOIVE_ADDRESS"),
						rs.getString("MOIVE_NAME"),rs.getString("MOIVE_DESCRIBE"),rs.getString("LOAD_TIME"),rs.getString("SHOW_TIME"),rs.getInt("MOIVE_SCORE"),rs.getInt("COUNTRY_ID"),
						rs.getInt("TYPE_ID"),rs.getInt("MOIVE_PLAY"));
				moiveList.add(moive);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(rs);
		}
		return moiveList;
	}

	public int getMoiveCount() {
		int result = -1;
		String sql = "select count(moive_id) from moive_table";
		rs=DButil.query(sql, null);
		try {
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(rs);
		}
		return result;
	}

}
