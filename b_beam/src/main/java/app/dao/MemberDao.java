package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import app.dbconn.DbConn;
import app.domain.MemberVo;

public class MemberDao {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public MemberDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public int memberInsert(){
		return 0;
		
	}
}
