package com.ptconnect.myapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.PriceInfo;
import com.ptconnect.myapp.domain.ProgramDTO;
import com.ptconnect.myapp.domain.QualifyInfo;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class TrainerInfoModifyController {
	
	@Autowired
	private TrainerService ts;	
	
	@RequestMapping(value = "trainerInfoModify", method = RequestMethod.GET)
	public String trainerInfoModify(Model model,
									HttpSession session) throws Exception {
		int tnNo = 118;
		
		TrainerInfoDTO tio = ts.trainerSelectOne(tnNo);
		QualifyInfo qo = ts.qualifySelectOne(tnNo);
		PriceInfo pro = ts.lessonPriceSelectOne(tnNo);
		ProgramDTO pgo = ts.programSelectOne(tnNo);
		
		String[] QualifyArr = null;
		if(qo.getQualify().contains(",")) {
			QualifyArr = qo.getQualify().split(",");
		}else {
			QualifyArr = new String[1];
			QualifyArr[0] = qo.getQualify();
		}
		
		JSONArray jsAry = new JSONArray();
		String[] lpCount = null;
		String[] lessonPrice = null;
		if(pro.getLpCount().contains(",")) {
			lpCount = pro.getLpCount().split(",");
			lessonPrice = pro.getLessonPrice().split(",");
			for(int i = 0; i < lpCount.length; i++) {
				String CP = "{\"lpCount\" : \""+lpCount[i]+"\", \"lessonPrice\" : \""+lessonPrice[i]+"\"}";
				JSONObject js = new JSONObject();
				js.put("lpCount",lpCount[i]);
				js.put("lessonPrice",lessonPrice[i]);
				jsAry.add(js);
			}
		}else {
			lpCount = new String[1];
			lessonPrice = new String[1];
			lpCount[0] = pro.getLpCount();
			lessonPrice[0] = pro.getLessonPrice();
		}
		
		String[] ProgramArr = null;
		if(pgo.getPgContent().contains(",")) {
			ProgramArr = pgo.getPgContent().split(",");
		}else {
			ProgramArr = new String[1];
			ProgramArr[0] = pgo.getPgContent();
		}
		
		
		model.addAttribute("tio", tio);
		model.addAttribute("QualifyArr", QualifyArr);
		model.addAttribute("aryList", jsAry);
		model.addAttribute("ProgramArr", ProgramArr);
		
		return "trainerMypage/trainerInfoModify";
	}
	
	@RequestMapping(value = "trainerInfoModifyAction", method = RequestMethod.POST)
	public String trainerInfoInsertAction(TrainerInfoDTO tio,
										FileDetailDTO fdo,
										@RequestParam("files") MultipartFile[] files,
										HttpSession session) throws Exception {	

		
		int mbNo = Integer.parseInt(session.getAttribute("mbNo").toString());
		
		System.out.println("mbNo : " + mbNo);
		tio.setMbNo(mbNo);
		
//		int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
		int tnNo = 118;
		
		System.out.println("tnNo : " + tnNo);
		tio.setTnNo(tnNo);
		
		System.out.println("lpcf : " + tio.getLpCf());
		
		String lpCf = tio.getLpCf().split(",")[0];
		tio.setLpCf(lpCf);
		System.out.println("lpcf : " + lpCf);
		
		// 다중 파일 업로드 처리
	    List<FileDetailDTO> fileDetailsList = new ArrayList<>();
	    for (MultipartFile file : files) {
	        if (!file.isEmpty()) {
	        	
	        	String originalFilename = file.getOriginalFilename();

	        	String uniqueIdentifier = Long.toString(System.currentTimeMillis());
	            String filename = uniqueIdentifier + "_" + originalFilename;
	            
	            System.out.println("filename" + filename);
	            System.out.println("originalFilename" + originalFilename);
	            
	            File uploadPath = new File("C:/upload/my0803/" + filename);
	            file.transferTo(uploadPath);

	            // 각 파일에 대한 FileDetailDTO 객체 생성
	            fdo.setFdName(filename);
	            fdo.setFdPName(originalFilename);

	            fileDetailsList.add(fdo);
	        }
	    }
		
		int value = ts.trainerModify(tio);
		System.out.println("value : " + value);
		
		fdo.setTnNo(tio.getTnNo());
		int value2 = ts.file_Modify(fdo);
		System.out.println("value2 : " + value2);

	    int value3 = ts.fileDetailModify(fdo);
	    System.out.println("value3 : " + value3);
	    
	    for (FileDetailDTO newFdo : fileDetailsList) {
	        int value4 = ts.fileDetailInsert(newFdo);
	        System.out.println("value4 : " + value4);
	    }
		
		return "trainerMypage/trainerInfoWrite";
	}

}
