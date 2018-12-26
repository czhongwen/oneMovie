package org.lanqiao.service.impl;

import java.util.List;

import org.lanqiao.bean.Preview;
import org.lanqiao.dao.PreviewDAO;
import org.lanqiao.dao.impl.PreviewDAOImpl;
import org.lanqiao.service.PreviewService;
import org.lanqiao.util.Page;

public class PreviewServiceImpl implements PreviewService {
	PreviewDAO pd = new PreviewDAOImpl();
	@Override
	public boolean add(Preview preview) {
		return pd.add(preview)>0;
	}

	@Override
	public boolean del(String id) {
		return pd.del(id)>0;
	}

	@Override
	public boolean update(Preview preview) {
		return pd.update(preview)>0;
	}

	@Override
	public List<Preview> getAll() {
		return pd.getAll();
	}

	@Override
	public Preview getById(String id) {
		return pd.getById(id);
	}

	@Override
	public int getTotalCount() {
		return pd.getTotalCount();
	}

	@Override
	public List<Preview> getByPage(Page page) {
		return pd.getByPage(page);
	}

	@Override
	public List<Preview> getByPage(Page page, String key) {
		return pd.getByPage(page, key);
	}

	@Override
	public int getTotalCount(String key) {
		return pd.getTotalCount(key);
	}

	@Override
	public boolean delByids(String[] ids) {
		return pd.delByids(ids)>0;
	}

}
