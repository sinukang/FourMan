package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.CenterService;

@Controller
public class CenterInfoViewController {
	
	@Autowired
	CenterService cs;
	
	@GetMapping(value = "centerInfoView")
	public String example(@RequestParam(name = "tnNo", required = true) int idx, Model model) {
		
		TrainerInfoDTO tio = cs.centerInfoView(idx);
		
		String[] QualifyArr = null;
		if(tio.getQualify().contains(",")) {
			QualifyArr = tio.getQualify().split(",");
		}else {
			QualifyArr = new String[1];
			QualifyArr[0] = tio.getQualify();
		}
		System.out.println("tio.getFlNo() : " + tio.getFlNo());
		ArrayList<FileDetailDTO> centerPhotos = new ArrayList<FileDetailDTO>();
		System.out.println("centerPhotos.size() : " + centerPhotos.size());
		centerPhotos = cs.centerInfoView_photos(tio.getFlNo());
		
		model.addAttribute("tio", tio);
		model.addAttribute("QualifyArr", QualifyArr);
		model.addAttribute("centerPhotos", centerPhotos);
		
		return "trainer/centerInfoView";
	}

}
