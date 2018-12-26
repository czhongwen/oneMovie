package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.dao.MoiveDAO;
import org.lanqiao.util.DButil;
import org.lanqiao.util.Page;

public class MoiveDAOImpl implements MoiveDAO {

	@Override
	public int add(Moive moive) {
		int result = -1;
		String sql = "insert into moive_table values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] objs= 
			{
					moive.getMoiveId(),moive.getMoivePic(),
					moive.getMoiveAddress(),moive.getMoiveName(),
					moive.getMoiveDescribe(),moive.getMoivePlay(),
					moive.getMoiveScore(),moive.getCountryId(),
					moive.getTypeId(),moive.getShowTime(),
					moive.getLoadTime(),
			};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int del(String id) {
		int result = -1;
		String sql = "delete from moive_table where moive_id=?";
		Object[] objs= {id};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int update(Moive moive) {
		int result = -1;
		String sql = "update MOIVE_TABLE set moive_pic=?,"
				+ "moive_address=?,moive_name=?,moive_describe=?,"
				+ "moive_play=?,moive_score=?,country_id=?,"
				+ "type_id=?,show_time=?,load_time=? where moive_id=?";
		Object[] objs= 
			{
					moive.getMoivePic(),
					moive.getMoiveAddress(),moive.getMoiveName(),
					moive.getMoiveDescribe(),moive.getMoivePlay(),
					moive.getMoiveScore(),moive.getCountryId(),
					moive.getTypeId(),moive.getShowTime(),
					moive.getLoadTime(),moive.getMoiveId()
			};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public List<Moive> getAll() {
		List<Moive> list = new ArrayList<>();
		String sql = "select * from moive_table";
		ResultSet res = DButil.query(sql, null);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
				list.add(moive);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public Moive getById(String id) {
		Moive moive = null;
		String sql = "select * from moive_table where moive_id=?";
		Object[] objs = {id};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return moive;
	}

	@Override
	public int getTotalCount() {
		int result = -1;
		String sql = "select count(moive_id) from moive_table";
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
	public List<Moive> getMoiveByPage(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from moive_table) n) "
				+ "where rn between ? and ?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int delMoiveByIds(String[] ids) {
		StringBuilder sql=new StringBuilder("delete from moive_table where moive_id in (");
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
	public List<Moive> getMoiveByPage(String key, Page page) {
		key = "%"+key+"%";
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from moive_table where moive_name like ? or moive_describe like ?  or show_time like ?  or load_time like ?  ) n) "
				+ "where rn between ? and ?";
		Object[] objs = {key,key,key,key,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
				list.add(moive);
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
		String sql = "select count(moive_id) from moive_table"
				+ " where MOIVE_NAME like ? or MOIVE_DESCRIBE like ? or "
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
	public int getTotalCountByTypeId(int typeId) {
		int result = -1;
		String sql = "select count(moive_id) from moive_table"
				+ " where type_id = ? ";
		Object[] objs = {typeId};
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
	public int getTotalCountByCountryId(int countryId) {
		int result = -1;
		String sql = "select count(moive_id) from moive_table"
				+ " where COUNTRY_ID = ? ";
		Object[] objs = {countryId};
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
	public List<Moive> getMoiveByTypeId(Page page,int typeId) {
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from moive_table where TYPE_id =?  ) n) "
				+ "where rn between ? and ?";
		Object[] objs = {typeId,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
				list.add(moive);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getMoiveByCountryId(Page page,int countryId) {
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from moive_table where Country_id =?  ) n) "
				+ "where rn between ? and ?";
		Object[] objs = {countryId,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID")
						);
				list.add(moive);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getMoive(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from "
				+" ( "
				+" select rownum rn,n.* from  "
				        +" (  "
				              +" select mt.*,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table "
				              +" where mt.country_id = moive_country_table.country_id "
				              +" and mt.type_id = moive_type_table.type_id "
				               +" ) n "
				+"  ) "
				+"   where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int getTotalByHeadChar(String headChar) {
		int result = -1;
		String sql = "select count(moive_id) from moive_table"
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
	public List<Moive> getMoiveByChar(Page page, String HeadChar) {
		List<Moive> list = new ArrayList<>();
		String sql = "select  *  from "
				+" ( "
				+" select rownum rn,n.* from  "
				        +" (  "
				              +" select mt.*,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table "
				              +" where mt.country_id = moive_country_table.country_id "
				              +" and mt.type_id = moive_type_table.type_id "
				              +" and mt.HEAD_CHAR= ? "
				              +" ) n "
				+"  ) "
				+"   where rn between ? and ? ";
		Object[] objs = {HeadChar,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getNewMoive(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = " select  *  from "
		       +"  (       select rownum rn,n.* from    "            
		       +"  (   "
		       +"  select mt.*,to_date(mt.show_time,'yyyy-mm-dd') dt ,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table " 
		       +"  where mt.country_id = moive_country_table.country_id  "
		       +"  and mt.type_id = moive_type_table.type_id  "
		       +"  order by dt desc "
		       +"  ) n   "
		       +"  )  "
		       +"  where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getHighPlay(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = " select  *  from "
		       +"  (       select rownum rn,n.* from    "            
		       +"  (   "
		       +"  select mt.*,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table " 
		       +"  where mt.country_id = moive_country_table.country_id  "
		       +"  and mt.type_id = moive_type_table.type_id  "
		       +"  order by mt.moive_play desc "
		       +"  ) n    "
		       +"  )  "
		       +"  where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getHighScore(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = " select  *  from "
		       +"  (       select rownum rn,n.* from    "            
		       +"  (   "
		       +"  select mt.*,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table " 
		       +"  where mt.country_id = moive_country_table.country_id  "
		       +"  and mt.type_id = moive_type_table.type_id  "
		       +"  order by mt.moive_score desc "
		       +"  ) n      "
		       +"  )  "
		       +"  where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Moive> getBestMoive(Page page) {
		List<Moive> list = new ArrayList<>();
		String sql = " select  *  from "
		       +"  (       select rownum rn,n.* from    "            
		       +"  (   "
		       +"  select mt.*,moive_country_table.country_name,moive_type_table.type_name from moive_table mt,moive_country_table ,moive_type_table " 
		       +"  where mt.country_id = moive_country_table.country_id  "
		       +"  and mt.type_id = moive_type_table.type_id  "
		       +"  order by mt.moive_play,mt.moive_score desc "
		       +"  ) n    "
		       +"  )  "
		       +"  where rn between ? and ? ";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Moive moive = new Moive
						(
								res.getString("MOIVE_ID"), res.getString("MOIVE_PIC"), 
								res.getString("MOIVE_ADDRESS"), res.getString("MOIVE_NAME"), 
								res.getString("MOIVE_DESCRIBE"), res.getString("SHOW_TIME"), 
								res.getString("LOAD_TIME"), res.getInt("MOIVE_PLAY"),
								res.getInt("MOIVE_SCORE"), res.getInt("COUNTRY_ID"), res.getInt("TYPE_ID"),
								res.getString("type_name"),res.getString("country_name")
						);
				list.add(moive);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int addPlayback(String moiveId) {
		String sql="update moive_table set moive_play = moive_play+1 where moive_id=?";
		Object[] objs= {moiveId};
		return DButil.update(sql, objs);
	}

}
