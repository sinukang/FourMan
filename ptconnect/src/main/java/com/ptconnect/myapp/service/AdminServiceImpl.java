package com.ptconnect.myapp.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
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
	@Override
	public ArrayList<CenterInfoDTO> centerRegisterList(SearchCriteria scri) {
		int value = (scri.getPage()-1)*scri.getPerPageNum();
		scri.setPage(value);
		ArrayList<CenterInfoDTO> cList = asm.centerRegisterList(scri);
		
		
		return cList;
	}
	@Override
	public ArrayList<PaymentDTO> tradedProductList(SearchCriteria scri) {
		int value = (scri.getPage()-1)*scri.getPerPageNum();
		scri.setPage(value);
		ArrayList<PaymentDTO> oList = asm.tradedProductList(scri);
		
		
		return oList;
	}
	@Override
	public int centerRegisterTotalCount() {
		
		int value = asm.centerRegisterTotalCount();
		
		
		return value;
	}
	@Override
	public ArrayList<TrainerInfoDTO> registredProductList(SearchCriteria scri) {
		int value = (scri.getPage()-1)*scri.getPerPageNum();
		scri.setPage(value);
		ArrayList<TrainerInfoDTO> tList = asm.registredProductList(scri);
		
		
		return tList;
	}
	@Override
	public int registredProductTotalCount() {

		int value = asm.registredProductTotalCount();
		
		
		return value;
	}
	@Override
	public int tradedProductTotalCount() {
		
		int value = asm.tradedProductTotalCount();
		
		
		return value;
	}
	@Override
	public int centerRegist(int ctNo) {
		
		int value = asm.centerRegist(ctNo);
		
		
		return value;
	}
	@Override
	public PaymentDTO tradedProductDetail(String odNo) {
		
		PaymentDTO po = asm.tradedProductDetail(odNo);
		
		
		return po;
	}
}
