package com.ptconnect.myapp.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.persistance.AdminServiceMapper;

@Service
public class AdminServiceImpl implements AdminService{

	private AdminServiceMapper asm;
	
	@Autowired
	public AdminServiceImpl(SqlSession sqlSession) {
		this.asm = sqlSession.getMapper(AdminServiceMapper.class);
	}

	@Override
	public AdminDTO adminMain() {
		
		AdminDTO ao = new AdminDTO();
		
		return ao;
	}
}
