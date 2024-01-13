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
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.PageMaker;
import com.ptconnect.myapp.domain.ReviewDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class TrainerController {
	
	@Autowired
	TrainerService ts;
	
	@Autowired(required = false)
	PageMaker pm;
	
	
	@GetMapping(value = "/findTrainer")
	public String findTrainer(HttpServletRequest request, SearchCriteria scri, Model model) {
		
		
		HttpSession session = request.getSession(false);
		int filterOnOff = 0;	//검색 or 필터 사용시 화면에 필터 펼쳐짐 상태 1:펼쳐짐, 0:졉혀짐
		String uAddr = null;	//로그인 한 유저 주소내용 전체에서 " "로 잘라서 n번째 주소값만 가져와 담기 위한 변수
		String[] uAddrReturn = null;
		
		//세션이 null이 아니면 그리고 세션의 mbNo가 널이 아니고 빈 문자열이 아니면 값 할당
		if(session != null) {
			if(session.getAttribute("mbNo") != null && !session.getAttribute("mbNo").equals("")) {
				scri.setMbNo((int)session.getAttribute("mbNo"));
				scri.setMbMapY((double)session.getAttribute("mbMapY"));
				scri.setMbMapX((double)session.getAttribute("mbMapX"));
				uAddr = ts.loginUserAddr((int)session.getAttribute("mbNo"));
				uAddrReturn = uAddr.split(" ");
				uAddr = uAddrReturn[2];	//예시 
			}
		}
		
		//검색 키워드가 없거나 공백이면 null할당
		if(scri.getKeyword() == null || scri.getKeyword().equals("") || scri.getKeyword().equals(" ")) {
			scri.setKeyword(null);
		}
		
		//반경이 null이 아니면, 설정한 최대 최소 범위를 초과한 값을 누가 억지로 넣으면 범위 조정
		//기본값으로 1000(1km) 설정
		if(request.getParameter("distance") != null) {
			if(Integer.parseInt(request.getParameter("distance")) > 5000) {
				scri.setDistance(5000);
				filterOnOff = 1;
			}else if(Integer.parseInt(request.getParameter("distance")) < 500) {
				scri.setDistance(500);
				filterOnOff = 1;
			}else {
				scri.setDistance(Integer.parseInt(request.getParameter("distance")));
				filterOnOff = 1;
			}
			
		}else {
			scri.setDistance(1000);
		}
		
		//정렬 순서가 null이 아니고 들어온 값이 orderByList 문자열 단어 중에 하나가 있으면 정렬 기준 할당
		//아니면 기본 정렬순서를 distance(반경)으로 설정
		if(request.getParameter("orderBy") != null && request.getParameter("orderBy") != "") {
			String orderByTest = request.getParameter("orderBy");
			String orderByList = "distancereviewCnttnTicket";
			if(orderByList.contains(orderByTest)) {
				scri.setOrderBy(orderByTest);
				filterOnOff = 1;
			}
		}else {
			scri.setOrderBy("distance");
		}
		
//		System.out.println("uAddr : " + uAddr);
//		System.out.println("scri.getPage() : " + scri.getPage());
//		System.out.println("scri.getKeyword() : " + scri.getKeyword());
//		System.out.println("scri.getDistance() : " + scri.getDistance());
//		System.out.println("scri.getOrderBy() : " + scri.getOrderBy());
//		System.out.println("\n");
		pm.setCurrentPage(scri.getPage());
		int totalCount = ts.trainerTotalCount(scri);
//		System.out.println("totalCount : " + totalCount);
		pm.setScri(scri);
		pm.setTotalCount(totalCount);
		
		model.addAttribute("pm", pm);
		model.addAttribute("filterOnOff", filterOnOff);
		model.addAttribute("uAddr", uAddr);
		
		ArrayList<TrainerInfoDTO> tio_alist = ts.findTrainer(scri);
		for(int i = 0; i < tio_alist.size(); i++) {
			tio_alist.get(i).setDistance(Math.round((tio_alist.get(i).getDistance()*10)/10));
		}
		System.out.println("\n");
//		System.out.println("tio_alist.size() : " + tio_alist.size());
		model.addAttribute("tio_alist", tio_alist);
		
		return "trainer/findTrainer";
	}
	
	@GetMapping(value = "trainerInfoView")
	public String trainerInfoView(int tnNo, Model model) {
		
		
		TrainerInfoDTO tio = ts.TrainerInfoView(tnNo);
		ArrayList<ReviewDTO> rvo_alist = ts.TrainerInfoView_reviews(tnNo);
		
		for(int i = 0; i < rvo_alist.size(); i++) {
			ArrayList<FileDetailDTO> fdo_alist = new ArrayList<FileDetailDTO>();
			fdo_alist = ts.TrainerInfoView_reviews_files(rvo_alist.get(i).getFlNo());
			rvo_alist.get(i).setRvFilename(fdo_alist);
		}
		
		model.addAttribute("tio", tio);
		model.addAttribute("rvo_alist", rvo_alist);
		
		return "trainer/trainerInfoView";
	}

}
