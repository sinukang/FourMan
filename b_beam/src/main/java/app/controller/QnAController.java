package app.controller;

import java.io.IOException;
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

import app.dao.QnADao;
import app.dao.ReviewDao;
import app.domain.QnAVo;
import app.domain.ReviewVo;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/QnAController")
public class QnAController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    private String location;
    
    public QnAController(String location) {
		this.location = location;
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("qna.do")) {
			
			String path ="/qna/qna.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("myQnA.do")) {
			
			HttpSession session = request.getSession();
			QnADao qd = new QnADao();
			int mbno = 0;
			if(session.getAttribute("mbno") != null) {
			 mbno = (int) session.getAttribute("mbno");
			}
			
			ArrayList<QnAVo> q_alist = qd.qnaSelectAll(mbno);
			request.setAttribute("q_alist", q_alist);
			
			for (QnAVo qv : q_alist) {
			    System.out.println("QTitle: " + qv.getQtitle());
			    System.out.println("QCont: " + qv.getQcont());
			    System.out.println("AMbno: " + qv.getAmbno());
			    System.out.println("ACont: " + qv.getAcont());
			}
			
			String path ="/qna/myQnA.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("managerMyQnA.do")) {
		
			
			String path ="/qna/managerMyQnA.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
