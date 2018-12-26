package org.lanqiao.dao.impl;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.lanqiao.bean.FilmReview;
import org.lanqiao.dao.FilmReviewDAO;
import org.lanqiao.util.DButil;
import org.lanqiao.util.Page;

public class FilmReviewDaoImpl implements FilmReviewDAO{

	@Override
	public List<FilmReview> getFilmReviewById(String moiveId) {
		List<FilmReview> list = new ArrayList<>();
		String sql = "(select * from FILE_PRIVIEW_table where moive_id=?";
		Object[] objects = {moiveId};
		ResultSet res = DButil.query(sql, objects);
		try {
			while(res.next()) {
				FilmReview fr = new FilmReview(
						res.getString("moive_id"), res.getInt("user_id"), 
						res.getString("review"), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getDate("load_time")),
						0, res.getInt("FILM_RECIEW_ID"));
				list.add(fr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<FilmReview> getFilmReviewAll(Page page,int key) {
		List<FilmReview> list = new ArrayList<>();
		String sql = 
			"select  *  from " 
				+"(select rownum rn,n.* from "
					+"("
						+"select FILE_PRIVIEW_table.User_Id,FILE_PRIVIEW_table.Moive_Id,"
						+"FILE_PRIVIEW_table.Load_Date,Examine,Review,FILE_PRIVIEW_table.Film_Reciew_Id,"
						+"user_table.user_name,moive_table.moive_name,moive_table.moive_pic"
				    	+" from user_table,moive_table,FILE_PRIVIEW_table " 
				    	+"where  user_table.user_id = FILE_PRIVIEW_TABLE.user_id  "
				    	+"and moive_table.moive_Id = FILE_PRIVIEW_TABLE.moive_Id "
				    	+"and FILE_PRIVIEW_table.EXAMINE=? "
				    +") n"
				+")  where rn between ? and ?";
		Object[] objects = {key,(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objects);
		try {
			while(res.next()) {
				FilmReview fr = new FilmReview(
						res.getString("moive_id"), res.getInt("user_id"), 
						res.getString("review"), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getDate("load_date")),
						res.getInt("examine"), res.getInt("FILM_RECIEW_ID"),
						res.getString("user_name"),res.getString("moive_name"),res.getString("moive_pic"));
				list.add(fr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int getFilmReviewCount(int key) {
		int result = -1;
		String sql = "select * from FILE_PRIVIEW_table where EXAMINE=?";
		Object[] objects = {key};
		result = DButil.update(sql, objects);
		return result;
	}

	@Override
	public int addFilmReview(FilmReview review) {
		int result = -1;							//user_id ,moive_id ,load_time, examine ,review,
		String sql = "insert into FILE_PRIVIEW_TABLE values(?,?,?,?,?,FILE_REVIEW_SEQ.nextval)";
		Object[] objects = {
								review.getUserId(),review.getMoiveId(),new Date(System.currentTimeMillis()),
								review.getCheckReview(), review.getCommentInfo()
							};

		result = DButil.update(sql, objects);
		return result;
	}

	@Override
	public int updateFilmReview(FilmReview review) {
		return 0;
	}

	@Override
	public int delFilmReviewById(int filmReviewId) {
		int result = -1;
		String sql = "delete from FILE_PRIVIEW_table where FILM_RECIEW_ID=?";
		Object[] objects = {filmReviewId};
		result = DButil.update(sql, objects);
		return result;
	}

	@Override
	public int delByIds(int[] ids) {
		StringBuilder sql=new StringBuilder("delete from FILE_PRIVIEW_TABLE where FILM_RECIEW_ID in (");
		Object[] objects= new Object[ids.length];
		if(ids.length == 0) {
			return -1;
		}else if(ids.length == 1) {
			return this.delFilmReviewById(ids[0]);
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
	public int updateByIds(int[] ids) {
		StringBuilder sql=new StringBuilder("update FILE_PRIVIEW_TABLE set EXAMINE=1 where FILM_RECIEW_ID in (");
		Object[] objects= new Object[ids.length];
		if(ids.length == 0) {
			return -1;
		}else if(ids.length == 1) {
			return this.delFilmReviewById(ids[0]);
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
	public List<FilmReview> getPreviewFilmReview(Page page) {
		List<FilmReview> list = new ArrayList<>();
		String sql = 
			" select  *  from    "
		    +" (select rownum rn,n.* from      "
		    +"   (                  "
		    +"       select FILE_PRIVIEW_table.*,user_table.user_name,preview_table.preview_id   "
		    +"       from FILE_PRIVIEW_table ,user_table,preview_table     "
		    +"       where FILE_PRIVIEW_table.User_Id = user_table.user_id    "
		    +"       and FILE_PRIVIEW_table.EXAMINE=1           "
		    +"     ) n     "
		    +" )  where rn between ? and ? ";
		Object[] objects = {(page.getCurrentPage()-1)*page.getPageSize(),page.getCurrentPage()*page.getPageSize()};
		ResultSet res = DButil.query(sql, objects);
		try {
			while(res.next()) {
				FilmReview fr = new FilmReview(
						res.getString("moive_id"), res.getInt("user_id"), 
						res.getString("review"), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getDate("load_date")),
						res.getInt("examine"), res.getInt("FILM_RECIEW_ID"),
						res.getString("user_name"),res.getString("moive_name"),res.getString("moive_pic"));
				list.add(fr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public List<FilmReview> getTvFilmReview(String tvId) {
		return this.getFilmReviewById(tvId);
	}

	@Override
	public List<FilmReview> getMoiveFilmReview(String moiveId) {
		List<FilmReview> list = new ArrayList<>();
		String sql = 
			              
		    "       select FILE_PRIVIEW_table.*,user_table.user_name,preview_table.preview_id   "
		    +"       from FILE_PRIVIEW_table ,user_table,preview_table     "
		    +"       where FILE_PRIVIEW_table.User_Id = user_table.user_id    "
		    +"       and preview_table.preview_id = FILE_PRIVIEW_table.Moive_Id   "
		    +"       and FILE_PRIVIEW_table.EXAMINE=1           "
			+"       and moive_id=?";
		Object[] objects = {moiveId};
		ResultSet res = DButil.query(sql, objects);
		try {
			while(res.next()) {
				FilmReview fr = new FilmReview(
						res.getString("moive_id"), res.getInt("user_id"), 
						res.getString("review"), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(res.getDate("load_date")),
						res.getInt("examine"), res.getInt("FILM_RECIEW_ID"),
						res.getString("user_name"),res.getString("moive_name"),res.getString("moive_pic"));
				list.add(fr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.close(res);
		}
		return list;
	}
	
}
