package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.Index;
import org.lanqiao.dao.impl.IndexDAOImpl;
import org.lanqiao.service.IndexService;

public class IndexServiceImpl implements IndexService {
	IndexDAOImpl indexDaoImpl = new IndexDAOImpl();
	@Override
	public List<Index> queryAll() {
		return indexDaoImpl.query();
	}

	@Override
	public boolean del(int ID) {
		return indexDaoImpl.del(ID)>0;
	}

	@Override
	public boolean add(Index index) {
		return indexDaoImpl.add(index);
	}

	@Override
	public boolean update(Index index) {
		return indexDaoImpl.update(index)>0;
	}

	@Override
	public Index queryById(int ID) {
		return indexDaoImpl.queryById(ID);
	}

}
