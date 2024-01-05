package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
@RequestMapping(value = "/trainerMypage")
public class TrainerInfoModifyController {
	
	@Autowired
	private TrainerService ts;	
	
	@RequestMapping(value = "/trainerInfoModify.do", method = RequestMethod.GET)
	public String trainerInfoModify() {
		return "trainerMypage/trainerInfoModify";
	}
	
	@RequestMapping(value = "/trainerInfoModifyAction.do", method = RequestMethod.POST)
	public String trainerInfoModifyAction(TrainerInfoDTO tio, HttpSession session) throws Exception {	
		
//		파일업로드 추가 예정
		
		int mbNo = Integer.parseInt(session.getAttribute("mbNo").toString());
		System.out.println("mbNo : " + mbNo);
		tio.setMbNo(mbNo);
		
		int value = ts.trainerInsert(tio);
		System.out.println("value : " + value);
		
		return "redirect:/";
	}

}
