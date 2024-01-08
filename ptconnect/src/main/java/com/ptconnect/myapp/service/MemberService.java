package com.ptconnect.myapp.service;

import com.ptconnect.myapp.domain.MemberDTO;

public interface MemberService {
	public int memberInsert(MemberDTO mo);

	public int memberEmailCheck(String mbEmail);
}
