package com.ptconnect.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.CenterService;

@Controller
public class CenterInfoViewController {
	
	@Autowired
	CenterService cs;
	
	@GetMapping(value = "centerInfoView")
	public String example(@RequestParam(name = "tnNo", required = true) int idx, Model model) {
		
		TrainerInfoDTO tio = cs.centerInfoView(idx);
		
		model.addAttribute("tio", tio);
		
		return "trainer/centerInfoView";
	}

}
