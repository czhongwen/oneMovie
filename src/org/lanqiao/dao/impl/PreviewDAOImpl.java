package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.Preview;
import org.lanqiao.dao.PreviewDAO;
import org.lanqiao.util.DButil;
import org.lanqiao.util.Page;

public class PreviewDAOImpl implements PreviewDAO {

	@Override
	public int add(Preview preview) {
		int result = -1;
		String sql = "insert into preview_table values(?,?,?,?,?,?)";
		Object[] objs = 
				{
						preview.getPreviewId(),preview.getComment(),
						preview.getPic(),preview.getPreviewName(),
						preview.getShowTime(),preview.getLoadTime()
				};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int del(String id) {
		int result = -1;
		String sql = "delete preview where preview_id=?";
		Object[] objs = {id};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public int update(Preview preview) {
		int result = -1;
		String sql = "update preview_table set PREVIEW_COMMENT=?,PREVIEW_PIC=?,PREVIEW_NAME=?,SHOW_TIME=?,LOAD_TIME=? where PREVIEW_ID=?";
		Object[] objs = 
				{
						preview.getComment(),preview.getPic(),preview.getPreviewName(),
						preview.getShowTime(),preview.getLoadTime(),preview.getPreviewId()
				};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public List<Preview> getAll() {
		List<Preview> list = new ArrayList<>();
		String sql = "select * from preview_table";
		ResultSet res = DButil.query(sql, null);
		try {
			while(res.next()) {
				Preview preview = new Preview
						(
								res.getString("PREVIEW_ID"), res.getString("PREVIEW_COMMENT"),
								res.getString("PREVIEW_PIC"), res.getString("PREVIEW_NAME"),
								res.getString("SHOW_TIME"), res.getString("LOAD_TIME")
						);
				list.add(preview);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Preview getById(String id) {
		Preview preview = null;
		String sql = "select * from preview_table where PREVIEW_ID=?";
		Object[] objs = {id};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				preview = new Preview
						(
								res.getString("PREVIEW_ID"), res.getString("PREVIEW_COMMENT"),
								res.getString("PREVIEW_PIC"), res.getString("PREVIEW_NAME"),
								res.getString("SHOW_TIME"), res.getString("LOAD_TIME")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return preview;
	}

	@Override
	public int getTotalCount() {
		int result = -1;
		String sql = "select count(preview_id) from preview_table";
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
	public List<Preview> getByPage(Page page) {
		List<Preview> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from preview_table) n) "
				+ "where rn between ? and ?";
		Object[] objs = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Preview preview= new Preview
						(
								res.getString("PREVIEW_ID"), res.getString("PREVIEW_COMMENT"),
								res.getString("PREVIEW_PIC"), res.getString("PREVIEW_NAME"),
								res.getString("SHOW_TIME"), res.getString("LOAD_TIME")
						);
				list.add(preview);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<Preview> getByPage(Page page, String key) {
		key = "%"+key+"%";
		List<Preview> list = new ArrayList<>();
		String sql = "select  *  from  "
				+ "(select rownum rn,n.* from (select * from PREVIEW_TABLE where PREVIEW_COMMENT like ? or PREVIEW_NAME like ?  or show_time like ?  or load_time like ?  ) n) "
				+ "where rn between ? and ?";
		Object[] objs = {key,key,key,key,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				Preview pre = new Preview(
						res.getString("PREVIEW_ID"), res.getString("PREVIEW_COMMENT"),
						res.getString("PREVIEW_PIC"), res.getString("PREVIEW_NAME"),
						res.getString("SHOW_TIME"), res.getString("LOAD_TIME"));
				list.add(pre);
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
		String sql = "select count(moive_id)  from PREVIEW_TABLE where PREVIEW_COMMENT like ? or PREVIEW_NAME like ?  or show_time like ?  or load_time like ? ";
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
	public int delByids(String[] ids) {
		StringBuilder sql=new StringBuilder("delete from PREVIEW_TABLE where PREVIEW_ID in (");
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

}
