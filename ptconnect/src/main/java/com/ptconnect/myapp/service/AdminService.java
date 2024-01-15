package com.ptconnect.myapp.service;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PageMaker;

public interface AdminService {
	
	public AdminDTO adminMain();

	public ArrayList<CenterInfoDTO> centerRegisterList(PageMaker pm);
	public int centerRegisterTotalCount();
}
