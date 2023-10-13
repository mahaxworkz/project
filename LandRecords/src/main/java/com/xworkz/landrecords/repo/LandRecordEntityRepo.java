package com.xworkz.landrecords.repo;

import java.util.List;

import com.xworkz.landrecords.dto.LandEntity;

public interface LandRecordEntityRepo {
	
	public boolean saveentity(LandEntity dto);
	
	public List<LandEntity> readAll();
	
	public List<LandEntity> readBYVillage(String taluk,String hobli,String village);


}
