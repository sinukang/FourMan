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


import app.dao.ReportDao;
import app.domain.PageMaker;
import app.domain.PenaltyVo;
import app.domain.ReportVo;
import app.domain.SearchCriteria;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/ReportController")
public class ReportController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    private String location;
    
    public ReportController(String location) {
		this.location = location;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("report.do")) {
			
			SearchCriteria scri = new SearchCriteria();
			
			String page = request.getParameter("page");
			if (page == null) { page = "1";}
			
			scri.setPage(Integer.parseInt(page));
			
			PageMaker pm = new PageMaker();
			pm.setScri(scri);
			
			ReportDao rpd = new ReportDao();
			ArrayList<ReportVo> alist = rpd.reportList(scri);
			pm.setTotalCount(rpd.reportTotalCount(scri));
			
			request.setAttribute("pm", pm);
			request.setAttribute("alist", alist);
			
			String path ="/report/report.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		} else if (location.equals("reportAction.do")) {
			HttpSession session = request.getSession(false);
			
			int mbno = 0;
			int mbno2 = 0;
			int bdno = 0;
			int rvno = 0;
			int cmno = 0;
			
			if (session != null) {
				if (session.getAttribute("mbno") != null) {
					mbno = (int) session.getAttribute("mbno");
				}
			}
			if (request.getParameter("bdno") != null) {
				bdno = Integer.parseInt(request.getParameter("bdno"));
			}
			if (request.getParameter("mbno2") != null ) {
				mbno2 = Integer.parseInt(request.getParameter("mbno2"));
			}
			if (request.getParameter("rvno") != null ) {
				rvno = Integer.parseInt(request.getParameter("rvno"));
			}
			if (request.getParameter("cmno") != null) {
				cmno = Integer.parseInt(request.getParameter("cmno"));
			}
			
			//String rpcate = request.getParameter("rpcate");

			ReportVo rpv = new ReportVo();
			rpv.setMbno(mbno);
			rpv.setMbno2(mbno2);
			rpv.setBdno(bdno);
			rpv.setRvno(rvno);
			rpv.setCmno(cmno);
			//rpv.setRpcate(rpcate);
			
			
			System.out.println("mbno : " + mbno);
			System.out.println("mbno2 : " + mbno2);
			System.out.println("bdno : " + bdno);
			System.out.println("rvno : " + rvno);
			System.out.println("cmno : " + cmno);
			//System.out.println("rpcate : " + rpcate);
			
			ReportDao rpd = new ReportDao();
			int value = 0;
			
			value = rpd.reportInsert(rpv, rvno, cmno);
			
			System.out.println("value : " + value);
			
			// JSON 형식으로 응답을 생성	
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print("{\"success\": " + (value > 0) + "}");	// value가 0보다 크면 true 아니면 false
			out.flush();
			out.close();
			
		} else if (location.equals("reportDeleteAction.do")) {
			
			int rpno = 0;
			int bdno = 0;
			
			if(request.getParameter("rpno") != null) {
				rpno = Integer.parseInt(request.getParameter("rpno"));
			}
			
			if(request.getParameter("bdno") != null) {
				bdno = Integer.parseInt(request.getParameter("bdno"));
			}
			
			System.out.println("rpno : " + rpno);
			System.out.println("bdno : " + bdno);
			
			int value = 0;
			
			ReportDao rd = new ReportDao();
			value = rd.reportDelete(rpno, bdno);
			
			System.out.println("value : " + value);
			
			// JSON 형식으로 응답을 생성	
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print("{\"success\": " + (value > 0) + "}");	// value가 0보다 크면 true 아니면 false
			out.flush();
			out.close();
		} else if (location.equals("penalty.do")) {
			
			int mbno = 0;
			int rpno = 0;
			String pndelyn = null;
			
			if(request.getParameter("mbno") != null) {
				mbno = Integer.parseInt(request.getParameter("mbno"));
			}
			
			if(request.getParameter("rpno") != null) {
				rpno = Integer.parseInt(request.getParameter("rpno"));
			}
			
			pndelyn = request.getParameter("pndelyn");
			
			PenaltyVo pv = new PenaltyVo();
			pv.setMbno(mbno);
			pv.setRpno(rpno);
			pv.setPndelyn(pndelyn);
			
			System.out.println("mbno : " + mbno);
			System.out.println("rpno : " + rpno);
			System.out.println("pndelyn : " + pndelyn);
			
			ReportDao pd = new ReportDao();
			int value = 0;
			value = pd.penaltyInsert(pv);
			
			System.out.println("value : " + value);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print("{\"success\": " + (value > 0) + " }");
			out.flush();
			out.close();
		}
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
