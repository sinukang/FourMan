package com.ptconnect.myapp.service;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface AdminService {
	
	public AdminDTO adminMain();

	public ArrayList<CenterInfoDTO> centerRegisterList(SearchCriteria scri);
	public ArrayList<TrainerInfoDTO> registredProductList(SearchCriteria scri);
	public ArrayList<PaymentDTO> tradedProductList(SearchCriteria scri);
	
	public int centerRegisterTotalCount();
	public int registredProductTotalCount();
	public int tradedProductTotalCount();
	
	public int centerRegist(int ctNo);
	
	public PaymentDTO tradedProductDetail(String odNo);
}
