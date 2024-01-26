package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class MainController {
	
	@Autowired
	TrainerService ts;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(HttpServletRequest request, SearchCriteria scri, Model model) {
		
		HttpSession session = request.getSession(false);
		
		
		ArrayList<TrainerInfoDTO> tio_alist = ts.trainerSelectAll();
		
		for(int i = 0; i < tio_alist.size(); i++) {
			tio_alist.get(i);
		}
		
		model.addAttribute("tio_alist", tio_alist);
		
		return "main/index";
	}

}
