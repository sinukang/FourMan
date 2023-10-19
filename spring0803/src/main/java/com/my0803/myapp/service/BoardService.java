package com.my0803.myapp.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.my0803.myapp.domain.BoardVo;
import com.my0803.myapp.domain.MemberVo;
import com.my0803.myapp.domain.SearchCriteria;

public interface BoardService {
	//게시판 메서드를 정의해놓는 인터페이스 
	public int boardInsert(BoardVo bv);
	
	public ArrayList<BoardVo> boardSelectAll(SearchCriteria  scri);
	
	public int boardTotalCount(SearchCriteria  scri);
	
	
	public BoardVo boardSelectOne(int bidx);

	public int boardCntUpdate(int bidx);
	
	 public int boardModify(BoardVo bv);
	
	 
	 public int boardDelete(int bidx,String pwd);
	 
	 public int boardReply(BoardVo bv);
	
}
