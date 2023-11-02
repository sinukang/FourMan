package app.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import app.dao.ContentsDao;
import app.domain.ContentsVo;

public class test {
	public static ArrayList<ContentsVo> GetContentsList(JSONArray item){
		ArrayList<ContentsVo> alist = new ArrayList<ContentsVo>();
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
		return alist;
	}
	
	public static void main(String[] args) {
//		// https://m.blog.naver.com/smj9030/222504396896
//		String key = "qlp8EQg1WmON%2Bq8mTCBOz6N6tqUVBW16y1jVWyBiMGsYplEooRtbId0RBawLiFfSIU1HnD4pxdFv3svkl1GHqA%3D%3D";
//		String uriType = "areaBasedList1";
//		String area = "37";
//		String sigungu = "12";
//		String query = "?serviceKey=";
//		query += key;
//		query += "&pageNo=1&numOfRows=20";
//		query += "&MobileApp=AppTest&MobileOS=ETC&arrange=A&_type=json";
//		query += "&contentTypeId=";
//		query += "&areaCode=" + area + "&sigunguCode=" + sigungu;
//		String result = "";
//		
//		try{
//			String apiURL = "http://apis.data.go.kr/B551011/KorService1/"
//					+ uriType
//    				+ query;
//			System.out.println(apiURL);
//			URL url = new URL(apiURL);
//			HttpURLConnection con = (HttpURLConnection)url.openConnection();
//			con.setRequestMethod("GET");
//			int responseCode = con.getResponseCode();
//			BufferedReader br;
//			
//			BufferedReader bf;
//			if(responseCode==200) { // 정상 호출
//				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//			} else {  // 에러 발생
//				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
//			}
//			result = br.readLine();
//			System.out.println(result);
//			JSONParser jsonParser = new JSONParser();
//			JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
//			JSONObject jsonResponse = (JSONObject)jsonObject.get("response");
//			JSONObject body = (JSONObject)jsonResponse.get("body");
//			JSONObject items = (JSONObject)body.get("items");
//			JSONArray item = (JSONArray)items.get("item");
//			
//			ArrayList<ContentsVo> alist = test.GetContentsList(item);
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
//		}catch(Exception e){
//			e.printStackTrace();
//		}		
		ContentsDao cd = new ContentsDao();
//		ContentsVo cv = cd.ContentsViewDetail(2891323);
//		System.out.println(cv.getAddr1());
		JSONObject contents = cd.ContentsViewIntro(264284, 12);
		System.out.println(contents.get("infocenter"));
		String result = "{\"accomcount\":\"수용인원\",\"chkbabycarriage\":\"유모차대여정보\",\"chkcreditcard\":\"신용카드가능정보\",\"chkpet\":\"애완동물동반가능정보\",\"expagerange\":\"체험가능연령\",\"expguide\":\"체험안내\",\"heritage1\":\"세계문화유산유무\",\"heritage2\":\"세계자연유산유무\",\"heritage3\":\"세계기록유산유무\",\"infocenter\":\"문의및안내\",\"opendate\":\"개장일\",\"parking\":\"주차시설\",\"restdate\":\"쉬는날\",\"useseason\":\"이용시기\",\"usetime\":\"이용시간\",\"accomcountculture\":\"수용인원\",\"chkbabycarriageculture\":\"유모차대여정보\",\"chkcreditcardculture\":\"신용카드가능정보\",\"chkpetculture\":\"애완동물동반가능정보\",\"discountinfo\":\"할인정보\",\"infocenterculture\":\"문의및안내\",\"parkingculture\":\"주차시설\",\"parkingfee\":\"주차요금\",\"restdateculture\":\"쉬는날\",\"usefee\":\"이용요금\",\"usetimeculture\":\"이용시간\",\"scale\":\"규모\",\"spendtime\":\"관람소요시간\",\"agelimit\":\"관람가능연령\",\"bookingplace\":\"예매처\",\"discountinfofestival\":\"할인정보\",\"eventenddate\":\"행사종료일\",\"eventhomepage\":\"행사홈페이지\",\"eventplace\":\"행사장소\",\"eventstartdate\":\"행사시작일\",\"festivalgrade\":\"축제등급\",\"placeinfo\":\"행사장위치안내\",\"playtime\":\"공연시간\",\"program\":\"행사프로그램\",\"spendtimefestival\":\"관람소요시간\",\"sponsor1\":\"주최자정보\",\"sponsor1tel\":\"주최자연락처\",\"sponsor2\":\"주관사정보\",\"sponsor2tel\":\"주관사연락처\",\"subevent\":\"부대행사\",\"usetimefestival\":\"이용요금\",\"distance\":\"코스총거리\",\"infocentertourcourse\":\"문의및안내\",\"schedule\":\"코스일정\",\"taketime\":\"코스총소요시간\",\"theme\":\"코스테마\",\"accomcountleports\":\"수용인원\",\"chkbabycarriageleports\":\"유모차대여정보\",\"chkcreditcardleports\":\"신용카드가능정보\",\"chkpetleports\":\"애완동물동반가능정보\",\"expagerangeleports\":\"체험가능연령\",\"infocenterleports\":\"문의및안내\",\"openperiod\":\"개장기간\",\"parkingfeeleports\":\"주차요금\",\"parkingleports\":\"주차시설\",\"reservation\":\"예약안내\",\"restdateleports\":\"쉬는날\",\"scaleleports\":\"규모\",\"usefeeleports\":\"입장료\",\"usetimeleports\":\"이용시간\",\"accomcountlodging\":\"수용가능인원\",\"benikia\":\"베니키아여부\",\"checkintime\":\"입실시간\",\"checkouttime\":\"퇴실시간\",\"chkcooking\":\"객실내취사여부\",\"foodplace\":\"식음료장\",\"goodstay\":\"굿스테이여부\",\"hanok\":\"한옥여부\",\"infocenterlodging\":\"문의및안내\",\"parkinglodging\":\"주차시설\",\"pickup\":\"픽업서비스\",\"roomcount\":\"객실수\",\"reservationlodging\":\"예약안내\",\"reservationurl\":\"예약안내홈페이지\",\"roomtype\":\"객실유형\",\"scalelodging\":\"규모\",\"subfacility\":\"부대시설 (기타)\",\"barbecue\":\"바비큐장여부\",\"beauty\":\"뷰티시설정보\",\"beverage\":\"식음료장여부\",\"bicycle\":\"자전거대여여부\",\"campfire\":\"캠프파이어여부\",\"fitness\":\"휘트니스센터여부\",\"karaoke\":\"노래방여부\",\"publicbath\":\"공용샤워실여부\",\"publicpc\":\"공용 PC실여부\",\"sauna\":\"사우나실여부\",\"seminar\":\"세미나실여부\",\"sports\":\"스포츠시설여부\",\"refundregulation\":\"환불규정\",\"chkbabycarriageshopping\":\"유모차대여정보\",\"chkcreditcardshopping\":\"신용카드가능정보\",\"chkpetshopping\":\"애완동물동반가능정보\",\"culturecenter\":\"문화센터바로가기\",\"fairday\":\"장서는날\",\"infocentershopping\":\"문의및안내\",\"opendateshopping\":\"개장일\",\"opentime\":\"영업시간\",\"parkingshopping\":\"주차시설\",\"restdateshopping\":\"쉬는날\",\"restroom\":\"화장실설명\",\"saleitem\":\"판매품목\",\"saleitemcost\":\"판매품목별가격\",\"scaleshopping\":\"규모\",\"shopguide\":\"매장안내\",\"chkcreditcardfood\":\"신용카드가능정보\",\"discountinfofood\":\"할인정보\",\"firstmenu\":\"대표메뉴\",\"infocenterfood\":\"문의및안내\",\"kidsfacility\":\"어린이놀이방여부\",\"opendatefood\":\"개업일\",\"opentimefood\":\"영업시간\",\"packing\":\"포장가능\",\"parkingfood\":\"주차시설\",\"reservationfood\":\"예약안내\",\"restdatefood\":\"쉬는날\",\"scalefood\":\"규모\",\"seat\":\"좌석수\",\"smoking\":\"금연/흡연여부\",\"treatmenu\":\"취급메뉴\",\"lcnsno\":\"인허가번호\"}";
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = new JSONObject();
		try {
			jsonObject = (JSONObject)jsonParser.parse(result);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(jsonObject.get("infocenter"));
		
	}
}
