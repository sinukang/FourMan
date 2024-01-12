package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrainerInfoViewController {
	@RequestMapping(value = "trainerInfoView", method = RequestMethod.GET)
	public String example(HttpSession session) {
		
		int mbNo = 1; 
		System.out.println("mbNo : " + mbNo);
		 
		int tnNo = 71;
		System.out.println("tnNo : " + tnNo);
		 
		session.setAttribute("mbNo", mbNo);
		session.setAttribute("tnNo", tnNo);
		
		return "trainer/trainerInfoView";
	}

}
