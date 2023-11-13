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
	
	public int memberInsert(MemberVo mv){
		int exec = 0;
		
		 String sql = "INSERT INTO member(mbid, mbpwd, mbname, mbemail, mbaddr)"
	                + "VALUES (?, ?, ?, ?, ?)";
		
		
		try{
			 pstmt = conn.prepareStatement(sql);
		        pstmt.setString(1, mv.getMbid());
		        pstmt.setString(2, mv.getMbpwd());
		        pstmt.setString(3, mv.getMbname());
		        pstmt.setString(4, mv.getMbemail());
		        pstmt.setString(5, mv.getMbaddr());
			exec = pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}
		
		return exec;
	}
	
	public int memberIdCheck(String mbid){
				int value=0;  // 결과값이 0인지 아닌지
				
				String sql="select count(*) as cnt from member where mbid=?";
				ResultSet rs = null;
				try{
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, mbid);
					rs = pstmt.executeQuery();
					
					if (rs.next()){
						value =	rs.getInt("cnt");
					}
					
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					try{
						rs.close();
						pstmt.close();
						conn.close();
					}catch(Exception e){
						e.printStackTrace();
					}
				}
				return value;
			}

	
	public int memberNicknameCheck(String mbname){
		int value=0;
		
		String sql = "select count(*) as cnt from member where mbname=?";
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mbname);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				value =	rs.getInt("cnt");
				//value가 0이면 일치하지않는다
				//1 일치한다
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return value;
	}
	
	public int memberEmailCheck(String mbemail){
		int value=0;
		
		String sql = "select count(*) as cnt from member where mbemail=?";
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mbemail);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				value =	rs.getInt("cnt");
				//value가 0이면 일치하지않는다
				//1 일치한다
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return value;
	}
	
	public int memberLoginCheck(String mbid, String mbpwd){
		int value=0;
		
		String sql="select mbno from member where mbid=? and mbpwd=?";
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mbid);
			pstmt.setString(2, mbpwd);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				value =	rs.getInt("mbno");
				//value가 0이면 일치하지않는다
				//1 일치한다
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return value;
	}
	
	
	}


