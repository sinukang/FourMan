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
public class TrainerInfoModifyController {
	
	@Autowired
	private TrainerService ts;
	
	@RequestMapping(value = "trainerInfoModify", method = RequestMethod.GET)
	public String trainerInfoModify(HttpSession session) throws Exception {
		
		int mbNo = 1; 
		
		 System.out.println("mbNo : " + mbNo);
		int tnNo = 71;
		System.out.println("tnNo : " + tnNo);
		
		session.setAttribute("tnNo", tnNo);
		session.setAttribute("mbNo", mbNo);
		
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
		
		int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
		
		System.out.println("tnNo : " + tnNo);
		tio.setTnNo(tnNo);
		
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
		
		return "trainerMypage/trainerInfoModify";
	}

}
