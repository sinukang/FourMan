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
import app.domain.BoardVo;
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
			
			
	public ArrayList<ReviewVo>  reviewList(int mbno,String contentid){
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
				+ "FROM (select b.*, mbname from review b JOIN member m ON b.mbno = m.mbno WHERE m.mbdelyn = 'N' AND b.rvdelyn = 'N') a\r\n"
				+ "WHERE a.rvdelyn = 'N'\r\n"
				+ "and a.contentid = ?\r\n"
				+ "ORDER BY a.rvno DESC;";
				
				
		String sql2 ="SELECT * FROM rvgallery WHERE rvgldelyn = 'N' AND rvno=?";
		try{
			
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, contentid);
			rs = pstmt.executeQuery();
			//rs.next()는 다음값이 있는지 확인하는 메소드 있으면true
			while(rs.next()){
				ReviewVo rv = new ReviewVo();
				//rs에서 midx값 꺼내서 mv에 옮겨담는다
				rv.setRvno(rs.getInt("rvno"));
				rv.setMbno(rs.getInt("Mbno"));
				rv.setContentid(rs.getString("contentid"));
				rv.setRvrate(rs.getString("rvrate"));
				rv.setRvdate(rs.getString("rvdate"));
				rv.setRvcont(rs.getString("rvcont"));
				rv.setRvLikeCnt(rs.getInt("rvLikeCnt"));
				rv.setMbname(rs.getString("mbname"));
				
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

			// 생성된 rvno 가져오기
			try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
				if (generatedKeys.next()) {
//					rv.setRvno(generatedKeys.getInt(1));
					exec=generatedKeys.getInt(1);
				}
			}
			System.out.println(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
//				finally {				
//					try {
//						pstmt.close();
//						conn.close();
//					} catch (SQLException e) {					
//						e.printStackTrace();
//					}
//				}			
			
			return exec;	
		}
		
	public int insertrvgallery(int rvno, ArrayList<String> glname) {
			int exec = 0;

			String sql = "INSERT INTO rvgallery(rvno, rvglname) VALUES(?,?)";
			System.out.println(sql);
			try (PreparedStatement pstmt1 = conn.prepareStatement(sql)){
				for (String glone : glname) {
					pstmt1.setInt(1,rvno);
					pstmt1.setString(2,glone);
					exec += pstmt1.executeUpdate();
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			return exec;
		}

	public int reviewModify(ReviewVo rv){
		int exec = 0;		
		
		String sql ="UPDATE review  SET rvrate =?, rvcont = ? \r\n"
					+ "WHERE rvno = ? and mbno =?";
			
		try{		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rv.getRvrate());
			pstmt.setString(2, rv.getRvcont());
			pstmt.setInt(3, rv.getRvno());
			pstmt.setInt(4, rv.getMbno());
			
			
			exec = pstmt.executeUpdate();	
			//수정이 되면 1이 리턴된다.
		}catch(Exception e){			
				e.printStackTrace();
		}
		return exec;	
	}
		
		
	public int reviewglModify(ReviewVo rv){
		int exec = 0;		
			
	
		ArrayList<String> rvglName = rv.getRvglname();
		
				String sql ="UPDATE rvgallery a \r\n"
						+ "join review b on a.rvno = b.rvno \r\n"
						+ "SET  a.rvglname =? \r\n"
						+ "WHERE b.rvno = ? and b.mbno = ?";
				
		try{		
			for(String rvglName1 : rvglName) {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, rvglName1);
				pstmt.setInt(2, rv.getRvno());
				pstmt.setInt(3, rv.getMbno());
	
				exec += pstmt.executeUpdate();
			}
				
				//수정이 되면 1이 리턴된다.
				}catch(Exception e){			
					e.printStackTrace();
				}
				return exec;	
	}
		
		

	public int reviewDelete(int rvno, int mbno) {
		int exec = 0;

		String sql = "UPDATE review SET rvdelyn = 'Y' WHERE rvno = ? and mbno = ?";
		String sql2 = "UPDATE rvgallery a join review b on a.rvno = b.rvno\r\n"
					+ " SET rvgldelyn = 'Y' WHERE b.rvno = ? and b.mbno=?";

		try {//삭제할때 사진이없는경우 
				conn.setAutoCommit(false);

			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setInt(1, rvno);
				pstmt.setInt(2, mbno);
				
			exec += pstmt.executeUpdate();
			}
			//글에 사진이 포함된경우 
			try (PreparedStatement pstmt2 = conn.prepareStatement(sql2)) {
				pstmt2.setInt(1, rvno);
				pstmt2.setInt(2, mbno);
			exec += pstmt2.executeUpdate();
			}

			conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			return exec;
			}

			return exec;
			
	}	
				
				
				
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
}
