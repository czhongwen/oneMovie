package org.lanqiao.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.lanqiao.bean.Admin;
import org.lanqiao.dao.IAdminDAO;
import org.lanqiao.util.DButil;

public class AdminDAOImpl implements IAdminDAO{
	
	ResultSet rs=null;
	@Override
	public Admin getAdmin(Admin admin) {
		Admin rtnadmin = null;
		String sql = "select * from admin_table where admin_account=? and admin_password = ?";
		Object[] objs = {admin.getName(),admin.getPass()};
		rs = DButil.query(sql, objs);
		try {
			if(rs.next()) {
				rtnadmin = new Admin();
				rtnadmin.setId(rs.getInt("admin_id"));
				rtnadmin.setName(rs.getString("admin_account"));
				rtnadmin.setPass(rs.getString("admin_password"));
				rtnadmin.setPhone(rs.getString("admin_phone"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.close(rs);
		}
		return rtnadmin;
	}
	@Override
	public int updateAdmin(Admin admin) {
		int result = -1;
		String sql="update admin_table set admin_password=? where admin_id=?";
		Object[] objs = {admin.getPass(),admin.getId()};
		result = DButil.update(sql, objs);
		return result;
	}

}
