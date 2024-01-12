package com.ptconnect.myapp.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;
import com.ptconnect.myapp.persistance.TrainerServiceMapper;

@Service
public class TrainerServiceImpl implements TrainerService{

	private TrainerServiceMapper tsm;
	
	@Autowired
	public TrainerServiceImpl(SqlSession sqlSession) {
		this.tsm = sqlSession.getMapper(TrainerServiceMapper.class);
	}

	@Override
	public ArrayList<TrainerInfoDTO> findTrainer() {
		
		ArrayList<TrainerInfoDTO> alist = new ArrayList<TrainerInfoDTO>();
		
		return alist;
	}
	
	@Override
	
	public TrainerInfoDTO findTrainerOne(int tnNo) {
		TrainerInfoDTO tio = null;
		
		tio = tsm.findTrainerOne(tnNo);
		
		return tio;
	}

	@Override
	public int trainerInsert(TrainerInfoDTO tio) {
		int value = 0;
		int value1 = tsm.trainerInsert(tio);
		
		if(value1 > 0) {
		
			int value2 = tsm.qualifyInsert(tio);
			
			
			if(value2 > 0) {
				
				int value3 = tsm.lessonPriceInsert(tio);
				
				if(value3 > 0) { 
					
					int value4 = tsm.programInsert(tio);
					
					value = value1 + value2 + value3 + value4;
				}
			}
		}
		
		return  value;
	}
	
	@Override
	public int fileInsert(FileDetailDTO fdo) {
	
		int value = tsm.fileInsert(fdo);
		
		return value;
	}
	
	@Override
	public int fileDetailInsert(FileDetailDTO fdo) {

		int value = tsm.fileDetailInsert(fdo);
		
		return value;
	}
	
	@Override
	public int trainerInfoUpdate(TrainerInfoDTO tio) {
		
		int value = tsm.trainerInfoUpdate(tio);
		
		return value;
	}
	
	@Override
	public int trainerModify(TrainerInfoDTO tio) {
		
		int value = 0;
		int value1 = tsm.trainerModify(tio);
		
		if(value1 > 0) {
		
			int value2 = tsm.qualifyModify(tio);
			
			
			if(value2 > 0) {
				
				int value3 = tsm.lessonPriceModify(tio);
				
				if(value3 > 0) {
					
					int value4 = tsm.programModify(tio);
					
					value = value1 + value2 + value3 + value4;
				}
				
			}
		}
		
		return  value;
	}
	
	@Override
	public int file_Modify(FileDetailDTO fdo) {
		
		int value = tsm.file_Modify(fdo);
		
		return value;
	}
	
	@Override
	public int fileDetailModify(FileDetailDTO fdo) {

		int value = tsm.fileDetailModify(fdo);
		
		return value;
	}
	
	
	
}