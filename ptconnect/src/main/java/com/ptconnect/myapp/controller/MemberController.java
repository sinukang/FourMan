package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@RequestMapping(value = "joinUser", method = RequestMethod.GET)
	public String joinUser() {
		return "member/joinUser";
	}
	
	@RequestMapping(value = "joinTrainer", method = RequestMethod.GET)
	public String joinTrainer() {
		return "member/joinTrainer";
	}
	
	@RequestMapping(value = "joinCenter", method = RequestMethod.GET)
	public String joinCenter() {
		return "member/joinCenter";
	}
	
	@RequestMapping(value = "idFind", method = RequestMethod.GET)
	public String idFind() {
		return "member/idFind";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "pwdFind", method = RequestMethod.GET)
	public String pwdFind() {
		return "member/pwdFind";
	}

}
