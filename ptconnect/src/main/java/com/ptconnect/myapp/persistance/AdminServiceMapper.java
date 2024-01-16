package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface AdminServiceMapper {
	
	public AdminDTO adminMain();
	public ArrayList<CenterInfoDTO> centerRegisterList(SearchCriteria scri);
	public ArrayList<TrainerInfoDTO> registredProductList(SearchCriteria scri);
	public ArrayList<PaymentDTO> tradedProductList(SearchCriteria scri);
	
	public int centerRegisterTotalCount();
	public int registredProductTotalCount();
	public int tradedProductTotalCount();
	
	public int centerRegist(@Param("ctNo")int ctNo);
	
	public PaymentDTO tradedProductDetail(@Param("odNo")String odNo);
}
