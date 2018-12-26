package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.TV;
import org.lanqiao.dao.TvDAO;
import org.lanqiao.util.DButil;
import org.lanqiao.util.Page;

public class TvDAOImpl implements TvDAO {

	@Override
	public List<TV> getAll() {
		List<TV> list = new ArrayList<>();
		String sql="select * from TV_TABLE";
		ResultSet res = DButil.query(sql, null);
		try {
			while(res.next()) {
				TV tv= new TV
						(
								res.getString("TV_ID"), res.getString("TV_NAME"), 
								res.getString("TV_PIC"), res.getString("LOAD_TIME"), 
								res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
								res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getInt("TV_PLAY"), res.getInt("TV_SCORE")
						);
				list.add(tv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public TV getById(String id) {
		TV tv = null;
		String sql="select * from TV_TABLE where tv_id=?";
		Object[] objs = {id};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				tv= new TV
						(
								res.getString("TV_ID"), res.getString("TV_NAME"), 
								res.getString("TV_PIC"), res.getString("LOAD_TIME"), 
								res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
								res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getInt("TV_PLAY"), res.getInt("TV_SCORE")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return tv;
	}

	@Override
	public int add(TV tv) {
		int result = -1;
		String sql="insert into tv_table values(?,?,?,?,?,?,?,?,?,?)";
		Object[] objs= 
			{
					tv.getTvId(),tv.getTvName(),
					tv.getTvPic(),tv.getTvComment(),
					tv.getLoadTime(),tv.getShowTime(),
					tv.getCountryId(),tv.getTypeId(),
					tv.getTvPlay(),tv.getTvScore()
			};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int update(TV tv) {
		int result = -1;
		String sql="update  tv_table set TV_NAME=?,"
				+ "TV_PIC=?,TV_COMMENT=?,LOAD_TIME=?,"
				+ "SHOW_TIME=?,COUNTRY_ID=?,TYPE_ID=?,"
				+ "TV_PLAY=?,TV_SCORE=? where=TV_ID=? ";
		Object[] objs= 
			{
					tv.getTvName(),tv.getTvPic(),
					tv.getTvComment(),tv.getLoadTime(),
					tv.getShowTime(),tv.getCountryId(),tv.getTypeId(),
					tv.getTvPlay(),tv.getTvScore(),
					tv.getTvId(),
			};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int del(String id) {
		int result = -1;
		String sql="delete tv_table where tv_id=?";
		Object[] objs= {id};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int getTotalCount() {
		int result = -1;
		String sql = "select count(tv_id) from tv_table";
		ResultSet res = DButil.query(sql, null);
		try {
			if(res.next()) {
				result = res.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return result;
	}

	@Override
	public List<TV> getByPage(Page page) {
		List<TV> list = new ArrayList<>();
		String sql = " select  *  from  "
				+" (  "
				+" select rownum rn,n.* from " 
								+" ( "
										+" select tt.*,MOIVE_COUNTRY_TABLE.COUNTRY_NAME,MOIVE_TYPE_TABLE.TYPE_NAME "
										+" from TV_TABLE tt,MOIVE_COUNTRY_TABLE,MOIVE_TYPE_TABLE "
										+" where MOIVE_COUNTRY_TABLE.COUNTRY_ID = tt.COUNTRY_ID "
										+" and MOIVE_TYPE_TABLE.TYPE_ID = tt.TYPE_ID "
								+" ) n "
					+" ) "
			+" where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv= new TV
						(
								res.getString("TV_ID"), res.getString("TV_NAME"), 
								res.getString("TV_PIC"), res.getString("LOAD_TIME"), 
								res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
								res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getInt("TV_PLAY"), res.getInt("TV_SCORE"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int delTvByIds(String[] ids) {
		StringBuilder sql=new StringBuilder("delete from TV_TABLE where moive_id in (");
		Object[] objects= new Object[ids.length];
		if(ids.length == 0) {
			return -1;
		}else if(ids.length == 1) {
			return this.del(ids[0]);
		}else {
			for (int i = 0; i < ids.length; i++) {
				if(i == ids.length-1) {
					sql.append("?)");
				}else {
					sql.append("?,");
				}
				objects[i] = ids[i];
			}
			return DButil.update(sql.toString(), objects);
		}
	}

	@Override
	public List<TV> getTvByPage(String key, Page page) {
		key = "%"+key+"%";
		List<TV> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from TV_TABLE where TV_NAME like ? or TV_COMMENT like ?  or show_time like ?  or load_time like ?  ) n) "
				+ "where rn between ? and ?";
		Object[] objs = {key,key,key,key,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv = new TV(
						res.getString("TV_ID"), res.getString("TV_NAME"), 
						res.getString("TV_PIC"), res.getString("LOAD_TIME"),
						res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
						res.getInt("COUNTRY_ID"),res.getInt("TYPE_ID"),
						res.getInt("TV_PLAY"), res.getInt("TV_SCORE"));
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int getTotalCount(String key) {
		key = "%"+key+"%";
		int result = -1;
		String sql = "select count(moive_id) from TV_TABLE"
				+ " where TV_NAME like ? or TV_COMMENT like ? or "
				+ " SHOW_TIME like ? or LOAD_TIME like ?";
		Object[] objs = {key,key,key,key};
		ResultSet res = DButil.query(sql, objs);
		try {
			if(res.next()) {
				result = res.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return result;
	}

	@Override
	public List<TV> getTv(Page page) {
		
		return null;
	}

	@Override
	public int getTotalCountByHeadChar(String headChar) {
		int result = -1;
		String sql = "select count(tv_id) from tv_table"
				+ " where head_char=?";
		Object[] objs = {headChar};
		ResultSet res = DButil.query(sql, objs);
		try {
			if(res.next()) {
				result = res.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return result;
	}

	@Override
	public List<TV> getTvByHeadChar(Page page, String headChar) {
		List<TV> list = new ArrayList<>();
		String sql = " select  *  from  "
				+" (  "
				+" select rownum rn,n.* from " 
								+" ( "
										+" select tt.*,MOIVE_COUNTRY_TABLE.COUNTRY_NAME,MOIVE_TYPE_TABLE.TYPE_NAME "
										+" from TV_TABLE tt,MOIVE_COUNTRY_TABLE,MOIVE_TYPE_TABLE "
										+" where MOIVE_COUNTRY_TABLE.COUNTRY_ID = tt.COUNTRY_ID "
										+" and MOIVE_TYPE_TABLE.TYPE_ID = tt.TYPE_ID "
										+" and tt.head_char = ? "
								+" ) n "
					+" ) "
			+" where rn between ? and ? ";
		Object[] objs = {headChar,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv = new TV(
						res.getString("TV_ID"), res.getString("TV_NAME"), 
						res.getString("TV_PIC"), res.getString("LOAD_TIME"),
						res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
						res.getInt("COUNTRY_ID"),res.getInt("TYPE_ID"),
						res.getInt("TV_PLAY"), res.getInt("TV_SCORE"),
						res.getString("type_name"),res.getString("country_name")
						);
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<TV> getNewTv(Page page) {
		List<TV> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select t.*,to_date(t.show_time,'yyyy-mm-dd') st from tv_table t order by st desc) n) "
				+ "where rn between ? and ?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv = new TV(
						res.getString("TV_ID"), res.getString("TV_NAME"), 
						res.getString("TV_PIC"), res.getString("LOAD_TIME"),
						res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
						res.getInt("COUNTRY_ID"),res.getInt("TYPE_ID"),
						res.getInt("TV_PLAY"), res.getInt("TV_SCORE"));
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<TV> getHot(Page page) {
		List<TV> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select t.* from tv_table t order by TV_PLAY desc) n) "
				+ "where rn between ? and ?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv = new TV(
						res.getString("TV_ID"), res.getString("TV_NAME"), 
						res.getString("TV_PIC"), res.getString("LOAD_TIME"),
						res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
						res.getInt("COUNTRY_ID"),res.getInt("TYPE_ID"),
						res.getInt("TV_PLAY"), res.getInt("TV_SCORE"));
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<TV> getHighScore(Page page) {
		List<TV> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select t.* from tv_table t order by t.TV_SCORE desc) n) "
				+ "where rn between ? and ?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TV tv = new TV(
						res.getString("TV_ID"), res.getString("TV_NAME"), 
						res.getString("TV_PIC"), res.getString("LOAD_TIME"),
						res.getString("SHOW_TIME"), res.getString("TV_COMMENT"),
						res.getInt("COUNTRY_ID"),res.getInt("TYPE_ID"),
						res.getInt("TV_PLAY"), res.getInt("TV_SCORE"));
				list.add(tv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int addPlayback(String tvId) {
		String sql = "update tv_table set tv_play=tv_play+1 where tv_id=?";
		Object[] objs = {tvId};
		return DButil.update(sql, objs);
	}

}
