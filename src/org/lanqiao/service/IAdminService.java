package org.lanqiao.service;

import org.lanqiao.bean.Admin;

public interface IAdminService {

	Admin getAdmin(Admin admin);
	
	boolean updatePass(Admin admin);
}
