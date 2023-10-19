package com.my0803.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

	// 로그인 체크 인증 인터셉터 클래스 
public class Auth_Interceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler
			)throws Exception {
		
		HttpSession session = request.getSession();
		
		boolean tf =false;
		if(session.getAttribute("midx")==null) {
			//세션에  이동하려는 주소를 담는다 
			 saveUrl(request);
			
			String location=request.getContextPath()+"/member/memberLogin.do";
			response.sendRedirect(location);
			tf = false;
		}else {
			tf = true;
		}
		return tf;
	}
	
	// 이동하려는 주소를 세션에 담는 메서드 
	public void saveUrl(HttpServletRequest req) {
		
		String uri= req.getRequestURI(); // 전체경로
		String query = req.getQueryString(); // 파라미터
	
		if(query==null || query.equals("null")){
			query = "";
		}else {
			query ="?" + query;
		}
		
		if(req.getMethod().equals("GET")) { //get 대문자 메모
			req.getSession().setAttribute("savaUrl", uri+query);
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
