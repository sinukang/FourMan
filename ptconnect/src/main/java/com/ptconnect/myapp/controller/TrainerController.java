package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/trainer")
public class TrainerController {
	
	@GetMapping(value = "/findTrainer.do")
	public String findTrainer() {
		
		
		return "trainer/findTrainer";
	}

}
