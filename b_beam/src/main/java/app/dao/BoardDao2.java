package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, bv.getMbno());
            pstmt.setString(2, bv.getBdtitle());
            pstmt.setString(3, bv.getBdcont());
            exec = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return exec;
    }

    public int insertBdgallery(BdgalleryVo bgv, int bdno) {
        int exec = 0;

        String sql = "INSERT INTO bdgallery(bdglno, bdno, bdglname) VALUES(?,?,'사진test')";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, bgv.getBdglno());
            pstmt.setInt(2, bdno);
            exec = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return exec;
    }
    
    public int boardInsert(BoardVo bv, BdgalleryVo bgv) {
    	int bdno = bv.getBdno();
        int exec1 = insertBoard(bv);
        int exec2 = insertBdgallery(bgv, bdno);

        // 두 메서드의 실행 결과를 합산하여 반환
        return exec1 + exec2;
    }

	
}
