package com.my0803.myapp.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.my0803.myapp.domain.BoardVo;
import com.my0803.myapp.domain.MemberVo;
import com.my0803.myapp.domain.SearchCriteria;
import com.my0803.myapp.persistance.BoardService_Mapper;

@Service
public class BoardServiceImpl  implements BoardService{

	private BoardService_Mapper bsm;
	
	@Autowired  
	public BoardServiceImpl(SqlSession sqlSession) {
		this.bsm = sqlSession.getMapper(BoardService_Mapper.class);		
	}

	@Override
	public int boardInsert(BoardVo bv) {
		int value = bsm.boardInsert(bv);
		int bidx = bv.getBidx();
	//	System.out.println("입력후의 값은 ?" + bidx);
		bsm.boardOriginBidxUpdate(bv);
		return value;
	}

	@Override
	public ArrayList<BoardVo> boardSelectAll(SearchCriteria scri) {
		
		int value = (scri.getPage()-1)*15;		
		scri.setPage(value);		
		ArrayList<BoardVo> alist = bsm.boardSelectAll(scri);
		
		return alist;
	}
	
	@Override
	public int  boardTotalCount(SearchCriteria scri) {
		
		int value = bsm.boardTotalCount(scri);		
		
		return value;
	}

	@Override
	public BoardVo boardSelectOne(int bidx) {

		BoardVo bv = null;
		
		bv = bsm.boardSelectOne(bidx);
		return bv;
	}

	@Override
	public int boardCntUpdate(int bidx) {

		int value = bsm.boardCntUpdate(bidx);
		
		return value;
	}


	@Override
	public int boardModify(BoardVo bv) {
	    
		int value = bsm.boardModify(bv);
	    return value;
	}

	@Override
	public int boardDelete(int bidx, String pwd) {
		
		String bidxs = bidx + "";
		HashMap<String,String> hm = new HashMap<String,String>();
		
		hm.put("bidx", bidxs);
		hm.put("pwd", pwd);
		
		int value = bsm.boardDelete(hm);
		
		return value;
	}
	
	
	//@Transactional  //하나의 작업단위로 묶어서 둘중 하나라도 실행이안되면 처리가 안됨 
	@Override
	public int boardReply(BoardVo bv) {
		
		
		bsm.boardReplyUpdate(bv);
		int value =bsm.boardReplyInsert(bv); // 0아니면 1
		//int bidx = bv.getBidx(); //마이바티스에서 받아온값
		
		
		return value;
	}

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 
}
