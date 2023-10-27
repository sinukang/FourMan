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

import app.dao.ContentsDao;
import app.domain.ContentsVo;
import app.domain.PageMaker;
import app.domain.SearchCriteria;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/ContentsController")
public class ContentsController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    private String location;
    
    public ContentsController(String location) {
		this.location = location;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("contentsList.do")) {
			ContentsDao cd = new ContentsDao();
			SearchCriteria scri = new SearchCriteria();
			PageMaker pm = new PageMaker();
			String contentTypeId = request.getParameter("contentTypeId");
			String keyword = request.getParameter("keyword");
			String page = request.getParameter("page");
			if(contentTypeId==null) { contentTypeId = ""; }
			if(keyword==null) { keyword = ""; }
			if(page==null) { page = "1"; }
			
			scri.setSearchTypeId(contentTypeId);
			scri.setKeyword(keyword);
			scri.setPage(Integer.parseInt(page));
			pm.setScri(scri);
			
			ArrayList<ContentsVo> alist = cd.ContentsList(pm);
			request.setAttribute("alist", alist);
			request.setAttribute("pm", pm);
			
			String path ="/contents/contentsList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("content.do")) {
			ContentsDao cd = new ContentsDao();
			if(request.getParameter("contentId") != null) {
				int contentId = Integer.parseInt(request.getParameter("contentId"));
			}
			SearchCriteria scri = new SearchCriteria();
			PageMaker pm = new PageMaker();
			String contentTypeId = request.getParameter("contentTypeId");
			String keyword = request.getParameter("keyword");
			String page = request.getParameter("page");
			if(contentTypeId==null) { contentTypeId = ""; }
			if(keyword==null) { keyword = ""; }
			if(page==null) { page = "1"; }
			scri.setSearchTypeId(contentTypeId);
			scri.setKeyword(keyword);
			scri.setPage(Integer.parseInt(page));
			pm.setScri(scri);

			ArrayList<ContentsVo> alist = cd.ContentsList(pm);
			String arylist = "{";
			for(int i = 0; i < alist.size(); i++) {
				if(i > 0) {
					arylist += ",";
				}
				arylist += i + ": {\"title\":\"" +alist.get(i).getTitle()+ "\",\"mapy\":\"" +alist.get(i).getMapy()+ "\",\"mapx\":\"" +alist.get(i).getMapx()+ "\"}";
			}
			arylist += "}";
			System.out.println(arylist);
			request.setAttribute("arylist", arylist);
			ContentsVo cv = cd.ContentsViewDetail(264284);	//contentId
			request.setAttribute("cv", cv);
			
			String path ="/contents/content.jsp"; 
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("contents.do")) {
			ContentsDao cd = new ContentsDao();
			if(request.getParameter("contentId") != null) {
				int contentId = Integer.parseInt(request.getParameter("contentId"));
			}
			ContentsVo cv = cd.ContentsViewDetail(126320);	//contentId
			JSONObject contentsintro = cd.ContentsViewIntro(126320, 12);
			request.setAttribute("cv", cv);
			request.setAttribute("cintro", contentsintro);
			
			String path ="/contents/contents.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		} 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
