package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorMessageController {
	@RequestMapping(value = "error/loginAuthError", method = RequestMethod.GET)
	public String loginAuthError() {
		return "error/loginAuthError";
	}
	@RequestMapping(value = "error/authError", method = RequestMethod.GET)
	public String authError() {
		return "error/authError";
	}

}
