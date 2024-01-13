package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.ReviewDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface TrainerServiceMapper {
	
	public ArrayList<TrainerInfoDTO> findTrainer(SearchCriteria scri);
	
	public String loginUserAddr(int mbNo);
	
	public int trainerTotalCount(SearchCriteria scri);
	
	public TrainerInfoDTO TrainerInfoView(int tnNo);

	public ArrayList<ReviewDTO> TrainerInfoView_reviews(int tnNo);
	
	public ArrayList<FileDetailDTO> TrainerInfoView_reviews_files(int flNo);
	
	public int trainerInsert(TrainerInfoDTO tio);
	
	public int qualifyInsert(TrainerInfoDTO tio);
	
	public int lessonPriceInsert(TrainerInfoDTO tio);

	public int programInsert(TrainerInfoDTO tio);
	
	public int fileInsert(FileDetailDTO fdo);
	
	public int fileDetailInsert(FileDetailDTO fdo);
	
	public int trainerInfoUpdate(TrainerInfoDTO tio);
	
	public TrainerInfoDTO findTrainerOne(int tnNo);
	
	public int trainerModify(TrainerInfoDTO tio);
	
	public int qualifyModify(TrainerInfoDTO tio);
	
	public int programModify(TrainerInfoDTO tio);
	
	public int lessonPriceModify(TrainerInfoDTO tio);

	public int file_Modify(FileDetailDTO fdo);
	
	public int fileDetailModify(FileDetailDTO fdo);

}
