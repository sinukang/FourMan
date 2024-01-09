package com.ptconnect.myapp.persistance;

import com.ptconnect.myapp.domain.MemberDTO;

public interface MemberServiceMapper {
	public int memberInsert(MemberDTO mo);

	public int memberEmailCheck(String mbEmail);
}
