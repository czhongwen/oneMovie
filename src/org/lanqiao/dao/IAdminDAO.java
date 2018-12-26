package org.lanqiao.dao;

import org.lanqiao.bean.Admin;

public interface IAdminDAO {

	Admin getAdmin(Admin admin);
	
	int updateAdmin(Admin admin);
}
