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
	public int memberInsert(
			){
		int exec = 0;
		
		String sql = "insert into member(mbid,mbpwd,mbname,mbemail,mbaddr)"
		        +" values('test','1111','테스트','test@test.test','전주')";
		try{
		pstmt = conn.prepareStatement(sql);	
		exec = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return exec;	
	}
}
