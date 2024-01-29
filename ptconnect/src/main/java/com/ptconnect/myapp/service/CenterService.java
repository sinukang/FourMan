package com.ptconnect.myapp.service;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface CenterService {
	
	public TrainerInfoDTO centerInfoView(int tnNo);
	
	public int centerModify(CenterInfoDTO cio);
	
	public CenterInfoDTO centerSelectOne(int mbNo);
	
}
