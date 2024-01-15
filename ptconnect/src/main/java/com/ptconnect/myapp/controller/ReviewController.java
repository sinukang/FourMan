package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.PageMaker;
import com.ptconnect.myapp.domain.ReviewDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class ReviewController {
	
	@Autowired
	TrainerService ts;
	
	@Autowired(required = false)
	PageMaker pm;
	
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public String trainerInfoReviews(@RequestParam(name = "tnNo", required = true) int idx, Model model) {
		
		
		//트레이너 번호 받아서 해당 트레이너 정보 가져옴
		TrainerInfoDTO tio = ts.TrainerInfoView(idx);
		
		//해당 트레이너에 대한 리뷰(후기)들 가져옴
		ArrayList<ReviewDTO> rvo_alist = ts.TrainerInfoView_reviews(idx);
		
		//각각의 리뷰들에 대해 리뷰의 flNo 가져가서 리뷰가 첨부한 사진들 가져옴
		for(int i = 0; i < rvo_alist.size(); i++) {
			ArrayList<FileDetailDTO> fdo_alist = new ArrayList<FileDetailDTO>();
			fdo_alist = ts.TrainerInfoView_reviews_files(rvo_alist.get(i).getFlNo());
			rvo_alist.get(i).setRvFilename(fdo_alist);
			
			System.out.println("rvo_alist.get(i).getRvRate() : " + rvo_alist.get(i).getRvRate());
		}
		
		model.addAttribute("tio", tio);
		model.addAttribute("rvo_alist", rvo_alist);
		
		return "trainer/review";
	}

}
