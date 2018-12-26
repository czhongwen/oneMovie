package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.MoiveType;
import org.lanqiao.dao.MoiveTypeDAO;
import org.lanqiao.dao.impl.MoiveTypeDAOImpl;
import org.lanqiao.service.MoiveTypeService;

public class MoiveTypeServiceImpl implements MoiveTypeService {
	MoiveTypeDAO mtd = new MoiveTypeDAOImpl();

	@Override
	public boolean add(MoiveType moiveType) {
		return mtd.add(moiveType)>0;
	}

	@Override
	public boolean del(int id) {
		return mtd.del(id)>0;
	}

	@Override
	public boolean update(MoiveType moiveType) {
		return mtd.update(moiveType)>0;
	}

	@Override
	public List<MoiveType> getAll() {
		return mtd.getAll();
	}

	@Override
	public MoiveType queryById(int id) {
		return mtd.queryById(id);
	}
	
}
