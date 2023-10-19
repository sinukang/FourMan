package com.my0803.myapp.service;

import java.util.ArrayList;

import com.my0803.myapp.domain.MemberVo;

public interface MemberService {
	
	//선언하는곳 
	public int memberInsert(MemberVo mv);

	
	public MemberVo memberLogin(String memberId,String memberPwd);
	
	public MemberVo memberLogin(String memberId);
	
	public int memberIdCheck(String memberId);
	
	public ArrayList<MemberVo> memberList();
	
	
	
	
}
