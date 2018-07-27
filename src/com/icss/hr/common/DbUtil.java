package com.icss.hr.common;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import oracle.jdbc.driver.OracleDriver;

/**
 * ���ݿ����ӹ�����
 * @author Administrator
 *
 */
public class DbUtil {
	
	static {		
		try {
			//ע������
			DriverManager.registerDriver(new OracleDriver());
		} catch (SQLException e) {			
			e.printStackTrace();
		}		
	}
	
	/**
	 * ����һ�����ݿ����Ӷ���
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "myhr";
		String password = "myhr";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		
		return conn;
	}
	
}