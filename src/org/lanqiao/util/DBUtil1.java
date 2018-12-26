package org.lanqiao.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;
import javax.swing.text.html.HTMLDocument.HTMLReader.ParagraphAction;

import org.apache.commons.dbcp.BasicDataSourceFactory;

public class DBUtil1 {
	private static PreparedStatement psmt;
	private static ResultSet res;
	private static DataSource ds = null;
	static {
		try {
			InputStream in = DBUtil1.class.getClassLoader()
					.getResourceAsStream("db.properties");
			Properties prop = new Properties();
			prop.load(in);
			ds = BasicDataSourceFactory.createDataSource(prop);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static int update(String sql,Object[] objects) {
		int result=-1;
		Connection con = null;
		try {
			con = getConnection();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			psmt=con.prepareStatement(sql);
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
			close(psmt, con);
		}
		return result;
	}
	
	public static ResultSet query(String sql,Object[] objects) {
		try {
			psmt = getConnection().prepareStatement(sql);
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
	
	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
	public static void close(ResultSet res, Connection conn) {
		release(res, psmt, conn);
	}
	
	public static void close(PreparedStatement psmt, Connection conn) {
		release(null, psmt, conn);
	}
	private static void release(ResultSet res,PreparedStatement psmt, Connection conn) {
		if(res!=null) {
			try {
				res.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(psmt!=null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}

