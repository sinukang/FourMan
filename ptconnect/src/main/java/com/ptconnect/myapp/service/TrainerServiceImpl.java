package com.ptconnect.myapp.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.SearchCriteria;
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
	public ArrayList<TrainerInfoDTO> findTrainer(SearchCriteria scri) {
		
		int value = (scri.getPage()-1)*15;
		scri.setPage(value);
		
		ArrayList<TrainerInfoDTO> alist = tsm.findTrainer(scri);
		
		return alist;
	}
	
	@Override
	public int trainerTotalCount(SearchCriteria scri) {
		
		int value = 0;
		value = tsm.trainerTotalCount(scri);
		
		return value;
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
				
				value = value1 + value2 + value3;
			}
		}
		
		return  value;
	}
	
	@Override
	public int fileInsert(FileDetailDTO fdo) {
		int value = 0;
		int value1 = tsm.fileInsert(fdo);
		
		if(value1 > 0) {
		
			int value2 = tsm.fileDetailInsert(fdo);
			
			value = value1 + value2;
		}
		
		return value;
	}
	
	@Override
	public int trainerInfoUpdate(FileDetailDTO fdo) {
		
		int value = tsm.trainerInfoUpdate(fdo);
		
		return value;
	}



	
	
}