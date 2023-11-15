package app.dao;

import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import app.dbconn.DbConn;
import app.domain.BoardVo;
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
	
	public MemberVo memberLoginCheck(MemberVo mv) {
	    
	    String sql = "SELECT mbno, mbname FROM member WHERE mbid=? AND mbpwd=?";
	    ResultSet rs = null;
	    
	    try {
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, mv.getMbid());
	        pstmt.setString(2, mv.getMbpwd());
	        rs = pstmt.executeQuery();
	        
	        if (rs.next()) {
	           mv = new MemberVo();
	           mv.setMbno(rs.getInt("mbno"));
	           mv.setMbname(rs.getString("mbname"));
	            
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
		
		return mv;
	}

	 public String memberIdFind(String mbemail) {
	        String memberId = null;
	        
	        String sql = "SELECT mbid FROM member WHERE mbemail=?";
	        ResultSet rs = null;

	        try {
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, mbemail);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                memberId = rs.getString("mbid");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                rs.close();
	                pstmt.close();
	                conn.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }

	        return memberId;
	    }
	 
	 

	 public String memberPwdFind(String mbid, String mbemail) {
		    String sql = "SELECT mbid FROM member WHERE mbid=? AND mbemail=?";
		    ResultSet rs = null;

		    try {
		        pstmt = conn.prepareStatement(sql);
		        pstmt.setString(1, mbid);
		        pstmt.setString(2, mbemail);
		        rs = pstmt.executeQuery();

		        if (rs.next()) {
		            // 해당 회원이 존재하면 비밀번호를 임시비밀번호로 변경
		            String newPassword = tempPwd(); // 새로운 임시 비밀번호 생성

		            // 비밀번호 변경 SQL
		            sql = "UPDATE member SET mbpwd=? WHERE mbid=?";
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, newPassword);
		            pstmt.setString(2, mbid);
		            pstmt.setString(3, mbemail);

		            int rowsUpdated = pstmt.executeUpdate();

		            if (rowsUpdated > 0) {
		                // 변경된 비밀번호를 반환
		                return newPassword;
		            }
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            rs.close();
		            pstmt.close();
		            conn.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }

		    return null; // 해당 회원이 존재하지 않거나 변경이 실패하면 null 반환
		}
	 public String tempPwd() {
		    // 비밀번호에 사용할 문자셋 정의: 알파벳, 그리고 숫자 0부터 9까지
		    String pwdChar = "abcdefghijklmnopqrstuvwxyz0123456789";
		    
		    StringBuilder newPassword = new StringBuilder();
		    
		    
		    for (int i = 0; i < 8; i++) {
		        int num = (int) (Math.random() * pwdChar.length());
		        newPassword.append(pwdChar.charAt(num));
		    }
		    return newPassword.toString();
		}
	 
	 

	    public void memberInfoModify(MemberVo mv) {
	        try {
	            String sql = "UPDATE member SET mbpwd=?, mbname=? WHERE mbno=?";

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, mv.getMbpwd());
	            pstmt.setString(2, mv.getMbname());
	            pstmt.setInt(3, mv.getMbno());

	            int rowsUpdated = pstmt.executeUpdate();

	            if (rowsUpdated > 0) {
	                System.out.println("Member information updated successfully.");
	            } else {
	                System.out.println("Failed to update member information.");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                pstmt.close();
	                conn.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	}


