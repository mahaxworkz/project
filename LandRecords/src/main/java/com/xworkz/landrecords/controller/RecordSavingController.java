package com.xworkz.landrecords.controller;

import java.util.List;

import org.hibernate.hql.internal.QueryExecutionRequestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.dto.LandEntity;
import com.xworkz.landrecords.dto.UserRegister;
import com.xworkz.landrecords.service.LandRecordEntityService;
import com.xworkz.landrecords.service.UserService;

@Controller
public class RecordSavingController {
	
	@Autowired
	private LandRecordEntityService landservice;
	
	@Autowired
	private UserService user;
	
	@RequestMapping(value = "/saverecords", method = RequestMethod.POST)
	public String saveRecords(LandEntity dto,Model model) {
		
		boolean saved=landservice.save(dto, model);
		if(saved) {
			model.addAttribute("saving" ,"record saved");		
			System.out.println("saving land");
		}
		return "read";
		
	}
	
	 @PostMapping(value = "/updateRecords" )
	public String updateRecords( Model model,@RequestParam String ownerName,@RequestParam long phoneNumber,
			@RequestParam String adharNumber,@RequestParam("hissaNumber") int hissaNumber,@RequestParam("surveyNumber") int surveyNumber) {
		
	   boolean edit= landservice.EditBySurveyno(ownerName, phoneNumber, adharNumber, hissaNumber, surveyNumber, model);
		if(edit) {
			model.addAttribute("edited",  "updated in records");
			return "search";
		}
	   return "edit";
		
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String read(@RequestParam String taluk, @RequestParam String hobli,@RequestParam String village, Model model) {
		
	 List<LandEntity> dto=landservice.readBYVillage(taluk, hobli, village, model);
		if(dto!= null) {
			 model.addAttribute("read", dto);
			 System.out.println("present");
		}
		model.addAttribute("reading",  "no records found");
		return "search";
		
	}
	@RequestMapping(value="/remove" ,method = RequestMethod.POST)
	public String DeleteRecord(Model model,@RequestParam ("hissaNumber") int hissaNumber,  @RequestParam ("surveyNumber") int surveyNumber)   
	{
		boolean remove= landservice.deleteRecords(hissaNumber, surveyNumber, model);
		if(remove ) {
			model.addAttribute("data",remove);
			model.addAttribute("delete", "records deleted sucessfully");
			 
		}
		
		
		return "search";
	}
	@RequestMapping(value="/readAll",method=RequestMethod.GET)
	public String  ReadRecord(Model model) {
		 List<LandEntity>  listing = landservice.readAll();
		
		 if(listing!= null) {
			 model.addAttribute("read", listing);
			 System.out.println("present");
		}
		model.addAttribute("reading",  "no records found");
	
		
		return "view";
	}
	
	@GetMapping(value="/editRecords")
	public String  editrecords(Model model ,@RequestParam("hissaNumber") int hissaNumber,@RequestParam("surveyNumber")int surveyNumber) {
		  LandEntity land= landservice.editRecords(hissaNumber, surveyNumber, model);
		model.addAttribute("record", land);
		
		return "edit";
	}
	
	@RequestMapping(value="/UserSave",method=RequestMethod.POST)
	public String saveUsers(Model model, UserRegister reg) {
	boolean saving=	user.save(reg, model);
	if(saving) {
		model.addAttribute("register" ,"Registered successfully");
	}
		return  "Register";
		
	}
	@RequestMapping(value="/userSign",method=RequestMethod.POST)
	public String signIn(Model model, @RequestParam String email,@RequestParam String password) {
	UserRegister sign= user.signin(email, password, model);
	 if(sign != null) {
		 model.addAttribute("sign" ,"login successfully");
	 }
	 model.addAttribute("account", "No Account founded "); 
		return  "userSignin";
		
	}
	@RequestMapping(value="/forget",method = RequestMethod.POST)
	public String verify(@RequestParam String email,    Model model) {
		
		boolean sign=  user.checkotp1(email, model);
		if(sign) {
			model.addAttribute("checking", "check the email");
			return "forgetpwd"; 
	}
		return "forgetpwd";
	}
	
	@RequestMapping(value="/checksotp",method = RequestMethod.POST)
	public String verifyotp( @RequestParam String otp,  Model model) {
		
		  UserRegister sign= user.findByOtp1(otp, model);
		if(sign !=null) {
			model.addAttribute("check",  sign);
			return "UpdatePwd";
		}
		return "forgetpwd";
 	}
	@RequestMapping(value="/updatepwd",method = RequestMethod.POST)
	public String updatePassword(@RequestParam String email,@RequestParam String password,@RequestParam String cPassword,Model model) {
	     boolean update=	user.updatePassword(password, cPassword, email,model  );
		if(update) {
			model.addAttribute("updated" ,"updated");
			return "userview";
		}
		
		return "UpdatePwd";
	}
	

}
