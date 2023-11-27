package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import app.dbconn.DbConn;
import app.domain.CommentVo;
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
			
			String sql = "SELECT r.*, m.mbname, b.bdcont, rv.rvcont, c.cmcont"
					+ " FROM report r "
					+ " JOIN member m on r.mbno2 = m.mbno"
					+ " LEFT JOIN board b on r.bdno = b.bdno"
					+ " LEFT JOIN review rv on r.rvno = rv.rvno"
					+ " LEFT JOIN comment c on r.cmno = c.cmno"
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
					
					rv.setRvcont(rs.getString("rvcont"));
					rpv.setReviewVo(rv);
					
					cv.setCmcont(rs.getString("cmcont"));
					rpv.setCommnetVo(cv);
					
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
			String sql = "INSERT INTO(mbno, mbno2, bdno, rvno, cmno, rpcate, rpdelyn) "
					+ " VALUES(?, ?, ?, ?, ?, 'F', 'N')";
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setInt(1, rpv.getMbno());
				pstmt.setInt(2, rpv.getMbno2());
				pstmt.setInt(3, rpv.getBdno());
				pstmt.setInt(4, rvno);
				pstmt.setInt(4, cmno);
				
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
		
		public int penaltyInsert(int rpno, int mbno) {
			int exec = 0;
			String sql = "INSERT INTO(rpno, mbno, pndelyn) "
					+ " VALUES(?, ?, 'N')";
			
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setInt(1, rpno);
				pstmt.setInt(2, mbno);
				
				exec = pstmt.executeUpdate();
			} catch (SQLException e ) {
				e.printStackTrace();
			}
			
			return exec;
		}
		
}
