package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class TrainerInfoModifyController {
	
	@Autowired
	private TrainerService ts;	
	
	@RequestMapping(value = "trainerInfoModify", method = RequestMethod.GET)
	public String trainerInfoModify() {
		return "trainerMypage/trainerInfoModify";
	}
	
	@RequestMapping(value = "trainerInfoModifyAction", method = RequestMethod.POST)
	public String trainerInfoInsertAction(TrainerInfoDTO tio, FileDetailDTO fdo, HttpSession session) throws Exception {	
		
//		파일업로드 추가 예정
		
		int mbNo = Integer.parseInt(session.getAttribute("mbNo").toString());
		System.out.println("mbNo : " + mbNo);
		tio.setMbNo(mbNo);
		
		int value = ts.trainerInsert(tio);
		System.out.println("value : " + value);
		
		int value2 = ts.fileInsert(fdo);
		System.out.println("value2 : " + value2);
		
		int value3 = ts.trainerInfoUpdate(tio);
		System.out.println("value3 : " + value3);
		
		return "redirect:/";
	}

}
