package app.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    private String location;
    
    public MemberController(String location) {
		this.location = location;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("member.do")) {
			
			String path ="/member/member.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberJoin.do")) {
			
			String path ="/member/memberJoin.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberLogin.do")) {
			
			String path ="/member/memberLogin.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberIdFind.do")) {
			
			String path ="/member/memberIdFind.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberPwdFind.do")) {
			
			String path ="/member/memberPwdFind.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("myQnA.do")) {
			
			String path ="/member/myQnA.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
