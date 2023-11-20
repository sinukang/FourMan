package app.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
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

import app.dao.BoardDao;
import app.dao.BoardDao2;
import app.dao.CommentDao;
import app.domain.BdgalleryVo;
import app.domain.BoardVo;
import app.domain.CommentVo;
import app.domain.PageMaker;
import app.domain.SearchCriteria;

/**
 * Servlet implementation class ContentsController
 */
@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private String location;
	
	public BoardController(String location) {
		this.location = location;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (location.equals("board.do")) {
			
			String path ="/board/board.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryList.do")) {
			
			HttpSession session = request.getSession(false);
			
			int mbno = 0;
			if(session != null) {
				if(session.getAttribute("mbno") != null) {	//로그인 했으면 mbno에 세션의 mbno를 할당
					mbno = (int)session.getAttribute("mbno");
				}
			}
			SearchCriteria scri = new SearchCriteria();
			
			String keyword = request.getParameter("keyword");
			if(keyword==null) { keyword = "";}
			String page = request.getParameter("page");
			if (page == null) { page = "1";}
			
			scri.setPage(Integer.parseInt(page));
			scri.setKeyword(keyword);
			
			PageMaker pm = new PageMaker();
			pm.setScri(scri);
			
			BoardDao bd = new BoardDao();
			ArrayList<BoardVo> bv_alist = bd.galleryList(mbno, scri);
			pm.setTotalCount(bd.boardTotalCount(scri));
			
			request.setAttribute("pm", pm);
			request.setAttribute("bv_alist", bv_alist);
			
			String path ="/board/galleryList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryContents.do")) {
			
//			HttpSession session = request.getSession(false);
//			int mbno = 0;
//			if(session != null) {
//				if(session.getAttribute("mbno") != null) {	//로그인 했으면 mbno에 세션의 mbno를 할당
//					mbno = (int)session.getAttribute("mbno");
//				}
//			}
//			int bdno = (int)request.getAttribute("bdno");
//			
//			BoardDao bd = new BoardDao();
//			BoardVo bv = new BoardVo();
//			bv = bd.boardSelectOne(mbno, bdno);
//			
//			CommentDao cd = new CommentDao();
//			ArrayList<CommentVo> cv_alist = new ArrayList<CommentVo>();
//			cv_alist = cd.commentList(bdno);
//			
//			request.setAttribute("bv", bv);
//			request.setAttribute("cv_alist", cv_alist);
			
			String path ="/board/galleryContents.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryContentsInclude.do")) {
			
			HttpSession session = request.getSession(false);
			
			int mbno = 0;
			if(session != null) {
				if(session.getAttribute("mbno") != null) {	//로그인 했으면 mbno에 세션의 mbno를 할당
					mbno = (int)session.getAttribute("mbno");
				}
			}
			int bdno = Integer.parseInt(request.getParameter("bdno"));
			BoardDao bd = new BoardDao();
			BoardVo bv = new BoardVo();
			bv = bd.boardSelectOne(mbno, bdno);
			
			CommentDao cd = new CommentDao();
			ArrayList<CommentVo> cv_alist = new ArrayList<CommentVo>();
			cv_alist = cd.commentList(bdno);
			
			request.setAttribute("bv", bv);
			request.setAttribute("cv_alist", cv_alist);
			
			String path ="/board/galleryContentsInclude.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryWrite.do")) {
			
			String path ="/board/galleryWrite.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryModify.do")) {
			
			String path ="/board/galleryModify.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("noticeList.do")) {
			
			String path ="/board/noticeList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("noticeWrite.do")) {
			
			String path ="/board/noticeWrite.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("notice.do")) {
			
			String path ="/board/notice.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("FAQ.do")) {
			
			String path ="/board/FAQ.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("FAQWrite.do")) {
			
			String path ="/board/FAQWrite.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryWriteAction.do")) {
			
			// 서블릿이 실행되는 웹 어플리케이션의 루트 디렉토리
			String appPath = request.getServletContext().getRealPath("/");

			// 상대 경로
			String relativePath = "/source/galleryImages";

			// 최종적인 저장 경로
			String savePath = appPath + relativePath;
			
			//String savePath = "D:\\dev0803\\git_e\\b_beam\\b_beam\\src\\main\\webapp\\source\\galleryImages";  //절대경로
			
			// Apache Commons FileUpload라이브러리를 사용해서 다중파일업로드 구현
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory(); // 업로드된 파일을 디스크에 저장하는데 사용되는 팩토리 객체
			ServletFileUpload upload = new ServletFileUpload(fileItemFactory); // 실제 파일 업로드를 처리하는데 사용되는 객체


			try {
				List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));	// 업로드 요청을 파싱해서 FileItem 객체의 리스트로 반환
				
				
				// 변수 리스트 초기화
				List<String> bdglnameList = new ArrayList<>();
				
				String bdtitle = null;
				String bdcont = null;
			
				for (FileItem item : items) {
					if (item.isFormField()) {	//파일이 아닌경우
						
						// 제목과 내용을 받아옴
						if ("bdtitle".equals(item.getFieldName())) {
							bdtitle = item.getString("UTF-8");
						} else if ("bdcont".equals(item.getFieldName())) {
							bdcont = item.getString("UTF-8");
						}
					} else {		// 파일인 경우
						// 다중파일 리스트처리
						try {
							String fileName = item.getName();		// FileItem에서 업로드된 파일 이름을 가져옴
							File destFile = new File(savePath, fileName);	// 저장할 경로와 파일명을 지정하는 객체생성
							item.write(destFile);
							
							//bdglnameList에 filename을 추가
							bdglnameList.add(fileName);
							
							System.out.println("Uploaded file: " + fileName);
							System.out.println("destFile: " + destFile);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
				int mbno = 0;
				HttpSession session = request.getSession();
				mbno = (int) session.getAttribute("mbno");
	
				BoardVo bv = new BoardVo();
				bv.setMbno(mbno);
				bv.setBdtitle(bdtitle);
				bv.setBdcont(bdcont);
	
				BdgalleryVo bgv = new BdgalleryVo();
				bgv.setBdglnameList(bdglnameList);
	
				BoardDao2 bd2 = new BoardDao2();
				int value = bd2.boardInsert(bv, bgv);
	
				System.out.println("Value: " + value);
	
				if (value == 0) {
					String path = request.getContextPath() + "/board/galleryWrite.do";
					response.sendRedirect(path);
				} else {
					String path = request.getContextPath() + "/board/galleryList.do";
					response.sendRedirect(path);
				}
	
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
