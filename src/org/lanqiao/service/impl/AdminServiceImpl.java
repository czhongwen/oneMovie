package org.lanqiao.service.impl;

import org.lanqiao.bean.Admin;
import org.lanqiao.dao.IAdminDAO;
import org.lanqiao.dao.impl.AdminDAOImpl;
import org.lanqiao.service.IAdminService;

public class AdminServiceImpl implements IAdminService{
	IAdminDAO idao = new AdminDAOImpl();
	@Override
	public Admin getAdmin(Admin admin) {
		return idao.getAdmin(admin);
	}
	@Override
	public boolean updatePass(Admin admin) {
		return idao.updateAdmin(admin)>0;
	}

}
