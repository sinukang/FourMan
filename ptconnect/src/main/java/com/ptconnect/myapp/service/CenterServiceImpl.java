package com.ptconnect.myapp.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.persistance.CenterServiceMapper;

@Service
public class CenterServiceImpl implements CenterService{

	private CenterServiceMapper csm;
	
	@Autowired
	public CenterServiceImpl(SqlSession sqlSession) {
		this.csm = sqlSession.getMapper(CenterServiceMapper.class);
	}

	@Override
	public TrainerInfoDTO centerInfoView(int tnNo) {
		
		TrainerInfoDTO tio = csm.centerInfoView(tnNo);
		
		return tio;
	}
	
	@Override
	public int centerModify(CenterInfoDTO cio) {
	
		int value = csm.centerModify(cio);
		
		return value;
	}

	@Override
	public CenterInfoDTO centerSelectOne(int mbNo) {
		
		CenterInfoDTO cio = csm.centerSelectOne(mbNo);
		
		return cio;
	}
	
	
}