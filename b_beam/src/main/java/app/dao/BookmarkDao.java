package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import app.dbconn.DbConn;
import app.domain.BookmarkVo;

public class BookmarkDao {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public BookmarkDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	public String[] getContentsListBookmark(int mbno,ArrayList<String> aryList){
		ArrayList<String> bmIdList = new ArrayList<String>();
		
		String sql = "select contentid from bookmark where "
                + "mbno = ? and contentid in (";
		for(int i = 0; i < aryList.size();i++) {
			if(i != 0) {
				sql += ",";
			}
			sql += "?";
		}
		sql += ")";
		try{
			 pstmt = conn.prepareStatement(sql);
		        pstmt.setInt(1, mbno);
		        for(int i = 0; i < aryList.size(); i++) {
		        	pstmt.setString(i+2, aryList.get(i));	
		        }
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					bmIdList.add(rs.getString("contentid"));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		String[] myBmList = new String[bmIdList.size()];
		myBmList = bmIdList.toArray(myBmList);
		return myBmList;
	}
	public int getLike(int mbno, String contentid) {
		int value = 0;
		PreparedStatement pstmt2=null;
		
		String sql = "select * from Bookmark"
					+ "where mbno=? and contentid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mbno);
			pstmt.setString(2, contentid);
			ResultSet rs = pstmt.executeQuery();
			int cnt=0;
			if(rs.next()) {cnt=rs.getInt(cnt);}
			if(cnt>0) {
				sql = "update bookmark SET bmdelyn = 'Y',bmdatem = now() where mbno=? and contentid=?";
			}else {
				sql = "insert into bookmark(mbno,contentid,bmdelyn) VALUES(?,?,'Y');";
			}
			try {
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setInt(1, mbno);
				pstmt2.setString(2, contentid);

				value = pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		return value;
	}
}
