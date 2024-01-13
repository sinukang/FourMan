package com.ptconnect.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor  extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler
			) throws Exception{
		
		HttpSession session = request.getSession();
		
		boolean tf = false;
		if (session.getAttribute("mbAuth") != null) {
			
			String location =request.getContextPath()+"/error/authError";
			response.sendRedirect(location);			
			tf = false;			
		}else{
			tf = true;			
		}		
		return tf;
	}
//	
//
//	public void saveUrl(HttpServletRequest req) {
//		
//		String uri = req.getRequestURI();   //주소창의 프로젝트명+파일경로 ex) spring0803/board/boardList.do
//		System.out.println(uri);
//		String query =req.getQueryString();  //주소창의 parameter 부분
//		System.out.println(query);
//		
//		if (query == null || query.equals("null")) {
//			query = "";
//		}else {
//			query = "?" +query;
//		}
//		System.out.println(uri+query);
//		
//		if (req.getMethod().equals("GET")) {   
//			req.getSession().setAttribute("saveUrl", uri+query);
//		}		
//	}
//	
	
	
	
}
