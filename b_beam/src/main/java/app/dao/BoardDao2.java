package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import app.dbconn.DbConn;
import app.domain.BoardVo;
import app.domain.BdgalleryVo;

public class BoardDao2 {

	private Connection conn;
	
	public BoardDao2() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public int insertBoard(BoardVo bv) {
		int exec = 0;

		String sql = "INSERT INTO board(mbno, bdtitle, bdcont, bdcate) VALUES(?,?,?,'G')";

		try (PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
			pstmt.setInt(1, bv.getMbno());
			pstmt.setString(2, bv.getBdtitle());
			pstmt.setString(3, bv.getBdcont());
			exec = pstmt.executeUpdate();
			
			// 생성된 bdno 가져오기
	        try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                bv.setBdno(generatedKeys.getInt(1));
	            }
	        }
		}catch (Exception e) {
			e.printStackTrace();
		}
		return exec;
	}

	public int insertBdgallery(BdgalleryVo bgv) {
		int exec = 0;

		String sql = "INSERT INTO bdgallery(bdno, bdglname) VALUES(?,?)";

		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, bgv.getBdno());
			pstmt.setString(2, bgv.getBdglname());
			exec = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return exec;
	}
	    
	public int boardInsert(BoardVo bv, BdgalleryVo bgv) {
		
		int exec1 = insertBoard(bv);
		
		if (exec1 > 0) {
	        // board 테이블에 레코드가 성공적으로 삽입되었을 때
	        // 해당 bdno를 가져와서 bdgallery 테이블에 삽입
	        int bdno = bv.getBdno();
	        bgv.setBdno(bdno);
	        int exec2 = insertBdgallery(bgv);

	        // 두 메서드의 실행 결과를 합산하여 반환
	        return exec1 + exec2;
	    } else {
	        // board 테이블에 레코드 삽입이 실패했을 경우
	        return exec1;
	    }
	}

	
}
