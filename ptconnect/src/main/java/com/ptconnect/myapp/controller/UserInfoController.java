package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.MemberDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class UserInfoController {
	
	@Autowired
	TrainerService ts;
	
	@RequestMapping(value = "userInfo", method = RequestMethod.GET)
	public String userInfo(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(false);
		Integer mbNo = (Integer) session.getAttribute("mbNo");
		System.out.println("mbNo : " + mbNo);
		
		if (mbNo != null) {
			MemberDTO mo = ts.memberSelectOne(mbNo);
			System.out.println("mbName :" + mo.getMbName());
			model.addAttribute("mo",mo);
			}
		return "userMypage/userInfo";
	}

}
