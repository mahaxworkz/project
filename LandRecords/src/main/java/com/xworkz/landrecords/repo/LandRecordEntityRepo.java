package com.xworkz.landrecords.repo;

import java.util.List;

import com.xworkz.landrecords.dto.LandEntity;

public interface LandRecordEntityRepo {
	
	public boolean saveentity(LandEntity dto);
	
	public List<LandEntity> readAll();
	
	public List<LandEntity> readBYVillage(String taluk,String hobli,String village);
	
	public boolean EditBySurveyno(String ownerName,long phoneNumber,  String adharNumber,int hissaNumber,int surveyNumber);

   public  boolean deleteRecords(int hissaNumber ,int surveyNumber ,int surveyno);
   public LandEntity  ifExists(int hissaNumber ,int surveyNumber);
   
   public List<LandEntity> FindByHissaNo(int hissanumber);
   public List<LandEntity> FindBySurveyNo(int surveynumber);
   public List<LandEntity> FindBySurveyNoAndVillage(int surveynumber,String village);
   
   
   
}
