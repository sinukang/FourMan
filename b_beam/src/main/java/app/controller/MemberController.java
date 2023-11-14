package app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
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
import app.util.MailSender;

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
			mv.setMbemail(request.getParameter("memberEmail"));
			mv.setMbaddr(request.getParameter("postcode")+"/"+request.getParameter("addr")+"/"+request.getParameter("detail_addr"));
			//DB에 입력한다
			MemberDao md = new MemberDao();
			int exec = md.memberInsert(mv);
			
			PrintWriter out = response.getWriter();
			

			
			
			
			if (exec == 1) {
				//자동이동메소드
				//response.sendRedirect(request.getContextPath()+"/member/memberList.html");	
				out.println("<script>alert('회원가입 되었습니다.');"
				+	"document.location.href='"+request.getContextPath()+"/member/memberLogin.do'</script>");
			}else{
				out.println("<script>history.back();</script>");	
			}
		   } else if (location.equals("getsign.do")) {
			   
		        HttpSession session = request.getSession();
		        String authNumber = (String) session.getAttribute("MAIL_NUMBER");

		        if (authNumber == null) authNumber = "";

		        response.setContentType("application/json");
		        response.setCharacterEncoding("UTF-8");

		        PrintWriter out = response.getWriter();
		        out.print("{\"authNumber\":\"" + authNumber + "\"}");
		   }else if (location.equals("memberIdCheck.do")) {
				    String memberId = request.getParameter("memberId");

				    MemberDao md = new MemberDao();
				    int value = md.memberIdCheck(memberId);

				    // JSON 응답을 생성
				    JSONObject jsonResponse = new JSONObject();
				    jsonResponse.put("value", value);

				    response.setContentType("application/json");
				    response.setCharacterEncoding("UTF-8");

				    PrintWriter out = response.getWriter();
				    out.print(jsonResponse.toJSONString());
				    
				} else if (location.equals("memberNickCheck.do")) {
				    String nick = request.getParameter("memberName");

				    MemberDao md = new MemberDao();
				    int value = md.memberNicknameCheck(nick);

				    // JSON 응답을 생성
				    JSONObject jsonResponse = new JSONObject();
				    jsonResponse.put("value", value);

				    response.setContentType("application/json");
				    response.setCharacterEncoding("UTF-8");

				    PrintWriter out = response.getWriter();
				    out.print(jsonResponse.toJSONString());
				    
				} else if (location.equals("memberEmailCheck.do")) {
				    String email = request.getParameter("memberEmail");
				    MemberDao md = new MemberDao();
				    int value = 0;
				    Random random = new Random();
				    String authNumber = "";

				    for(int i=0; i < 6; i++) {
				        authNumber += random.nextInt(10);			
				    }
				    MailSender mail = new MailSender();

				    value = md.memberEmailCheck(email);
				    String str = "{\"value\":\"" + value + "\"}";

				    if (value == 0) {
				        String title = "회원가입 인증 메일입니다.";
				        String body = "인증번호 : " + authNumber;

				        if (mail.MailSend(email, title, body)) {
				            HttpSession session = request.getSession();
				            session.removeAttribute("MAIL_NUMBER");
				            session.setAttribute("MAIL_NUMBER", authNumber);
				            System.out.println("send mail ok");
				        }
				    }

				    response.setContentType("application/json");
				    response.setCharacterEncoding("UTF-8");

				    PrintWriter out = response.getWriter();
				    out.print(str);
				
		}else if (location.equals("memberLogin.do")) {
			
			String path ="/member/memberLogin.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if(location.equals("memberLoginAction.do")) {
			
			MemberVo mv1 = new MemberVo();
			mv1.setMbid(request.getParameter("memberId"));
			mv1.setMbpwd(request.getParameter("memberPwd"));
			
			
			MemberDao md = new MemberDao();
			int mbno = 0;
			MemberVo mv2 = md.memberLoginCheck(mv1);
			mbno = mv2.getMbno();
			//Action처리하는 용도는 send방식으로 보낸다
			PrintWriter out = response.getWriter();
			if (mbno != 0) {  //일치하면
				//세션에 회원아이디를 담는다 
				HttpSession session =  request.getSession();
				session.setAttribute("mbname", mv2.getMbname());
				session.setAttribute("mbno", mbno);
			}
			out.print("{\":value\":\""+mbno+"\"}");    
		}else if(location.equals("memberLogout.do")) {
			
			HttpSession session= request.getSession();
			session.removeAttribute("mbid");
			session.removeAttribute("mbno");
			session.invalidate();
			
			response.sendRedirect(request.getContextPath()+"/");
			
		}else if (location.equals("memberIdFind.do")) {
			
			String path ="/member/memberIdFind.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		} else if (location.equals("memberIdFindAction.do")) {
		    String email = request.getParameter("memberEmail"); // 변경: email 파라미터로 받음

		    MemberDao md = new MemberDao();
		    String memberId = md.memberIdFind(email);
		    int value = 0;
			PrintWriter out = response.getWriter();
			JSONObject jsonResponse = new JSONObject();
		    if (memberId != null) {
		        // 아이디를 찾았을 때의 처리
		    	value = 1;
		        String star = "";
		        for (int i = 0; i < (memberId.length() - 4); i++) {
		            star += "*";
		        }
		        memberId = memberId.substring(0, 2) + star + memberId.substring(memberId.length() - 2);
			    // memberIdFindAction.do에서의 아이디 일부 가리기
			    jsonResponse.put("memberId", memberId);
		    }

		    jsonResponse.put("value", value);
			out.print(jsonResponse.toJSONString());
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
