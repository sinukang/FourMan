package com.ptconnect.myapp.service;

import java.util.ArrayList;

<<<<<<< HEAD
import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerDTO;
=======
>>>>>>> branch 'main' of https://github.com/sinukang/b_beam.git
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerService {
	
	public ArrayList<TrainerInfoDTO> findTrainer();
	
	public TrainerInfoDTO findTrainerOne(int tnNo);
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int fileInsert(FileDetailDTO fdo);
	
	public int trainerInfoUpdate(TrainerInfoDTO tio);
}
