package com.xworkz.landrecords.service;

import java.util.List;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.LandEntity;

public interface LandRecordEntityService {

	
	public boolean validateEntity(LandEntity ent ,Model model);
	 
	public boolean  save (LandEntity ent ,Model model);
	
	public List<LandEntity> readAll();
	public List<LandEntity> readBYVillage(String taluk, String hobli, String village ,Model model);
	public boolean EditBySurveyno(String ownerName,long phoneNumber,  String adharNumber,int hissaNumber,int surveyNumber,Model model);
	public  boolean deleteRecords(int hissaNumber ,int surveyNumber,Model model);
	public  LandEntity ifExists(int hissaNumber ,int surveyNumber,Model model);
	public  LandEntity editRecords(int hissaNumber ,int surveyNumber,Model model);
	

	
}
