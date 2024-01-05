package com.ptconnect.myapp.service;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.TrainerDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerService {
	
	public ArrayList<TrainerDTO> findTrainer();
	
	public int trainerInsert(TrainerInfoDTO tio);
	
}