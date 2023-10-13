package com.xworkz.landrecords.service;

import java.util.List;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.dto.LandEntity;
import com.xworkz.landrecords.repo.LandRecordEntityRepo;

@Service
public class LandRecordEntityServiceImpl implements LandRecordEntityService {

	@Autowired
	private LandRecordEntityRepo repo1;
	
	
	@Override
	public boolean validateEntity(LandEntity ent, Model model) {
		boolean valid = true; 
	    System.out.println("method validation");
	    if ( ent.getOwnerName()!=null) {
	        if (ent.getTaluk() == null || ent.getVillage().isEmpty()) {
	        	 model.addAttribute("istalukvalid", "please check the taluk Field ");
	            valid = false;  
	        }
	        
	        if ( ent.getYear().length()<4 ) {
	        	 model.addAttribute("isyearvalid", "please check the year  ");
	            valid = false;  
	        }
	        
	        if (ent.getVillage()==null || ent.getVillage().isEmpty()) {
	        	model.addAttribute("isvillagevalid", "please check the village Field");
	            valid = false;  
	        }
	        if (ent.getState()==null || ent.getState().isEmpty()) {
	            model.addAttribute("IsStateValid", "please check the  state Field ");
	            valid = false;  
	        }
	        
	        if (ent.getSurveyNumber()<0 ) {
	            model.addAttribute("IssurveyValid", "please check the survey number ");
	            valid = false;  
	        }
	        if (ent.getOwnerName().isEmpty() || ent.getOwnerName().length() <= 3 ) {
	            model.addAttribute("IsnameValid", "please check the name Field ");
	            valid = false;  
	        }
	        if (ent.getPhoneNumber()<18 ) {
	            model.addAttribute("IsphoneValid", "please check the  phone number ,it must be 10 digits");
	            valid = false;  
	        }
	        if (ent.getAdharNumber().length()!=12) {
	            model.addAttribute("IsAdharValid", "please check the  Adhar number,it must be 12 digits ");
	            valid = false;  
	        }
	        if (ent.getHobli()==null || ent.getHobli().isEmpty()) {
	            model.addAttribute("IshobliValid", "please check the  state Field ");
	            valid = false;  
	        }
	        if (ent.getDistrict()==null || ent.getDistrict().isEmpty()) {
	            model.addAttribute("IsStateValid", "please check the  state Field ");
	            valid = false;  
	        }
	        if (ent.getHissaNumber()<0) {
	            model.addAttribute("IsStateValid", "please check the  state Field ");
	            valid = false;  
	        }
	        
	        
	    } else {
	        System.out.println("null value");
	        valid = false;  
	    }

	    if (!valid) {
	        System.out.println("false scenario: " + model.asMap());
	    }
	    
	    return valid; 
		 
		 
	}

	 
	 

	@Override
	public boolean save(LandEntity ent, Model model) {
		 if(validateEntity(ent, model)) {
			 boolean save= repo1.saveentity(ent);
				return save;
		 }
		 System.out.println("not saving2 ");
		return false;
	}




	@Override
	public List<LandEntity> readAll() {
		List<LandEntity> list= repo1.readAll();
		
		return list;
	}




	@Override
	public List<LandEntity> readBYVillage(String taluk, String hobli, String village ,Model model) {
		try {
			if(taluk!=null && hobli !=null &&village!= null) {
				List<LandEntity>  list=	repo1.readBYVillage(taluk, hobli, village);
			return list;
			}
		}
		catch(NoResultException e) {
			e.printStackTrace();
			model.addAttribute("findnot", "  records not found ");
			System.out.println("dto null");
			return null;
		}
		return null;
	}

}
