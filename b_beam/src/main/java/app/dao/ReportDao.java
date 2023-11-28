package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import app.dbconn.DbConn;
import app.domain.CommentVo;
import app.domain.PenaltyVo;
import app.domain.ReportVo;
import app.domain.ReviewVo;
import app.domain.SearchCriteria;

public class ReportDao {

		private Connection conn;
		
		public ReportDao() {
			DbConn dbconn = new DbConn();
			this.conn = dbconn.getConnection();
		}
		
		public ArrayList<ReportVo> reportList(SearchCriteria scri ) {
			
			ArrayList<ReportVo> alist = new ArrayList<ReportVo>();
			ResultSet rs = null;
			
			String sql = "SELECT r.*, m.mbname, b.bdcont, rv.rvcont, c.cmcont, p.pndelyn, bdno_count, rvno_count, cmno_count"
					+ " FROM report r "
					+ " JOIN member m on r.mbno2 = m.mbno"
					+ " LEFT JOIN board b on r.bdno = b.bdno"
					+ " LEFT JOIN review rv on r.rvno = rv.rvno"
					+ " LEFT JOIN comment c on r.cmno = c.cmno"
					+ " LEFT JOIN penalty p on r.rpno = p.rpno"
					+ " LEFT JOIN (SELECT bdno, COUNT(*) AS bdno_count FROM report WHERE bdno IS NOT NULL GROUP BY bdno) AS report_count_bd ON r.bdno = report_count_bd.bdno"
					+ " LEFT JOIN (SELECT rvno, COUNT(*) AS rvno_count FROM report WHERE rvno IS NOT NULL GROUP BY rvno) AS report_count_rv ON r.rvno = report_count_rv.rvno"
					+ " LEFT JOIN (SELECT cmno, COUNT(*) AS cmno_count FROM report WHERE cmno IS NOT NULL GROUP BY cmno) AS report_count_cm ON r.cmno = report_count_cm.cmno"
					+ " ORDER by r.rpno DESC"
					+ " LIMIT ?, ?";
			
			int perPageNum = 20;
			scri.setNumOfRows(perPageNum);
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setInt(1, (scri.getPage()-1) * scri.getNumOfRows());
				pstmt.setInt(2, scri.getNumOfRows());
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					ReportVo rpv= new ReportVo();
					ReviewVo rv = new ReviewVo();
					CommentVo cv = new CommentVo();
					PenaltyVo pv = new PenaltyVo();
					
					rpv.setRpno(rs.getInt("rpno"));
					rpv.setMbno2(rs.getInt("mbno2"));
					rpv.setMbno(rs.getInt("mbno"));
					rpv.setRvno(rs.getInt("rvno"));
					rpv.setBdno(rs.getInt("bdno"));
					rpv.setCmno(rs.getInt("cmno"));
					rpv.setRpcate(rs.getString("rpcate"));
					rpv.setRpdelyn(rs.getString("rpdelyn"));
					rpv.setMbname(rs.getString("mbname"));
					rpv.setBdcont(rs.getString("bdcont"));
					rpv.setBdno_count(rs.getInt("bdno_count"));
					rpv.setRvno_count(rs.getInt("rvno_count"));
					rpv.setCmno_count(rs.getInt("cmno_count"));
					
					rv.setRvcont(rs.getString("rvcont"));
					rpv.setReviewVo(rv);
					
					cv.setCmcont(rs.getString("cmcont"));
					rpv.setCommnetVo(cv);
					
					pv.setPndelyn(rs.getString("pndelyn"));
					rpv.setPenaltyVo(pv);
					
					alist.add(rpv);
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			return alist;
		}
		
		public int reportTotalCount(SearchCriteria scri) {
			int value = 0;
			ResultSet rs = null;
			
			String sql = "SELECT COUNT(rpno) as cnt FROM report WHERE rpdelyn = 'N'";
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					value = rs.getInt("cnt");
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			return value;
		}
		
		/*
		 * public ReportVo reportSelectOne(int mbno, int rpno) { ReportVo rpv = null;
		 * ResultSet rs = null; String sql = "SELECT * FROM report WHERE rpno = ?";
		 * 
		 * try (PreparedStatement pstmt = conn.prepareStatement(sql)) { pstmt.setInt(1,
		 * rpno); rs = pstmt.executeQuery();
		 * 
		 * if (rs.next()) { rpv = new ReportVo();
		 * 
		 * 
		 * }
		 * 
		 * } catch (SQLException e) { e.printStackTrace(); }
		 * 
		 * 
		 * return rpv; }
		 */
		
		public int reportInsert(ReportVo rpv, int rvno, int cmno) {
			int exec = 0;
			String cate = "";  
			String category="";
			
			// 신고된 게시글 종류 확인
			if (rpv.getBdno() != 0) {
				cate = "bd";
			} else if (rvno != 0) {
				cate = "rv";
			} else if (cmno != 0) {
				cate = "cm";
			}
			
			if (cate.equals("bd")) {
				category = "bdno";
			}
			if (cate.equals("rv")) {
				category = "rvno";
			} 
			if (cate.equals("cm")) {
				category = "cmno";
			}
			String sql = "INSERT INTO report(mbno, mbno2, "+category+", rpcate, rpdelyn) "
					+ " VALUES(?, ?, ?, 'F', 'N')";
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				pstmt.setInt(1, rpv.getMbno());
				pstmt.setInt(2, rpv.getMbno2());
				if ("bdno".equals(category)) {
					pstmt.setInt(3, rpv.getBdno());
				} else if ("rvno".equals(category)) {
					pstmt.setInt(3, rvno);
				} else if ("cmno".equals(category)) {
					pstmt.setInt(3, cmno);
				}
				//pstmt.setString(4, rpv.getRpcate());
				
				exec = pstmt.executeUpdate();
				
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
			return exec;
		}
		
		public int reportDelete(int rpno, int bdno) {
			int exec1 = 0;
			int exec2 = 0;
			
			String sql = "UPDATE report set rpdelyn = 'Y' where rpno = ?";
			String sql2 = "UPDATE board set bddelyn = 'Y', bddatem = now() where bdno = ?";
			
			try (PreparedStatement pstmt1 =conn.prepareStatement(sql)) {
				pstmt1.setInt(1, rpno);
				
				exec1 = pstmt1.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if (exec1 > 0) {
				
				try (PreparedStatement pstmt2 = conn.prepareStatement(sql2)) {
					pstmt2.setInt(1, bdno);
					
					exec2 = pstmt2.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			return exec1 + exec2;
		}
		
		public int penaltyInsert(PenaltyVo pv) {
			int exec = 0;
			String sql = "INSERT INTO(rpno, mbno, pndelyn) "
					+ " VALUES(?, ?, ?)";
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setInt(1, pv.getRpno());
				pstmt.setInt(2, pv.getMbno());
				pstmt.setString(3, pv.getPndelyn());
				
				exec = pstmt.executeUpdate();
			} catch (SQLException e ) {
				e.printStackTrace();
			}
			
			return exec;
		}
		
}
