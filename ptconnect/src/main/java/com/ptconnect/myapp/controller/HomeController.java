package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	TrainerService ts;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		ArrayList<TrainerInfoDTO> tio_alist = ts.trainerSelectAll();
		
		int countMember = ts.countMember();
		int countTrainer = ts.countTrainer();
		int countOrder = ts.countOrder();
		
		model.addAttribute("tio_alist", tio_alist);
		model.addAttribute("countMember", countMember);
		model.addAttribute("countTrainer", countTrainer);
		model.addAttribute("countOrder", countOrder);
		
		return "index";
	}
	
}
