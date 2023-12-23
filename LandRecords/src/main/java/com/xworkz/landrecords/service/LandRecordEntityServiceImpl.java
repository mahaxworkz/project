package com.xworkz.landrecords.service;

import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.persistence.NoResultException;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.hibernate.hql.internal.QueryExecutionRequestException;
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
	    System.out.println(ent.getTaluk()+","+ent.getOwnerName()+","+ent.getState());
	    
	    
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
	            model.addAttribute("IshissValid", "please check the  state Field ");
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
			 if(ifExists(ent.getHissaNumber(), ent.getSurveyNumber(), model)==null) {
				 boolean save= repo1.saveentity(ent);
					return save;
			 }
			 System.out.println("dto already present");
			 model.addAttribute("exist",  "records already exists");
			 return false;
		 }
		 System.out.println("not saving2 ");
		 model.addAttribute("exist1",  "records are not saved");
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
				if(list != null && !list.isEmpty()) {
					System.out.println("dto present");
					return list;
				}
				model.addAttribute("findnot1", "  records are not found ");
				return null;
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




	@Override
	public boolean EditBySurveyno(String ownerName, long phoneNumber, String adharNumber, int hissaNumber,
			int surveyNumber, Model model) {
		boolean check=true;
		 String mailreg="^[1-9][0-9]{11}$";
		 Pattern pattern= Pattern.compile(mailreg);
		Matcher match= pattern.matcher(adharNumber);
		boolean result=match.matches();
		
		 
		
		 if(hissaNumber>0 && hissaNumber<21 && surveyNumber>0 && surveyNumber<150) {
			
			
			 if( !result) {
				 model.addAttribute( "anError", " check Adhar number");
					check=false ; 
			 }
			 if( phoneNumber<999999999 ) {
				 model.addAttribute( "pnError", " check phone number");
					check= false; 
			 }
			  if(ownerName.length()<3) {
				  model.addAttribute( "nameError", " check the owner name");
				  check= false;  
			  }
			  }
			  else {
				  model.addAttribute( "snError", " check survey number & hissa Number");
				  check= false; 
				 
			  }
		 if(check) {
			 check=repo1.EditBySurveyno(ownerName, phoneNumber, adharNumber, hissaNumber, surveyNumber);
		 }
		return check;				 
							
	}

	@Override
	public boolean deleteRecords(int hissaNumber, int surveyNumber,Model model) {
		 try {
			if(hissaNumber>0 && hissaNumber<25) {
				 if(surveyNumber>0 && surveyNumber<150) {
					return repo1.deleteRecords(hissaNumber, surveyNumber, 2);
				 }
				 model.addAttribute( "Errorhissa", " check hissa number");
					return  false;
			 }
		} catch ( QueryExecutionRequestException e) {
			 System.out.println("error occured");
		}
		 model.addAttribute( "ErrorSurvey", " check survey number");
		return false;
	}




	@Override
	public LandEntity ifExists(int hissaNumber, int surveyNumber, Model model) {
		try {
			if(hissaNumber>0 && hissaNumber<25) {
				if(surveyNumber>0 && surveyNumber<150) {
					LandEntity	  list=	repo1.ifExists(hissaNumber, surveyNumber);
					return list;
				}
				
				System.out.println("wrong survey no");
				return null;
			}
		}
		catch(NoResultException e) {
			 
			 
			System.out.println("dto error  ");
			return null;
		}
		
		return null;
	}




	@Override
	public LandEntity editRecords(int hissaNumber, int surveyNumber, Model model) {
		try {
			if(hissaNumber>0 && hissaNumber<25) {
				if(surveyNumber>0 && surveyNumber<150) {
					LandEntity	  list=	repo1.ifExists(hissaNumber, surveyNumber);
					return list;
				}
				
				System.out.println("wrong survey no");
				return null;
			}
		}
		catch(NoResultException e) {
			 
			 
			System.out.println("dto error  ");
			return null;
		}
		
		return null;
		 
	}

}
