package app.dao;

import java.io.BufferedReader;
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
	public ArrayList<ContentsVo> ContentsList(PageMaker pm){
		
		ArrayList<ContentsVo> alist = new ArrayList<ContentsVo>();
		
		String key = "qlp8EQg1WmON%2Bq8mTCBOz6N6tqUVBW16y1jVWyBiMGsYplEooRtbId0RBawLiFfSIU1HnD4pxdFv3svkl1GHqA%3D%3D";
		String uriType = "areaBasedList1";
		String area = "37";
		String sigungu = "12";
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
		String result = "";
		
		try{
			String apiURL = "https://apis.data.go.kr/B551011/KorService1/"
					+ uriType
    				+ query;
			System.out.println(apiURL);
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
			result = br.readLine();
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
			JSONObject jsonResponse = (JSONObject)jsonObject.get("response");
			JSONObject body = (JSONObject)jsonResponse.get("body");
			JSONObject items = (JSONObject)body.get("items");
			JSONArray item = (JSONArray)items.get("item");
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

}
