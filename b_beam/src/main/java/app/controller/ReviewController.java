package app.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import app.dao.BoardDao2;
import app.dao.ReviewDao;
import app.domain.BdgalleryVo;
import app.domain.BoardVo;
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
		}else if (location.equals("reviewInsert.do")) {

	        HttpSession session = request.getSession();
	        String contentid = request.getParameter("contentid");
	        String rating = request.getParameter("rating");
	        String cont = "";
	        int mbno = 0;
	        if(session.getAttribute("mbno") != null) {
	        	mbno = (int) session.getAttribute("mbno");
	        }
	        if(request.getParameter("cont")!=null&&!request.getParameter("cont").equals("")) {
	        	cont = request.getParameter("cont");
	        }
	        ReviewVo rv = new ReviewVo();
	        rv.setContentid(contentid);
	        rv.setRvrate(rating);
	        rv.setRvcont(cont);
	        rv.setMbno(mbno);
	        
	        ReviewDao rd = new ReviewDao();
	        
	        int value = rd.reviewInsert(rv);
        	JSONObject json = new JSONObject();
        	json.put("value",value);
	        PrintWriter out = response.getWriter();
			out.print(json.toJSONString());
		}else if (location.equals("ImageInsert.do")) {
			String savePath = request.getServletContext().getRealPath("/source/reviewImages");
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory(); // 업로드된 파일을 디스크에 저장하는데 사용되는 팩토리 객체
			ServletFileUpload upload = new ServletFileUpload(fileItemFactory); // 실제 파일 업로드를 처리하는데 사용되는 객체


			try {
				List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));	// 업로드 요청을 파싱해서 FileItem 객체의 리스트로 반환
				
				
				// 변수 리스트 초기화
				List<String> rvglnameList = new ArrayList<>();
								
				for (FileItem item : items) {
					// 다중파일 리스트처리
					try {
						String fileName = item.getName();		// FileItem에서 업로드된 파일 이름을 가져옴
						File destFile = new File(savePath, fileName);	// 저장할 경로와 파일명을 지정하는 객체생성
						item.write(destFile);
						
						//bdglnameList에 filename을 추가
						rvglnameList.add(fileName);
						
						//System.out.println("Uploaded file: " + fileName);
						//System.out.println("destFile: " + destFile);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
					
				System.out.println(rvglnameList.get(0)); 
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
