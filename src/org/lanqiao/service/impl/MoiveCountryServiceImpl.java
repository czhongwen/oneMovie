package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.MoiveCountry;
import org.lanqiao.dao.MoiveCountryDAO;
import org.lanqiao.dao.impl.MoiveCountryDAOImpl;
import org.lanqiao.service.MoiveCountryService;

public class MoiveCountryServiceImpl implements MoiveCountryService {
	MoiveCountryDAO mcd = new MoiveCountryDAOImpl();
	@Override
	public boolean add(MoiveCountry moiveCountry) {
		return mcd.add(moiveCountry)>0;
	}

	@Override
	public boolean del(int id) {
		return mcd.del(id)>0;
	}

	@Override
	public boolean update(MoiveCountry moiveCountry) {
		return mcd.update(moiveCountry)>0;
	}

	@Override
	public List<MoiveCountry> getAll() {
		return mcd.getAll();
	}

	@Override
	public MoiveCountry queryById(int id) {
		return mcd.queryById(id);
	}

}
