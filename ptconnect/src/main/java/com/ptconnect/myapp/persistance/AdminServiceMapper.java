package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PageMaker;

public interface AdminServiceMapper {
	
	public AdminDTO adminMain();
	
	public ArrayList<CenterInfoDTO> centerRegisterList(PageMaker pm);
	public int centerRegisterTotalCount();
}
