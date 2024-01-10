package com.ptconnect.myapp.persistance;

import org.apache.ibatis.annotations.Param;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.MemberDTO;

public interface MemberServiceMapper {
	public int memberInsert(MemberDTO mo);
	public int centerInsert(CenterInfoDTO cio);
	public int centerInfoInsert(CenterInfoDTO cio);
	public int memberEmailCheck(String mbEmail);
	public MemberDTO memberLogin(@Param("mbEmail")String mbEmail);
}
