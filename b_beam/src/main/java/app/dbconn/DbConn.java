package app.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn {
	
	private String url ="jdbc:mysql://192.168.0.41:3306/b_beam?serverTimezone=UTC&useSSL=false";
	private String user="kjs"; // 김진수 : kjs, 강희재 khj, 유효일 : uhi
	private String password="1234";
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			Class clz = Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {			
			e.printStackTrace();
		}		
		
		return conn;
	}
	
	
	
	
	
	

}
