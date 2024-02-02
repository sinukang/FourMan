package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.CenterService;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class CenterInfoViewController {
	
	@Autowired
	CenterService cs;
	
	@Autowired
	TrainerService ts;
	
	@GetMapping(value = "centerInfoView")
	public String example(@RequestParam(name = "tnNo", required = true) int idx, Model model) {
		
		TrainerInfoDTO tio = cs.centerInfoView(idx);
		
		//바로 위 tio의 flNo받아서 해당 트레이너에 대한 사진들 가져옴(사진 없으면 flNo 기본값 0)
		ArrayList<FileDetailDTO> tio_photo_alist = ts.TrainerInfoView_photos(tio.getFlNo());
		
		//tio의 flno 가져가서 해당하는 사진 파일들 불러옴
		System.out.println("tio.getFlNo() : " + tio.getFlNo());
		ArrayList<FileDetailDTO> centerPhotos = new ArrayList<FileDetailDTO>();
		centerPhotos = cs.centerInfoView_photos(tio.getFlNo());
		System.out.println("centerPhotos.size() : " + centerPhotos.size());
		
		//트레이너 프로필의 자격검증
		String[] QualifyArr = null;
		if(tio.getQualify().contains(",")) {
			QualifyArr = tio.getQualify().split(",");
		}else {
			QualifyArr = new String[1];
			QualifyArr[0] = tio.getQualify();
		}
		
		//센터 시설 제공 정보
		String[] centerInfo = null;
		if(tio.getCtInfo().contains(",")) {
			centerInfo = tio.getCtInfo().split(",");
		}else {
			centerInfo = new String[1];
			centerInfo[0] = tio.getCtInfo();
		}
		
		//센터 가격 정보
		JSONArray jArr = new JSONArray();
		String[] ctUsePeriods = new String[4];	//센터 이용기간
		String[] ctPrices =  new String[4];	//센터 가격
		if(tio.getCtPrice().contains(",")) {
			String[] ctPriceArr = tio.getCtPrice().split(",");
			int ctLength = tio.getCtPrice().split(",").length;
			int j = 0;
			for (int i = 0; i < ctLength; i++) {
				System.out.println(ctPriceArr[i]);
				if(i%2==0) {
					ctUsePeriods[j] = ctPriceArr[i];
				}else {
					ctPrices[j] = ctPriceArr[i];
					j++;
				}
			}
			for(int i = 0; i < ctUsePeriods.length; i++) {
				JSONObject jo = new JSONObject();
				System.out.println(ctUsePeriods[i]);
				jo.put("ctUsePeriods",ctUsePeriods[i]);
				jo.put("ctPrices",ctPrices[i]);
				jArr.add(jo);
			}
		}else {
			
		}
		
		model.addAttribute("tio", tio);
		model.addAttribute("tio_photo_alist", tio_photo_alist);
		model.addAttribute("QualifyArr", QualifyArr);
		model.addAttribute("centerInfo", centerInfo);
		model.addAttribute("centerPrice", jArr);
		model.addAttribute("centerPhotos", centerPhotos);
		
		return "trainer/centerInfoView";
	}

}
