package com.ptconnect.myapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class TrainerInfoWriteController {
	
	@Autowired
	private TrainerService ts;	
	
	@RequestMapping(value = "trainerInfoWrite", method = RequestMethod.GET)
	public String trainerInfoWrite(HttpSession session) {
		
		return "trainerMypage/trainerInfoWrite";
	}
	
	@RequestMapping(value = "trainerInfoWriteAction", method = RequestMethod.POST)
	public String trainerInfoInsertAction(TrainerInfoDTO tio,
										FileDetailDTO fdo,
										@RequestParam("files") MultipartFile[] files,
										HttpSession session) throws Exception {	
		
		
		int mbNo = Integer.parseInt(session.getAttribute("mbNo").toString());
		
		System.out.println("mbNo : " + mbNo);
		tio.setMbNo(mbNo);
		
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
		
		System.out.println("qualify : " + tio.getQualify());
		System.out.println("lpCount : " + tio.getLpCount());
		System.out.println("lessonPrice : " + tio.getLessonPrice());
		
		int value = ts.trainerInsert(tio);
		System.out.println("value : " + value);
		
		fdo.setTnNo(tio.getTnNo());
		int value2 = ts.fileInsert(fdo);
		System.out.println("value2 : " + value2);
		
		for (FileDetailDTO newFdo : fileDetailsList) {
	        int value3 = ts.fileDetailInsert(newFdo);
	        System.out.println("value3 : " + value3);
	    }
		
		int value4 = ts.trainerInfoUpdate(fdo);
		System.out.println("value4 : " + value4);
		
		return "redirect:/trainerInfo";
	}

}
