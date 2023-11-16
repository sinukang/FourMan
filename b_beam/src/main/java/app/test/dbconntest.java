package app.test;

import java.sql.Connection;
import java.sql.PreparedStatement;

import app.dbconn.DbConn;



public class dbconntest {
	private Connection conn;  //멤버변수는 선언만해도 자동초기화됨
	private PreparedStatement pstmt;

	public dbconntest() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}

	public void memberInsert() {
		
		
	}


	
}
