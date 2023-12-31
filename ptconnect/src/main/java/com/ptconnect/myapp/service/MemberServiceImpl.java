package com.ptconnect.myapp.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.MemberDTO;
import com.ptconnect.myapp.persistance.MemberServiceMapper;


@Service
public class MemberServiceImpl implements MemberService{

	private MemberServiceMapper msm;
	
	@Autowired
	public MemberServiceImpl(SqlSession sqlSession) {
		this.msm = sqlSession.getMapper(MemberServiceMapper.class);
	}

	@Override
	public int memberInsert(MemberDTO mo) {
		int value = msm.memberInsert(mo);
		return value;
	}
}
