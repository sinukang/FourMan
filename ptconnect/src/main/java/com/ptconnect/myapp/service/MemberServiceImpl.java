package com.ptconnect.myapp.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.CenterInfoDTO;
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
		mo.setMbAddr(mo.getPostcode()+"/"+mo.getAddr()+"/"+mo.getAddrDetail());
		mo.setMbAuth("U");
		int value = msm.memberInsert(mo);
		
		return value;
	}
	@Override
	public int trainerInsert(MemberDTO mo) {
		mo.setMbAddr(mo.getPostcode()+"/"+mo.getAddr()+"/"+mo.getAddrDetail());
		mo.setMbAuth("T");
		int value = msm.memberInsert(mo);
		
		return value;
	}
	@Override
	public int centerInsert(CenterInfoDTO cio) {
		cio.setMbAddr(cio.getPostcode()+"/"+cio.getAddr()+"/"+cio.getAddrDetail());
		cio.setMbAuth("C");
		int value = msm.centerInsert(cio);
		value += msm.centerInfoInsert(cio);
		
		return value;
	}

	@Override
	public int memberEmailCheck(String mbEmail) {
		int value = msm.memberEmailCheck(mbEmail);
		
		
		return value;
	}
	
	@Override
	public MemberDTO memberLogin(String mbEmail) {
		
		MemberDTO mo = msm.memberLogin(mbEmail);
		
		return mo;
	}
}
