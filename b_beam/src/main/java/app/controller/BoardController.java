package app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
			if(session.getAttribute("mbno") != null) {	//로그인 했으면 mbno에 세션의 mbno를 할당
				mbno = (int)session.getAttribute("mbno");
			}
			
			BoardDao bd = new BoardDao();
			ArrayList<BoardVo> bv_alist = bd.galleryList(mbno);
			
			request.setAttribute("bv_alist", bv_alist);
			
			String path ="/board/galleryList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		}else if (location.equals("galleryContents.do")) {
			
			HttpSession session = request.getSession(false);
			int mbno = 0;
			if(session != null) {
				mbno = (int)session.getAttribute("mbno");
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
			
			String savePath="D:\\dev0803\\git_e\\b_beam\\b_beam\\src\\main\\webapp\\source\\galleryImages";
			int sizeLimit = 15*1024*1024;
			String dataTy = "UTF-8";
			
			//파일이름 중복
			DefaultFileRenamePolicy drp = null;
			drp = new DefaultFileRenamePolicy();
			
			//파일과 데이터 넘겨받는 통신요청 객체
			MultipartRequest multi = null;
			multi = new MultipartRequest(request,savePath,sizeLimit,dataTy,drp);
			
			String bdtitle = multi.getParameter("bdtitle");
			String bdcont = multi.getParameter("bdcont");
			
			//열거자에 파일이름 담는다
			Enumeration files = multi.getFileNames();
			
			//파일객체 꺼냄
			String file = (String)files.nextElement();
			
			//파일 이름 추출
			String fileName = multi.getFilesystemName(file);
			
			//원래 파일 이름 추출
			String originFileName = multi.getOriginalFileName(file);
			
			int mbno = 0;
			HttpSession session = request.getSession();
			mbno = (int)session.getAttribute("mbno");
			
			BoardVo bv = new BoardVo();
			bv.setMbno(mbno);
			bv.setBdtitle(bdtitle);
			bv.setBdcont(bdcont);
			
			BdgalleryVo bgv = new BdgalleryVo();
			bgv.setBdglname(fileName);
			
			System.out.println("File Info:");
			System.out.println("bdtitle: " + bdtitle);
			System.out.println("bdcont: " + bdcont);
			System.out.println("fileName: " + fileName);
			System.out.println("originFileName: " + originFileName);
			
			BoardDao2 bd2 = new BoardDao2();
			int value = bd2.boardInsert(bv, bgv);
			
			System.out.println("Value: " + value);
			
			if(value ==0) {	
				String path = request.getContextPath()+"/board/galleryWrite.do";
				response.sendRedirect(path);
				
			}else {
				String path = request.getContextPath()+"/board/galleryList.do";
				response.sendRedirect(path);
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
