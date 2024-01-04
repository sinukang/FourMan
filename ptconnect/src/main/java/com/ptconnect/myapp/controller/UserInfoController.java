package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserInfoController {
	@RequestMapping(value = "userInfo", method = RequestMethod.GET)
	public String example() {
		return "userMypage/userInfo";
	}

}
