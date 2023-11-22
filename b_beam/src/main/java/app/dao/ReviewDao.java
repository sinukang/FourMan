package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import app.dbconn.DbConn;
import app.domain.BdgalleryVo;
import app.domain.ReviewVo;

public class ReviewDao {

	//멤버변수 선언하고 전역으로 활용한다
	private Connection conn;  //멤버변수는 선언만해도 자동초기화됨
	private PreparedStatement pstmt;

	//생성자를 만든다 DB연결
	public ReviewDao() {
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}	
			
			
	public ArrayList<ReviewVo>  reviewList(int mbno){
		//무한배열클래스 객체생성해서 데이터를 담을 준비를 한다
		ArrayList<ReviewVo> alist =new ArrayList<ReviewVo>();
		ResultSet rs = null;
	
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		
		String str = "";
		
		if(mbno != 0) {	
			str = ", if((SELECT COUNT(b.lkno) FROM like_ b WHERE a.rvno = b.rvno AND b.mbno = "+mbno+" AND b.lkdelyn = 'N') = 1, 'Y', 'N') AS rvLikeYN\r\n";
		}
		
		String sql="SELECT a.*,\r\n"
				+ "(SELECT COUNT(c.lkno) FROM like_ c WHERE a.rvno = c.rvno AND c.lkdelyn = 'N') AS rvLikeCnt\r\n"
				+ str
				+ "FROM review a\r\n"
				+ "WHERE a.rvdelyn = 'N'\r\n"
				+ "ORDER BY a.rvno DESC;";
				
				
		String sql2 ="SELECT * FROM rvgallery WHERE rvgldelyn = 'N' AND rvno=?";
		try{
			
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//rs.next()는 다음값이 있는지 확인하는 메소드 있으면true
			while(rs.next()){
				ReviewVo rv = new ReviewVo();
				//rs에서 midx값 꺼내서 mv에 옮겨담는다
				rv.setRvno(rs.getInt("rvno"));
				rv.setMbno(rs.getInt("Mbno"));
				rv.setContentid(rs.getString("contentid"));
				rv.setRvrate(rs.getString("rvrate"));
				rv.setRvcont(rs.getString("rvcont"));
				rv.setRvLikeCnt(rs.getInt("rvLikeCnt"));
				
				
				if(mbno != 0) {
					rv.setRvLikeYN(rs.getString("rvLikeYN"));
				}
				try{
					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setInt(1, rv.getRvno());
					
					rs2 = pstmt2.executeQuery();
					
					ArrayList<String> Rvglname = new ArrayList<String>();

					while(rs2.next()) {
						Rvglname.add(rs2.getString("rvglname"));
					}
					rv.setRvglname(Rvglname);
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				alist.add(rv);
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
			return alist;
	} 
	
	
		
			public int reviewInsert(ReviewVo rv){
				
				int exec = 0;			
				String sql = "insert into review (mbno,rvrate,rvcont,contentid) \r\n"
						+ "values(?,?,?,?);";
			
				
				try{
				pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				pstmt.setInt(1, rv.getMbno());
				pstmt.setString(2, rv.getRvrate());
				pstmt.setString(3, rv.getRvcont());
				pstmt.setString(4, rv.getContentid());
				exec = pstmt.executeUpdate();   //실행이되면 1값 안되면 0값
				
				System.out.println(sql);
				}catch(Exception e){
					e.printStackTrace();
				}finally {				
					try {
						pstmt.close();
						conn.close();
					} catch (SQLException e) {					
						e.printStackTrace();
					}
				}			
				
				return exec;	
			}
			
			public int insertrvgallery(int rvno, String[] glname) {
				int exec = 0;

				String sql = "INSERT INTO rvgallery(rvno, rvglname) VALUES(?,?)";
				
				try (PreparedStatement pstmt = conn.prepareStatement(sql)) {

					for (String glone : glname) {
						pstmt.setInt(1,rvno);
						pstmt.setString(2,glone);
						exec += pstmt.executeUpdate();
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				return exec;
			}
			public int rvglInsert(ReviewVo rv, String[] glname){
				
				int exec1 = this.reviewInsert(rv);		
				if (exec1 > 0) {
					// review 테이블에 레코드가 성공적으로 삽입되었을 때
					// 해당 rvno를 가져와서 rvgallery 테이블에 삽입
					
					int exec2 = insertrvgallery(rv.getRvno(),glname);

						// review 및 rvgallery 삽입 결과의 총합 반환
						return exec1 + exec2;
				} else {
					// review 테이블에 레코드 삽입이 실패했을 경우
					return exec1;
				}

			}
//			public int insertReviewWithGallery(ReviewVo rv) {
//			    int exec = 0;
//
//			    String sql = "INSERT INTO review (mbno, rvrate, rvcont, contentid) VALUES (?, ?, ?, ?)";
//			    String sql2 = "INSERT INTO rvgallery (rvno, rvglname) VALUES (?, ?)";
//
//			    try {
//			        conn.setAutoCommit(false); // 트랜잭션 시작
//
//			        // Review 테이블에 삽입
//			        try (PreparedStatement pstmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
//			            pstmt.setInt(1, rv.getMbno());
//			            pstmt.setString(2, rv.getRvrate());
//			            pstmt.setString(3, rv.getRvcont());
//			            pstmt.setString(4, rv.getContentid());
//
//			            exec = pstmt.executeUpdate();
//
//			            // 삽입된 review의 rvno 가져오기
//			            ResultSet generatedKeys = pstmt.getGeneratedKeys();
//			            if (generatedKeys.next()) {
//			                rv.setRvno(generatedKeys.getInt(1));
//			            }
//			        }
//
//			        // Gallery 테이블에 삽입
//			        try (PreparedStatement galleryStmt = conn.prepareStatement(sql2)) {
//			            ArrayList<String> rvglname = rv.getRvglname();
//
//			            for (String glname : rvglname) {
//			                galleryStmt.setInt(1, rv.getRvno());
//			                galleryStmt.setString(2, glname);
//			                exec += galleryStmt.executeUpdate();
//			            }
//			        }
//
//			        conn.commit(); // 트랜잭션 커밋
//			    } catch (SQLException e) {
//			        try {
//			            conn.rollback(); // 예외 발생 시 롤백
//			        } catch (SQLException rollbackException) {
//			            rollbackException.printStackTrace();
//			        }
//			        e.printStackTrace();
//			    } finally {
//			        try {
//			            conn.setAutoCommit(true); // 트랜잭션 종료 후 자동 커밋으로 복원
//			        } catch (SQLException e) {
//			            e.printStackTrace();
//			        }
//			    }
//
//			    return exec;
//			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
}
