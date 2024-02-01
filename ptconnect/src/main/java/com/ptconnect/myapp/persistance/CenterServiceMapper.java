package com.ptconnect.myapp.persistance;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.FileDetailDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface CenterServiceMapper {
	
	public TrainerInfoDTO centerInfoView(int tnNo);
	
	public ArrayList<FileDetailDTO> centerInfoView_photos(int flNo);
	
	public int centerModify(CenterInfoDTO cio);

	public CenterInfoDTO centerSelectOne(int mbNo);
	
	public CenterInfoDTO trainerCenterSelectOne(int ctNo);

	public ArrayList<CenterInfoDTO> centerFind(@Param("ctName")String ctName);
}
