package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping(value = "adminMain.do")
	public String adminMain() {
		
		
		return "admin/adminMain";
	}
	

}
