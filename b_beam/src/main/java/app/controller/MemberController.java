package app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import app.dao.MemberDao;
import app.domain.MemberVo;

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
		}else if(location.equals("memberJoinAction.do")) {
			
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			
			//데이터를 넘겨주면 요청 객체는 그 값을 받아서 넘어온 매개변수에
			//담긴 값을 꺼내서 새로운 변수에 담는다
			MemberVo mv = new MemberVo();
			mv.setMbid(request.getParameter("memberId"));
			mv.setMbpwd(request.getParameter("memberPwd"));
			mv.setMbname(request.getParameter("memberName"));
			mv.setMbemail(request.getParameter("memberId") + "@" + request.getParameter("selectEmail"));
			mv.setMbaddr(request.getParameter("postcode")+"/"+request.getParameter("addr")+"/"+request.getParameter("detail_addr"));
			//DB에 입력한다
			MemberDao md = new MemberDao();
			int exec = md.memberInsert(mv);
			
			PrintWriter out = response.getWriter();
			

			
			
			
			if (exec == 1) {
				//자동이동메소드
				//response.sendRedirect(request.getContextPath()+"/member/memberList.html");	
				out.println("<script>alert('회원가입 되었습니다.');"
				+	"document.location.href='"+request.getContextPath()+"/member/memberJoinOk.do'</script>");
			}else{
				out.println("<script>history.back();</script>");	
			}
		
		}else if (location.equals("memberLogin.do")) {
			
			String path ="/member/memberLogin.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if(location.equals("memberLoginAction.do")) {
			
			String mbid = request.getParameter("mbid");
			String mbpwd = request.getParameter("mbpwd");
						
			MemberDao md = new MemberDao();
			int midx = 0;
			midx = md.memberLoginCheck(mbid,mbpwd);

			//Action처리하는 용도는 send방식으로 보낸다
			
			if (midx != 0) {  //일치하면
				//세션에 회원아이디를 담는다 
				HttpSession session =  request.getSession();
				session.setAttribute("mbid", mbid);
				session.setAttribute("mbpwd", mbpwd);
				response.sendRedirect(request.getContextPath()+"/");
			}else{
				response.sendRedirect(request.getContextPath()+"/member/memberLogin.do");
			}
		
			
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
		}else if (location.equals("memberInfo.do")) {
			
			String path ="/member/memberInfo.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberInfoModify.do")) {
			
			String path ="/member/memberInfoModify.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("memberResign.do")) {
			
			String path ="/member/memberResign.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
