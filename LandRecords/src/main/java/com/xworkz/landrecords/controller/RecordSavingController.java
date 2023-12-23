package com.xworkz.landrecords.controller;

 
import java.io.File;
import java.io.IOException;
import java.util.List;

 
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String saveRecords(LandEntity dto,Model model, @RequestParam ("imagepath") MultipartFile imagepath) throws IllegalStateException, IOException {
		
		 String uploadPath = "C:\\Users\\Lenovo\\Desktop\\LandRecords\\";
		 String orgFileName= imagepath.getOriginalFilename().substring(imagepath.getOriginalFilename().lastIndexOf("."),
		 imagepath.getOriginalFilename().length());
		 String uniqueName= dto.getOwnerName()+orgFileName;
		 imagepath.transferTo(new File (uploadPath+uniqueName));
		 
		 dto.setImage(uploadPath+uniqueName);
			
		
		 System.out.println(dto);
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
			model.addAttribute("edited",  "updated  Successfully");
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
	public String saveUsers(Model model, UserRegister reg) throws Exception    {
	boolean saving=	user.save(reg, model);
	if(saving) {
		model.addAttribute("register" ,"Registered successfully");
		return "userview";
	}
		return  "Register";
		
	}
	@RequestMapping(value="/userSign",method=RequestMethod.POST)
	public String signIn(Model model, @RequestParam String email,@RequestParam String password) {
	UserRegister sign= user.signin(email, password, model);
	 if(sign != null) {
		 model.addAttribute("sign" ,"login successfully");
		 return "userview";
	 }
	 model.addAttribute("account", "No Account founded "); 
		return  "userSignin";
		
	}
	@RequestMapping(value="/forget",method = RequestMethod.POST)
	public String verify(@RequestParam String email,    Model model,HttpSession session) {
		 
		UserRegister sign=  user.checkotp1(email, model);
		if(sign != null) {
			model.addAttribute("checking", "check the email");
			 
		 session.setAttribute("email",  email);
			return "forgetpwd"; 
	}
		return "forgetpwd";
	}
	 
	@RequestMapping(value="/checksotp",method = RequestMethod.POST)
	public String verifyotp( @RequestParam String otp,   Model model,HttpSession session) throws Exception {
		  
		String email = (String) session.getAttribute("email");
		System.out.println(email);
        if (email != null) {
        	UserRegister sign= user.findByMail(email, model);
        	if(sign != null) {
        	String org=	user.DecryptPWD(sign.getOtp(), "EncryptingKey" );
        	if(org.equals(otp)) {
        		System.out.println("go to nxt page");
       		 
        		return "UpdatePwd";
        	}
        	System.out.println("otp error");
        		return "forgetpwd";
        	}
        
        	System.out.println("page problem");
        	return "forgetpwd";
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
	@RequestMapping(value = "/User", method = RequestMethod.POST)
	public String userViewing(@RequestParam String taluk, @RequestParam String hobli,@RequestParam String village, Model model) {
		
	 List<LandEntity> dto=landservice.readBYVillage(taluk, hobli, village, model);
		if(dto!= null) {
			 model.addAttribute("read", dto);
			 System.out.println("present");
		}
		model.addAttribute("reading",  "no records found");
		return "userview";
		
	}
	@RequestMapping(value = "/viewCard", method = RequestMethod.POST)
	public String UserView(  @RequestParam int  surveyNumber,@RequestParam  int  hissaNumber, Model model) {
		
	LandEntity  dto=landservice.ifExists(hissaNumber, surveyNumber, model);
		if(dto!= null) {
			 model.addAttribute("read1", dto);
			 System.out.println("present");
		}
		model.addAttribute("readed",  "no records found");
		return "userview";
		
	}
	

}
