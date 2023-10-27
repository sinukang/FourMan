package app.dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import app.domain.ContentsVo;
import app.domain.PageMaker;

public class ContentsDao {
	private String key;
	private String uri;
	private String area;
	private String sigungu;
	
	public ContentsDao() {
		this.key = "qlp8EQg1WmON%2Bq8mTCBOz6N6tqUVBW16y1jVWyBiMGsYplEooRtbId0RBawLiFfSIU1HnD4pxdFv3svkl1GHqA%3D%3D";	//인증키
		this.uri = "https://apis.data.go.kr/B551011/KorService1/";	//parameter 제외한 부분
		this.area = "37";	//전북 코드
		this.sigungu = "12";	//전주시 코드
	}
	
	public static JSONArray GetItem(String apiURL) throws Exception {
		URL url = new URL(apiURL);
		HttpURLConnection con = (HttpURLConnection)url.openConnection();
		con.setRequestMethod("GET");
		int responseCode = con.getResponseCode();
		BufferedReader br;
		
		if(responseCode==200) { // 정상 호출
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		} else {  // 에러 발생
			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		}
		String result = br.readLine();
		JSONParser jsonParser = new JSONParser();
//		System.out.println(result);
		JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
		JSONObject jsonResponse = (JSONObject)jsonObject.get("response");
		JSONObject body = (JSONObject)jsonResponse.get("body");
		JSONObject items = (JSONObject)body.get("items");
		JSONArray item = (JSONArray)items.get("item");
		return item;
	}
	
	public ArrayList<ContentsVo> ContentsList(PageMaker pm){
		
		ArrayList<ContentsVo> alist = new ArrayList<ContentsVo>();
		String uriType = "areaBasedList1";
		String page = Integer.toString(pm.getScri().getPage());
		String numOfRows = Integer.toString(pm.getScri().getNumOfRows());
		String contentTypeId = "";
		String keyword = "";

		if(!pm.getScri().getSearchTypeId().equals(null) && !pm.getScri().getSearchTypeId().equals("")) {
			contentTypeId = pm.getScri().getSearchTypeId();
		}
		
		String query = "?serviceKey=";
		query += key;
		query += "&pageNo="+page+"&numOfRows="+numOfRows;
		query += "&MobileApp=AppTest&MobileOS=ETC&arrange=A&_type=json";
		query += "&contentTypeId=" + contentTypeId;
		query += "&areaCode=" + area + "&sigunguCode=" + sigungu;
		if(!pm.getScri().getKeyword().equals(null) && !pm.getScri().getKeyword().equals("")) {
			keyword = pm.getScri().getKeyword();
			uriType = "searchKeyword1";
			query += "&keyword=" + keyword;
		}
		String apiURL = uri
		+ uriType
		+ query;
		
		try{
			JSONArray item = GetItem(apiURL);
			for(int i = 0; i < item.size(); i++) {
				ContentsVo cv = new ContentsVo();
				JSONObject contents = (JSONObject)item.get(i);
				cv.setAddr1(contents.get("addr1").toString());
				cv.setContentid(contents.get("contentid").toString());
				cv.setContenttypeid(contents.get("contenttypeid").toString());
				cv.setCreatedtime(contents.get("createdtime").toString());
				cv.setTitle(contents.get("title").toString());
				cv.setTel(contents.get("tel").toString());
				cv.setZipcode(contents.get("zipcode").toString());
				cv.setFirstimage2(contents.get("firstimage2").toString());
				cv.setMapx(contents.get("mapx").toString());
				cv.setMapy(contents.get("mapy").toString());
				alist.add(cv);
			}
			
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
		return alist;	
	}

	public ContentsVo ContentsViewDetail(int contentid) {
		ContentsVo cv = new ContentsVo();
		String contentId = Integer.toString(contentid);
		String uriType = "detailCommon1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
		query += "&contentId=" + contentId;
		
		String apiURL = uri
		+ uriType
		+ query;
		System.out.println(apiURL);
		
		try {
			JSONArray item = GetItem(apiURL);
			JSONObject contents = (JSONObject)item.get(0);
			cv.setAddr1(contents.get("addr1").toString());
			cv.setContentid(contents.get("contentid").toString());
			cv.setContenttypeid(contents.get("contenttypeid").toString());
			cv.setCreatedtime(contents.get("createdtime").toString());
			cv.setTitle(contents.get("title").toString());
			cv.setTel(contents.get("tel").toString());
			cv.setZipcode(contents.get("zipcode").toString());
			cv.setFirstimage2(contents.get("firstimage2").toString());
			cv.setMapx(contents.get("mapx").toString());
			cv.setMapy(contents.get("mapy").toString());
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return cv;
	}
	public JSONObject ContentsViewIntro(int contentid, int contenttypeid) {
		JSONObject contents = new JSONObject();
		String contentId = Integer.toString(contentid);
		String contentTypeId = Integer.toString(contenttypeid);
		String uriType = "detailIntro1";
		String query = "?serviceKey=";
		query += key;
		query += "&MobileApp=AppTest&MobileOS=ETC&_type=json";
		query += "&contentId=" + contentId;
		query += "&contentTypeId=" + contentTypeId;
		
		String apiURL = uri
		+ uriType
		+ query;
		System.out.println(apiURL);
		
		try {
			JSONArray item = GetItem(apiURL);
			contents = (JSONObject)item.get(0);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return contents;
	}
	public ContentsVo ContentsViewDetailInfo(int contentid, int contenttypeid) {
		ContentsVo cv = new ContentsVo();
		return cv;
	}
	public ContentsVo ContentsViewDetailInfoCourse(int contentid, int contenttypeid) {
		ContentsVo cv = new ContentsVo();
		return cv;
	}
	public ContentsVo ContentsViewDetailInfoRoom(int contentid, int contenttypeid) {
		ContentsVo cv = new ContentsVo();
		return cv;
	}
}
