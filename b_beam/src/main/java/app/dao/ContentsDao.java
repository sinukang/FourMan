package app.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import app.dbconn.DbConn;
import app.domain.ContentsVo;
import app.domain.PageMaker;

public class ContentsDao {
	private String key;
	private String uri;
	private String area;
	private String sigungu;

	private Connection conn;
	private PreparedStatement pstmt;
	
	public ContentsDao() {
		this.key = "qlp8EQg1WmON%2Bq8mTCBOz6N6tqUVBW16y1jVWyBiMGsYplEooRtbId0RBawLiFfSIU1HnD4pxdFv3svkl1GHqA%3D%3D";	//인증키	
		this.uri = "https://apis.data.go.kr/B551011/KorService1/";	//parameter 제외한 부분
		this.area = "37";	//전북 코드
		this.sigungu = "12";	//전주시 코드
		DbConn dbconn = new DbConn();
		this.conn = dbconn.getConnection();
	}
	
	public static JSONObject GetItem(String apiURL) throws Exception {
		// tourAPI로부터 정보를 불러오는 메소드
		
		URL url = new URL(apiURL);
		//url로 접속
		HttpURLConnection con = (HttpURLConnection)url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Content-Type", "application/json; utf-8");
		con.setRequestProperty("Accept", "application/json");
		// 접속시 반환코드
		int responseCode = con.getResponseCode();
		BufferedReader br;
		
		if(responseCode==200) { // 정상 호출
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		} else {  // 에러 발생
			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		}
		// 반환된 정보를 String으로 저장
		String result = br.readLine();
//		System.out.println("result:" + result);
		// String으로 저장된 정보중 html을 변경하는 코드 필터링
//		result = result.replaceAll(System.getProperty("line.separator"), " ");
//		System.out.println("result:" + result);
		// String으로 저장된 정보를 json형식으로 파싱
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
		// Response키값의 밸류를 가져옴
		JSONObject jsonResponse = (JSONObject)jsonObject.get("response");
		return jsonResponse;
	}
	
	public JSONObject ContentsList(PageMaker pm){
		// 컨텐츠리스트를 불러오는 메소드
		ArrayList<ContentsVo> alist = new ArrayList<ContentsVo>();
		// 검색쿼리
		String uriType = "areaBasedList1";
		// parameter에 쓸 컨텐츠의 페이지와 numofrows값
		String page = Integer.toString(pm.getScri().getPage());
		String numOfRows = Integer.toString(pm.getScri().getNumOfRows());
		String contentTypeId = "";
		String keyword = "";
		// pm의 contentsTypeId값이 비어있는지 확인
		if(pm.getScri().getContentsTypeId()!=null && !pm.getScri().getContentsTypeId().equals("")) {
			contentTypeId = pm.getScri().getContentsTypeId();
		}
		// uri에 쿼리값을 담음
		String query = "?serviceKey=";
		query += key;
		query += "&pageNo="+page+"&numOfRows="+numOfRows;
		query += "&MobileApp=AppTest&MobileOS=ETC&arrange=A&_type=json";
		query += "&contentTypeId=" + contentTypeId;
		query += "&areaCode=" + area + "&sigunguCode=" + sigungu;
		if(!pm.getScri().getKeyword().equals(null) && !pm.getScri().getKeyword().equals("")) {
			// 키워드가 있을 경우 검색쿼리 변경, keyword값 추가
			keyword = pm.getScri().getKeyword();
			uriType = "searchKeyword1";
			query += "&keyword=" + keyword;
		}
		String apiURL = uri
		+ uriType
		+ query;
		System.out.println(apiURL);
		JSONObject body = new JSONObject();
		try{
			// uri로 데이터 불러옴
			JSONObject jsonResponse = GetItem(apiURL);
			body = (JSONObject)jsonResponse.get("body");
//			for(int i = 0; i < item.size(); i++) {
//				ContentsVo cv = new ContentsVo();
//				JSONObject contents = (JSONObject)item.get(i);
//				cv.setContentid(contents.get("contentid").toString());
//				cv.setContenttypeid(contents.get("contenttypeid").toString());
//				cv.setContentdate(contents.get("createdtime").toString());
//				cv.setFirstimage(contents.get("firstimage").toString());
//				cv.setFirstimage2(contents.get("firstimage2").toString());
//				cv.setTitle(contents.get("title").toString());
//				cv.setMapx(contents.get("mapx").toString());
//				cv.setMapy(contents.get("mapy").toString());
//				alist.add(cv);
//			}
//			
//			for(int i = 0; i < alist.size(); i++) {
//				ContentsVo cv = alist.get(i);
//				System.out.println("리스트 번호 : " + (i + 1));
//				System.out.println("제목 : " + cv.getTitle());
//				System.out.println("주소 : " + cv.getAddr1());
//				System.out.println("id : " + cv.getContentid());
//				System.out.println("타입 : " + cv.getContenttypeid());
//				System.out.println("위도 : " + cv.getMapx());
//				System.out.println("경도 : " + cv.getMapy());
//				System.out.println("썸네일 : " + cv.getFirstimage2());
//				System.out.println("---------------------------------");
//			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return body;	
	}
	public JSONObject ContentsViewDetail(String contentid) {
		// tempContents에 정보가 없다면 정보를 api로부터 불러오고 임시컨텐츠 테이블에 정보를 담는 메소드
		JSONObject contents = new JSONObject();
		String uriType = "detailCommon1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
		query += "&contentId=" + contentid;
		
		String apiURL = uri
		+ uriType
		+ query;
		System.out.println(apiURL);
		
		try {
			// 컨텐츠를 json형식으로 불러와 기본 정보를 담음
			JSONObject jsonResponse = GetItem(apiURL);
			JSONObject body = (JSONObject)jsonResponse.get("body");
			JSONObject items = (JSONObject)body.get("items");
			System.out.println("items : " + items.toString());
			JSONArray item = (JSONArray)items.get("item");
			System.out.println("item : " + item.toString());
			contents = (JSONObject)item.get(0);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return contents;
	}
	public JSONArray ContentsViewDetailImage(String contentid) {
		// 컨텐츠 상세보기 페이지 정보 불러오는 메소드
		JSONArray contentsImage = new JSONArray();
		String uriType = "detailImage1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json&subImageYN=Y";
		query += "&contentId=" + contentid;
		query += "&imageYN=Y";

		String apiURL = uri
				+ uriType
				+ query;
		System.out.println(apiURL);
		try {
			// 컨텐츠를 json형식으로 불러와 기본 정보를 담음
			JSONObject jsonResponse = GetItem(apiURL);
			JSONObject body = (JSONObject)jsonResponse.get("body");
			if(!body.get("totalCount").toString().equals("0"))
			{
				JSONObject items = (JSONObject)body.get("items");				
				contentsImage = (JSONArray)items.get("item");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return contentsImage;
	}
	public JSONArray ContentsViewMenuImage(String contentid) {
		// 컨텐츠 상세보기 페이지 정보 불러오는 메소드
		JSONArray contentsImage = new JSONArray();
		String uriType = "detailImage1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json&subImageYN=Y";
		query += "&contentId=" + contentid;
		query += "&imageYN=N";

		String apiURL = uri
				+ uriType
				+ query;
		System.out.println(apiURL);
		try {
			// 컨텐츠를 json형식으로 불러와 기본 정보를 담음
			JSONObject jsonResponse = GetItem(apiURL);
			JSONObject body = (JSONObject)jsonResponse.get("body");
			if(!body.get("totalCount").toString().equals("0"))
			{
				JSONObject items = (JSONObject)body.get("items");				
				contentsImage = (JSONArray)items.get("item");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return contentsImage;
	}
	public JSONObject ContentsViewIntro(String contentid, String contenttypeid) {
		JSONObject contents = new JSONObject();
		String uriType = "detailIntro1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json";
		query += "&contentId=" + contentid;
		query += "&contentTypeId=" + contenttypeid;
		
		String apiURL = uri
		+ uriType
		+ query;
		System.out.println(apiURL);
		
		try {
			JSONObject jsonResponse = GetItem(apiURL);
			JSONObject body = (JSONObject)jsonResponse.get("body");
			JSONObject items = (JSONObject)body.get("items");
			JSONArray item = (JSONArray)items.get("item");
			contents = (JSONObject)item.get(0);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return contents;
	}
//	public ContentsVo ContentsViewDetailInfo(String contentid, String contenttypeid) {
//		ContentsVo cv = new ContentsVo();
//		return cv;
//	}
//	public ContentsVo ContentsViewDetailInfoCourse(String contentid, String contenttypeid) {
//		ContentsVo cv = new ContentsVo();
//		return cv;
//	}
//	public ContentsVo ContentsViewDetailInfoRoom(String contentid, String contenttypeid) {
//		ContentsVo cv = new ContentsVo();
//		return cv;
//	}
	public ContentsVo setTempContents(String contentid) {
		ContentsVo cv = new ContentsVo();
		cv.setContentid(contentid);
		PreparedStatement pstmt2=null;
		String sql = "select *, count(*) as cnt from tempcontents"
				+ " where contentid=?";
//		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, contentid);
			ResultSet rs = pstmt.executeQuery();
			int cnt=0;
			if(rs.next()) {cnt=rs.getInt("cnt");}
			//정보가 있음
			// 컨텐츠 정보를 담기 위한 정보
			JSONObject contents 		= this.ContentsViewDetail(contentid);
			JSONArray contentsImg 		= this.ContentsViewDetailImage(contentid);
			JSONArray contentsMenuImg	= new JSONArray();
			if(contents.get("contenttypeid").toString().equals("39")) {
				contentsMenuImg = this.ContentsViewMenuImage(contentid);
			}
			JSONObject contentsIntro 	= this.ContentsViewIntro(contentid,contents.get("contenttypeid").toString());

			cv.setTitle(contents.get("title").toString());
			cv.setContenttypeid(contents.get("contenttypeid").toString());
			cv.setMapx(contents.get("mapx").toString());
			cv.setMapy(contents.get("mapy").toString());
			cv.setFirstimage(contents.get("firstimage").toString());
			cv.setContentdate(contents.get("createdtime").toString());
			cv.setContentdatem(contents.get("modifiedtime").toString());
			cv.setDetailCommon1(contents.toString());
			cv.setDetailImage1(contentsImg.toString());
			cv.setMenuImage1(contentsMenuImg.toString());
			cv.setDetailIntro1(contentsIntro.toString());
			
			if(cnt>0) {
				if(!rs.getString("contentdatem").equals("(null)")&&rs.getString("contentdatem").equals(contents.get("contentdatem"))) {
					// 컨텐츠 수정일이 api에서 가져온 정보와 같을 경우 상태만 N으로 바꿔준다
					sql = "update tempcontents SET contentdelyn = 'N' where and contentid=?";
					try {
						pstmt2 = conn.prepareStatement(sql);
						pstmt2.setString(1, contentid);
						pstmt2.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					}	
				}else {// 컨텐츠 수정일과 api에서 가저온 정보가 다를경우 정보를 최신화한다.
					sql	 = "update tempcontents ";
					sql += "SET title = ?,contenttypeid = ?,mapx = ?,mapy = ?,firstimage = ?,contentdate = ?,contentdatem = ?,contentdelyn = 'N', ";
					sql += "detailCommon1 = ?,detailImage1 = ?,menuImage1 = ?,detailIntro1 = ? where contentid = ?";
					try {
						pstmt2 = conn.prepareStatement(sql);
						pstmt2.setString(1, cv.getTitle());
						pstmt2.setString(2, cv.getContenttypeid());
						pstmt2.setString(3, cv.getMapx());
						pstmt2.setString(4, cv.getMapy());
						pstmt2.setString(5, cv.getFirstimage());
						pstmt2.setString(6, cv.getContentdate());
						pstmt2.setString(7, cv.getContentdatem());
						pstmt2.setString(8, cv.getDetailCommon1());
						pstmt2.setString(9, cv.getDetailImage1());
						pstmt2.setString(10, cv.getMenuImage1());
						pstmt2.setString(11, cv.getDetailIntro1());
						
						pstmt2.setString(8, contentid);
						System.out.println(sql);
						pstmt2.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					}	
				}
			}else {
				// 정보가 없음
				sql = "insert into ";
				sql +="tempcontents(contentid,title,contenttypeid,mapx,mapy,firstimage,contentdate,contentdatem,detailCommon1,detailImage1,menuImage1,detailIntro1,contentdelyn) ";
				sql +="VALUES(?,?,?,?,?,?,?,?,?,?,?,?,'Y')";
				try {
					pstmt2 = conn.prepareStatement(sql);
					pstmt2.setString(1, contentid);
					pstmt2.setString(2, cv.getTitle());
					pstmt2.setString(3, cv.getContenttypeid());
					pstmt2.setString(4, cv.getMapx());
					pstmt2.setString(5, cv.getMapy());
					pstmt2.setString(6, cv.getFirstimage());
					pstmt2.setString(7, cv.getContentdate());
					pstmt2.setString(8, cv.getContentdatem());
					pstmt2.setString(9, cv.getDetailCommon1());
					pstmt2.setString(10, cv.getDetailImage1());
					pstmt2.setString(11, cv.getMenuImage1());
					pstmt2.setString(12, cv.getDetailIntro1());
//					pstmt2.setString(2, cv.getTitle());
//					pstmt2.setString(3, cv.getContenttypeid());
//					pstmt2.setString(4, cv.getMapx());
//					pstmt2.setString(5, cv.getMapy());
//					pstmt2.setString(6, cv.getFirstimage());
//					pstmt2.setString(7, cv.getContentdate());
//					pstmt2.setString(8, cv.getContentdatem());
		
					pstmt2.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		return cv;
	}
	public ContentsVo getTempContents(String contentid) {
		ContentsVo cv = new ContentsVo();
		cv.setContentid(contentid);
		PreparedStatement pstmt2=null;
		String sql = "select * from tempcontents"
				+ " where contentid=? and contentdelyn='N'";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, contentid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				cv.setTitle(rs.getString("title"));
				cv.setContenttypeid(rs.getString("contenttypeid"));
				cv.setMapx(rs.getString("mapx"));
				cv.setMapy(rs.getString("mapy"));
				cv.setFirstimage(rs.getString("firstimage"));
				cv.setContentdate(rs.getString("contentdate"));
				cv.setContentdatem(rs.getString("contentdatem"));
				cv.setDetailCommon1(rs.getString("detailCommon1"));
				cv.setDetailImage1(rs.getString("detailImage1"));
				cv.setMenuImage1(rs.getString("menuImage1"));
				cv.setDetailIntro1(rs.getString("detailIntro1"));
			}else {
				cv = this.setTempContents(contentid);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return cv;
	}
	
	public int getReviewcnt(String contentid) {
		int value = 0;
		String sql="select count(*) as cnt from review where contentid=? and rvdelyn='N'";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, contentid);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				value =	rs.getInt("cnt");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
}
