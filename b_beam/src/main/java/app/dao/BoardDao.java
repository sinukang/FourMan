package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import app.dbconn.DbConn;
import app.domain.BoardVo;
import app.domain.SearchCriteria;

public class BoardDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	public BoardDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public ArrayList<BoardVo> galleryList(int mbno, SearchCriteria scri){
		
		ArrayList<BoardVo> bv_alist = new ArrayList<BoardVo>();
		ResultSet rs = null;
		
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		
		String str = "";
		String str2 = "";
		
		//mbno != 0 : 로그인했다면 galleryList 페이지로 넘어왔을 시 좋아요(하트 아이콘) 색 표시 여부
		if(mbno != 0) {	
			str = ", IF((SELECT COUNT(l.lkno) FROM like_ l WHERE l.bdno = b.bdno AND l.mbno = "+mbno+" AND l.lkdelyn = 'N') = 1, 'Y', 'N') AS bdLikeYN";
		}
		//태그 클릭 시 해당 태그와 일치하는 태그를 가진 글들을 부르는 조건문 쿼리에 추가
		if(!scri.getKeyword().equals("")) {
			str2 = " AND b.bdtag LIKE '%" +scri.getKeyword()+ "%' OR b.bdcontag LIKE '%" +scri.getKeyword()+ "%'";
		}
		
		String sql = "SELECT b.*"
					+ ", (SELECT COUNT(l.lkno) FROM like_ l where l.bdno = b.bdno and l.lkdelyn = 'N') AS bdLikeCnt"
					+ str
					+ " FROM (SELECT b.*, m.mbname FROM board b JOIN member m ON b.mbno = m.mbno WHERE m.mbdelyn = 'N' AND b.bddelyn = 'N') b"
					+ str2
					+ " ORDER by b.bdno DESC"
					+ " LIMIT ?, ?";
		
		String sql2 = "SELECT * FROM bdgallery WHERE bdno = ? AND bdgldelyn = 'N'";
		
		//scri.getNumOfRows() : 페이지에 표시할 글 개수 (Criteria.java에 기본값 20으로 할당되어있음)
		int perPageNum = 12;	//갤러리 페이지에 표시할 글 개수를 설정함
		scri.setNumOfRows(perPageNum);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (scri.getPage() - 1) * scri.getNumOfRows());
			pstmt.setInt(2, scri.getNumOfRows());
						
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVo bv = new BoardVo();
				bv.setBdno(rs.getInt("bdno"));
				int bdno = rs.getInt("bdno");
				bv.setMbno(rs.getInt("mbno"));
				bv.setBdcate(rs.getString("bdcate"));
				bv.setBdtitle(rs.getString("bdtitle"));
				bv.setBdcont(rs.getString("bdcont"));
				bv.setBdtag(rs.getString("bdtag"));
				bv.setBdcontag(rs.getString("bdcontag"));
				bv.setBddate(rs.getString("bddate"));
				bv.setBddatem(rs.getString("bddatem"));
				bv.setBddelyn(rs.getString("bddelyn"));
				bv.setBdLikeCnt(rs.getInt("bdLikeCnt"));
				bv.setMbname(rs.getString("mbname"));
				if(mbno != 0) {
					bv.setBdLikeYN(rs.getString("bdLikeYN"));
				}
				
				//ArrayList<String> bdFilename에
				//bdno가 일치하는 bdgallery의 값들을 담는다.
				
				try {
					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setInt(1, bdno);
					
					rs2 = pstmt2.executeQuery();
					
					ArrayList<String> bdFilename = new ArrayList<String>();
					
					while(rs2.next()) {
						bdFilename.add(rs2.getString("bdglname"));
					}
					bv.setBdFilename(bdFilename);
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				bv_alist.add(bv);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			try {
				rs.close();
				rs2.close();
				//pstmt.close();
				//pstmt 닫아버리면 컨트롤러에서 메서드 호출 후 바로밑에 bd.boardTotalCount에서 pstmt를 못씀
				pstmt2.close();
				//conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return bv_alist;
	}
	
	public BoardVo boardSelectOne(int mbno, int bdno) {
		
		BoardVo bv = new BoardVo();
		ResultSet rs = null;
		
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		
		String str = "";
		if(mbno != 0) {
			str = ", IF((SELECT COUNT(l.lkno) FROM like_ l WHERE l.bdno = b.bdno AND l.mbno = "+mbno+" AND l.lkdelyn = 'N') = 1, 'T', 'F') AS bdLikeYN";
		}
		
		String sql = "SELECT b.*"
					+ ", (SELECT COUNT(l.lkno) FROM like_ l where l.bdno = b.bdno and l.lkdelyn = 'N') AS likeCnt"
					+ str
					+ " FROM (SELECT b.*, m.mbname FROM board b JOIN member m ON b.mbno = m.mbno WHERE m.mbdelyn = 'N' AND b.bddelyn = 'N') b"
					+ " WHERE b.bdno = ?";
		
		String sql2 = "SELECT * FROM bdgallery WHERE bdno = ? AND bdgldelyn = 'N'";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bdno);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bv.setBdno(rs.getInt("bdno"));
				bv.setMbno(rs.getInt("mbno"));
				bv.setBdcate(rs.getString("bdcate"));
				bv.setBdtitle(rs.getString("bdtitle"));
				bv.setBdcont(rs.getString("bdcont"));
				bv.setBdtag(rs.getString("bdtag"));
				bv.setBdcontag(rs.getString("bdcontag"));
				bv.setBddate(rs.getString("bddate"));
				bv.setBddatem(rs.getString("bddatem"));
				bv.setBddelyn(rs.getString("bddelyn"));
				if(mbno != 0) {
					bv.setBdLikeYN(rs.getString("bdLikeYN"));
				}
				bv.setMbname(rs.getString("mbname"));
				
				//ArrayList<String> bdFilename에 
				//bdno가 일치하는 bdgallery의 값들을 담는다
				try {
					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setInt(1, bdno);
					
					rs2 = pstmt2.executeQuery();
					ArrayList<String> bdFilename = new ArrayList<String>();
					
					while(rs2.next()) {
						bdFilename.add(rs2.getString("bdglname"));
					}
					
					bv.setBdFilename(bdFilename);
					
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					try {
						pstmt2.close();
						rs2.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bv;
	}
	
	public int boardLikeCntUpdate(int bdno, int mbno) {
		
		int value = 0;
		
		String sql = "INSERT INTO like_(mbno, bdno, lkdate, lkdelyn)"
					+ " VALUES(?, ?, NOW(), 'N')";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mbno);
			pstmt.setInt(2, bdno);
			
			value = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return value;
	}
	
	public int boardLikeCntUpdateCancel(int bdno, int mbno) {
		
		int value = 0;
		
		String sql = "UPDATE like_ SET lkdelyn = 'Y', lkdatem = NOW()"
					+ " WHERE mbno = ? AND bdno = ? AND lkdelyn = 'N'";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mbno);
			pstmt.setInt(2, bdno);
			
			value = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return value;
	}
	
	public int boardTotalCount(SearchCriteria scri) {
		
		int value = 0;
		
		ResultSet rs = null;
		
		String str = "";
		if(!scri.getKeyword().equals("")) {
			str = " AND bdtag LIKE '%"+scri.getKeyword()+"%' OR bdcontag LIKE '%"+scri.getKeyword()+"%'";
		}
		
		String sql = "SELECT COUNT(bdno) AS cnt FROM board WHERE bddelyn = 'N'" + str;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				value = rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return value;
	}
	

}
