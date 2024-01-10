package com.ptconnect.myapp.service;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.MemberDTO;

public interface MemberService {
	public int memberInsert(MemberDTO mo);
	public int trainerInsert(MemberDTO mo);
	public int centerInsert(CenterInfoDTO cio);
	public int memberEmailCheck(String mbEmail);
}
