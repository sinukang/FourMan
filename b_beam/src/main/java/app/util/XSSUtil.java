package app.util;

//XSS 방지 클래스 구현
//사용은 CommentController에서 commentWrite.do 부분 참고
public class XSSUtil {
	
	public static String cleanXSS(String value) {	
		
		String returnVal = value;
		returnVal = returnVal.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
		returnVal = returnVal.replaceAll("\\(", "&#40;").replaceAll("\\)", "&#41;");
		returnVal = returnVal.replaceAll("'", "&#39;");
		returnVal = returnVal.replaceAll("\"", "&#34;");
		returnVal = returnVal.replaceAll("eval\\((.*)\\)", "");
		returnVal = returnVal.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
//		returnVal = returnVal.replaceAll("script", "");
//		returnVal = returnVal.replaceAll("iframe", "");
//		returnVal = returnVal.replaceAll("embed", "");
		
		return returnVal;
	}

}
