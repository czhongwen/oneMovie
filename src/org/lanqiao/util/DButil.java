package org.lanqiao.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DButil {

	private	static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private	static final String USERNAME="scott";
	private	static final String PASSWORD="123456";
	private	static final String DRIVER="oracle.jdbc.OracleDriver";
	private static Connection con;
	private static PreparedStatement psmt;
	private static ResultSet res;
	static {
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println("数据库驱动失败!!!!");
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet resu) {
		close(con, psmt, resu);
	}
	
	private static void close(Connection con,PreparedStatement psmt) {
		close(con, psmt, null);
	}
	
	private static void close(Connection con,PreparedStatement psmt,ResultSet res) {
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(psmt!=null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(res!=null) {
			try {
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	private  static  Connection getConn() {
		synchronized (DRIVER) {
			try {
				con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (SQLException e) {
				System.out.println("数据库连接失败");
				e.printStackTrace();
			}
			return con;
		}
	}
	
	public static ResultSet query(String sql,Object[] objects) {
		try {
			psmt = getConn().prepareStatement(sql);
			if(objects!=null) {
				for (int i = 0; i < objects.length; i++) {
					psmt.setObject(i+1, objects[i]);
				}
			}
			res = psmt.executeQuery();
			return res;
		} catch (SQLException e) {
			System.out.println("查询语句异常");
			e.printStackTrace();
		} 
		return res;
	}
	
	public static int update(String sql,Object[] objects) {
		int result=-1;
		try {
			psmt=getConn().prepareStatement(sql);
			if(objects!=null) {
				for (int i = 0; i < objects.length; i++) {
					psmt.setObject(i+1, objects[i]);
				}
			}
			result = psmt.executeUpdate();
			return result;
		} catch (SQLException e) {
			System.out.println("修改语句异常");
			e.printStackTrace();
		} finally {
			close(con, psmt);
		}
		return result;
	}
}
