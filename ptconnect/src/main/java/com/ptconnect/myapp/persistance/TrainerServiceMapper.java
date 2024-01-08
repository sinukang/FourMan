package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerServiceMapper {
	
	public ArrayList<TrainerInfoDTO> findTrainer();
	
	public TrainerInfoDTO findTrainerOne(int tnNo);
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int qualifyInsert(TrainerInfoDTO tio);
	
	public int lessonPriceInsert(TrainerInfoDTO tio);
	
	public int fileInsert(FileDetailDTO fdo);
	
	public int fileDetailInsert(FileDetailDTO fdo);
	
	public int trainerInfoUpdate(TrainerInfoDTO tio);
}
