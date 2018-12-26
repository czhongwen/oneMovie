package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.Moive;
import org.lanqiao.dao.MoiveDAO;
import org.lanqiao.dao.impl.MoiveDAOImpl;
import org.lanqiao.service.MoiveService;
import org.lanqiao.util.Page;

public class MoiveServiceImpl implements MoiveService {
	MoiveDAO md = new MoiveDAOImpl();
	@Override
	public boolean add(Moive moive) {
		return md.add(moive)>0;
	}

	@Override
	public boolean del(String id) {
		return md.del(id)>0;
	}

	@Override
	public boolean update(Moive moive) {
		return md.update(moive)>0;
	}

	@Override
	public List<Moive> getAll() {
		return md.getAll();
	}

	@Override
	public Moive getById(String id) {
		return md.getById(id);
	}

	@Override
	public int getTotalCount() {
		return md.getTotalCount();
	}

	@Override
	public List<Moive> getByPage(Page page) {
		return md.getMoiveByPage(page);
	}

	@Override
	public boolean delMoiveByIds(String[] ids) {
		return md.delMoiveByIds(ids)>0;
	}

	@Override
	public List<Moive> getMoiveByPage(String key, Page page) {
		return md.getMoiveByPage(key, page);
	}

	@Override
	public int getTotalCount(String key) {
		return md.getTotalCount(key);
	}

	@Override
	public int getTotalCountByTypeId(int typeId) {
		return md.getTotalCountByTypeId(typeId);
	}

	@Override
	public int getTotalCountByCountryId(int countryId) {
		return md.getTotalCountByCountryId(countryId);
	}

	@Override
	public List<Moive> getMoiveByTypeId(Page page,int typeId) {
		return md.getMoiveByTypeId(page,typeId);
	}

	@Override
	public List<Moive> getMoiveByCountryId(Page page,int countryId) {
		return md.getMoiveByCountryId(page,countryId);
	}

	@Override
	public List<Moive> getMoive(Page page) {
		return md.getMoive(page);
	}

	@Override
	public int getTotalByHeadChar(String headChar) {
		return md.getTotalByHeadChar(headChar);
	}

	@Override
	public List<Moive> getMoiveByChar(Page page, String HeadChar) {
		return md.getMoiveByChar(page, HeadChar);
	}

	@Override
	public List<Moive> getNewMoive(Page page) {
		return md.getNewMoive(page);
	}

	@Override
	public List<Moive> getHighPlay(Page page) {
		return md.getHighPlay(page);
	}

	@Override
	public List<Moive> getHighScore(Page page) {
		return md.getHighScore(page);
	}

	@Override
	public List<Moive> getBestMoive(Page page) {
		return md.getBestMoive(page);
	}

	@Override
	public boolean addPlayback(String moiveId) {
		return md.addPlayback(moiveId)>0;
	}

}
