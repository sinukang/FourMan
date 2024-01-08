package com.ptconnect.myapp.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private int mbNo;
	private String mbAuth;
	private String mbEmail;
	private String mbPwd;
	private String mbName;
	private int mbPhone;
	private String mbAddr;
	private String mbDate;
}
