package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.ptconnect.myapp.domain.AdminDTO;
import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.PageMaker;

public interface AdminServiceMapper {
	
	public AdminDTO adminMain();
	public ArrayList<CenterInfoDTO> centerRegisterList(PageMaker pm);
	public int centerRegisterTotalCount();
	public int centerRegist(@Param("ctNo")int ctNo);
}
