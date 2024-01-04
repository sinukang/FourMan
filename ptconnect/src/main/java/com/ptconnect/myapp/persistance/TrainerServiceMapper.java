package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.TrainerDTO;

public interface TrainerServiceMapper {
	
	public ArrayList<TrainerDTO> findTrainer();
	
}
