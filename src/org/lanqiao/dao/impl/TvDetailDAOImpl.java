package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.bean.TvDetail;
import org.lanqiao.dao.TvDetailDAO;
import org.lanqiao.util.DButil;

public class TvDetailDAOImpl implements TvDetailDAO {

	@Override
	public int add(TvDetail tvDetail) {
		int result = -1;
		String sql = "insert into tv_detail_table values(?,?,?)";
		Object[] objs = {tvDetail.getTvNumber(),tvDetail.getTvAddress(),tvDetail.getTvId()};
		result = DButil.update(sql, objs);
		return result;
	}

	@Override
	public List<TvDetail> getAll(String tvId) {
		List<TvDetail> list = new ArrayList<>();
		String sql = "select * from tv_detail_table where tv_id=?";
		Object[] objs = {tvId};
		ResultSet res = DButil.query(sql, objs);
		try {
			while(res.next()) {
				TvDetail tvDeatil = new TvDetail
						(
								res.getString("TV_id"), res.getInt("TV_NUMBER"), res.getString("TV_ADDRESS")
						);
				list.add(tvDeatil);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(res);
		}
		return list;
	}

	@Override
	public int update(TvDetail tvDetail, String tvId) {
		String sql = "update tv_detail_table set tv_address = ? where tv_id=?";
		Object[] objs = {tvDetail.getTvAddress(),tvId};
		return 	DButil.update(sql, objs);
	}

}
