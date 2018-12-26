package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.TvDetail;
import org.lanqiao.dao.TvDetailDAO;
import org.lanqiao.dao.impl.TvDetailDAOImpl;
import org.lanqiao.service.TvDetailService;

public class TvDetailServiceImpl implements TvDetailService {
	TvDetailDAO tdd = new TvDetailDAOImpl();
	@Override
	public boolean add(TvDetail tvDetail) {
		return tdd.add(tvDetail)>0;
	}

	@Override
	public List<TvDetail> getAll(String tvId) {
		return tdd.getAll(tvId);
	}

	@Override
	public boolean update(TvDetail tvDetail, String tvId) {
		return tdd.update(tvDetail, tvId)>0;
	}

}
