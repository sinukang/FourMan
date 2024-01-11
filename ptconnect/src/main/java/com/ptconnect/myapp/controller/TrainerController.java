package com.ptconnect.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ptconnect.myapp.domain.PageMaker;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class TrainerController {
	
	@Autowired
	TrainerService ts;
	
	@Autowired(required = false)
	PageMaker pm;
	
	@Autowired
	private BCryptPasswordEncoder bCrptPasswordEncoderer;
	
	@GetMapping(value = "/findTrainer.do")
	public String findTrainer(HttpServletRequest request, SearchCriteria scri, Model model) {
		
		
		HttpSession session = request.getSession(false);
		scri.setMbNo(0);
		scri.setOrderBy("distance");
		int filterOnOff = 0;
		
		if(session != null) {
			if(session.getAttribute("mbNo") != null && !session.getAttribute("mbNo").equals("")) {
				scri.setMbNo((int)session.getAttribute("mbNo"));
			}
		}
		if(request.getParameter("distance") != null) {
			if(Integer.parseInt(request.getParameter("distance")) > 5000) {
				scri.setDistance(5000);
			}else if(Integer.parseInt(request.getParameter("distance")) < 500) {
				scri.setDistance(500);
			}else {
				scri.setDistance(Integer.parseInt(request.getParameter("distance")));
			}
			filterOnOff = 1;
		}else {
			scri.setDistance(1000);
		}
		if(request.getParameter("orderBy") != null) {
			String orderByTest = request.getParameter("orderBy");
			String orderByList = "distance reviewCnt tnTicket";
			if(orderByList.contains(orderByTest)) {
				scri.setOrderBy(orderByTest);
			}else {
				scri.setOrderBy("distance");
			}
			filterOnOff = 1;
		}
		
		System.out.println("scri.getKeyword() : " + scri.getKeyword());
		System.out.println("scri.getDistance() : " + scri.getDistance());
		System.out.println("scri.getOrderBy() : " + scri.getOrderBy());
		pm.setCurrentPage(scri.getPage());
		int totalCount = ts.trainerTotalCount(scri);
		System.out.println("totalCount : " + totalCount);
		pm.setScri(scri);
		pm.setTotalCount(totalCount);
		model.addAttribute("pm", pm);
		model.addAttribute("filterOnOff", filterOnOff);
		
		ArrayList<TrainerInfoDTO> tio_alist = ts.findTrainer(scri);
		model.addAttribute("tio_alist", tio_alist);
		
		return "trainer/findTrainer";
	}

}
