package app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import app.dao.ReviewDao;
import app.domain.ReviewVo;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/ReviewController")
public class ReviewController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    private String location;
    
    public ReviewController(String location) {
		this.location = location;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("reviewList.do")) {

	        HttpSession session = request.getSession();
	        String contentid = request.getParameter("contentid");
	        int mbno = 0;
	        if(session.getAttribute("mbno") != null) {
	        	mbno = (int) session.getAttribute("mbno");
	        }
	        JSONArray result = new JSONArray();
	        ReviewDao rd = new ReviewDao();
	        ArrayList<ReviewVo> alist = rd.reviewList(mbno,contentid);
	        for(ReviewVo rv : alist) {
	        	JSONObject jo = new JSONObject();
	        	jo.put("name", rv.getMbname());
	        	jo.put("score", rv.getRvrate());
	        	jo.put("cont", rv.getRvcont());
	        	jo.put("img", rv.getRvglname());
	        	jo.put("date", rv.getRvdate());
	        	jo.put("likeYN", rv.getRvLikeYN());
	        	jo.put("likeCnt", rv.getRvLikeCnt());
	        	result.add(jo);
	        }

	        PrintWriter out = response.getWriter();
			out.print(result.toJSONString());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
