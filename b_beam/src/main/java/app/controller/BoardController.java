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

import app.dao.BoardDao;
import app.dao.CommentDao;
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
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
