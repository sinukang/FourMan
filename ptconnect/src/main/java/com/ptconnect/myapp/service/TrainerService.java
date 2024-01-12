package com.ptconnect.myapp.service;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerService {
	
	public ArrayList<TrainerInfoDTO> findTrainer(SearchCriteria scri);
	
	public String loginUserAddr(int mbNo);
	
	public int trainerTotalCount(SearchCriteria scri);
	
	public TrainerInfoDTO TrainerInfoView(int tnNo);
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int fileInsert(FileDetailDTO fdo);
	
	public int trainerInfoUpdate(FileDetailDTO fdo);
}
