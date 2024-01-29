package com.ptconnect.myapp.persistance;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.TrainerInfoDTO;

public interface CenterServiceMapper {
	
	public TrainerInfoDTO centerInfoView(int tnNo);
	
	public int centerModify(CenterInfoDTO cio);

	public CenterInfoDTO centerSelectOne(int mbNo);
}
