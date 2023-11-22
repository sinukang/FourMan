package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import app.dbconn.DbConn;
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
		
		//mbno != 0 : 로그인했다면 galleryList 페이지로 넘어왔을 시 좋아요(하트 아이콘) 색 표시 여부
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
				String sql = "insert into review (rvno,mbno,contentid,rvcont,rvrate) \r\n"
						+ "values(?,?,?,?,?);";
				
				try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rv.getRvno());
				pstmt.setInt(2, rv.getMbno());
				pstmt.setString(3, rv.getContentid());
				pstmt.setString(4, rv.getRvcont());
				pstmt.setString(5, rv.getRvrate());
				
				
				
				exec = pstmt.executeUpdate();   //실행이되면 1값 안되면 0값
				
				
				
				
				
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
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
}
