package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.TV;
import org.lanqiao.dao.TvDAO;
import org.lanqiao.dao.impl.TvDAOImpl;
import org.lanqiao.service.TvService;
import org.lanqiao.util.Page;

public class TvServiceImpl implements TvService {
	TvDAO td = new TvDAOImpl();
	@Override
	public List<TV> getAll() {
		return td.getAll();
	}

	@Override
	public TV getById(String id) {
		return td.getById(id);
	}

	@Override
	public boolean add(TV tv) {
		return td.add(tv)>0;
	}

	@Override
	public boolean update(TV tv) {
		return td.update(tv)>0;
	}

	@Override
	public boolean del(String id) {
		return td.del(id)>0;
	}

	@Override
	public int getTotalCount() {
		return td.getTotalCount();
	}

	@Override
	public List<TV> getByPage(Page page) {
		return td.getByPage(page);
	}

	@Override
	public boolean delTvByIds(String[] ids) {
		return td.delTvByIds(ids)>0;
	}

	@Override
	public List<TV> getTvByPage(String key, Page page) {
		return td.getTvByPage(key, page);
	}

	@Override
	public int getTotalCount(String key) {
		return td.getTotalCount(key);
	}

	@Override
	public List<TV> getTv(Page page) {
		return td.getTv(page);
	}

	@Override
	public int getTotalCountByHeadChar(String headChar) {
		return td.getTotalCountByHeadChar(headChar);
	}

	@Override
	public List<TV> getTvByHeadChar(Page page, String headChar) {
		return td.getTvByHeadChar(page, headChar);
	}

	@Override
	public List<TV> getNewTv(Page page) {
		return td.getNewTv(page);
	}

	@Override
	public List<TV> getHot(Page page) {
		return td.getHot(page);
	}

	@Override
	public List<TV> getHighScore(Page page) {
		return td.getHighScore(page);
	}

	@Override
	public boolean addPlayback(String tvId) {
		return td.addPlayback(tvId)>0;
	}

	
	
}
