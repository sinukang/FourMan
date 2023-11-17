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
			
			BoardDao bd = new BoardDao();
			ArrayList<BoardVo> bv_alist = bd.galleryList(mbno);
			
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
			int bdno = (int)request.getAttribute("bdno");
			
			BoardDao bd = new BoardDao();
			BoardVo bv = new BoardVo();
			bv = bd.boardSelectOne(mbno, bdno);
			
			CommentDao cd = new CommentDao();
			ArrayList<CommentVo> cv_alist = new ArrayList<CommentVo>();
			cv_alist = cd.commentList(bdno);
			
			request.setAttribute("bv", bv);
			request.setAttribute("cv_alist", cv_alist);
			
			String path ="/board/galleryContents.jsp";
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
			
			String savePath = "D:\\dev0803\\git_e\\b_beam\\b_beam\\src\\main\\webapp\\source\\galleryImages";

			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);

			List<FileItem> items;

			try {
				items = upload.parseRequest(new ServletRequestContext(request));

				List<String> bdglnameList = new ArrayList<>();
				
				// 제목, 내용 변수 미리 선언
				String bdtitle = null;
				String bdcont = null;
			
				for (FileItem item : items) {
					if (item.isFormField()) {
						
						// 제목과 내용을 받아옴
						if ("bdtitle".equals(item.getFieldName())) {
							bdtitle = item.getString("UTF-8");
						} else if ("bdcont".equals(item.getFieldName())) {
							bdcont = item.getString("UTF-8");
						}
					} else {
						// 다중파일 리스트처리
						try {
							String fileName = item.getName();
							File destFile = new File(savePath, fileName);
							item.write(destFile);
				
							//bdglnameList에 filename을 추가
							bdglnameList.add(fileName);
							System.out.println("Uploaded file: " + fileName);
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
		}else if (location.equals("testjsp.do")) {
			
			HttpSession session = request.getSession(false);
			
			int mbno = 0;
			if(session.getAttribute("mbno") != null) {	//로그인 했으면 mbno에 세션의 mbno를 할당
				mbno = (int)session.getAttribute("mbno");
			}
			
			System.out.println(mbno);
			
			BoardDao bd = new BoardDao();
			ArrayList<BoardVo> bv_alist = bd.galleryList(mbno);
			
			request.setAttribute("bv_alist", bv_alist);
			
			String path ="/board/testjsp.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
