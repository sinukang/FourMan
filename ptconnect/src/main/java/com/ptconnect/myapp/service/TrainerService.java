package com.ptconnect.myapp.service;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerService {
	
	public ArrayList<TrainerDTO> findTrainer();
	
	public TrainerInfoDTO findTrainerOne(int tnNo);
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int fileInsert(FileDetailDTO fdo);
	
	public int trainerInfoUpdate(TrainerInfoDTO tio);
}
