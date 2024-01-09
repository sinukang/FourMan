package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ptconnect.myapp.domain.PageMaker;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
@RequestMapping(value = "/trainer")
public class TrainerController {
	
	@Autowired
	TrainerService ts;
	
	@Autowired(required = false)
	PageMaker pm;
	
	@GetMapping(value = "/findTrainer.do")
	public String findTrainer(HttpServletRequest request, SearchCriteria scri, Model model) {
		
		scri.setMbNo(0);
		scri.setDistance(3000);
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			if(session.getAttribute("mbNo") != null) {
				scri.setMbNo((int)session.getAttribute("mbNo"));
			}
		}
		if(request.getParameter("distance") != null) {
			scri.setDistance(Integer.parseInt(request.getParameter("distance")));
		}
		
		pm.setCurrentPage(scri.getPage());
		int totalCount = ts.trainerTotalCount(scri);
		pm.setScri(scri);
		pm.setTotalCount(totalCount);
		model.addAttribute("pm", pm);
		
		ArrayList<TrainerInfoDTO> tio_alist = ts.findTrainer(scri);
		model.addAttribute("tio_alist", tio_alist);
		
		return "trainer/findTrainer";
	}

}
