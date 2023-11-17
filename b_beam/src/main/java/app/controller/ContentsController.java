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

import app.dao.BookmarkDao;
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

	        HttpSession session = request.getSession();
			String contenttypeid="";
			String keyword="";
			String page="1";
			if(request.getParameter("contenttypeid")!=null)	{
				contenttypeid=request.getParameter("contenttypeid");
			}
			if(request.getParameter("keyword")!=null) {
				keyword=request.getParameter("keyword");
			}
			if(request.getParameter("page")!=null){
				page=request.getParameter("page");
			}

			
			PageMaker pm = new PageMaker();
			SearchCriteria sc = new SearchCriteria();
			sc.setContentsTypeId(contenttypeid);
			sc.setKeyword(keyword);
			sc.setPage(Integer.parseInt(page));
			
			pm.setScri(sc);
			ContentsDao cd = new ContentsDao();
			

			ArrayList<ContentsVo> aryList = new ArrayList<ContentsVo>();
			ArrayList<String> contentidList = new ArrayList<String>();
			JSONObject body = cd.ContentsList(pm);
			JSONObject items = (JSONObject)body.get("items");
			int totalCount = Integer.parseInt(body.get("totalCount").toString());
			JSONArray item = (JSONArray)items.get("item");
			System.out.println(totalCount);
			pm.setTotalCount(totalCount);
			for(int i = 0; i < item.size(); i++) {
				ContentsVo cv = new ContentsVo();
				JSONObject contents = (JSONObject)item.get(i);
				contentidList.add(contents.get("contentid").toString());
				cv.setContentid(contents.get("contentid").toString());
				cv.setContenttypeid(contents.get("contenttypeid").toString());
				cv.setContentdate(contents.get("createdtime").toString());
				cv.setFirstimage(contents.get("firstimage").toString());
				cv.setFirstimage2(contents.get("firstimage2").toString());
				cv.setTitle(contents.get("title").toString());
				cv.setMapx(contents.get("mapx").toString());
				cv.setMapy(contents.get("mapy").toString());
				cv.setContentLikeYN("N");
				aryList.add(cv);
			}
			if(session.getAttribute("mbno")!=null&&!session.getAttribute("mbno").equals("")) {
				BookmarkDao bmd= new BookmarkDao();
				String[] myBmList=bmd.getContentsListBookmark((int)session.getAttribute("mbno"), contentidList);
////				request.setAttribute("myBmList", myBmList);
				for(int i = 0; i < aryList.size(); i++) {
					for(int j = 0; j < myBmList.length;j++) {
						if(aryList.get(i).getContentid().equals(myBmList[j])) {
							ContentsVo temCv = aryList.get(i);
							temCv.setContentLikeYN("Y");
							aryList.set(i, temCv);
						}
					}
					
				}
			}
			
			request.setAttribute("aryList", aryList);
			request.setAttribute("pm", pm);
			
			
			
			String path ="/contents/contentsList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("getLike.do")) {
			String contentid = request.getParameter("contentidList");
			System.out.println("contentList : " + request.getParameterValues("contentidList"));
			PrintWriter out = response.getWriter();
			out.print("{\"value\":\"통신성공\"}");
		}else if (location.equals("contentsRanking.do")) {
			
			String path ="/contents/contentsRanking.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("bookmarkedContents.do")) {
			
			String path ="/contents/bookmarkedContents.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}else if (location.equals("contentsDetail.do")) {
			
			String path ="/contents/contentsDetail.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
