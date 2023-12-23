package com.xworkz.landrecords.controller;

 
import java.io.File;
import java.io.IOException;
 

 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.multipart.MultipartFile;

 
import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.service.LoginService;

 
 

 
 
@Controller
public class LoginController {
	@Autowired
	private LoginService service;
	
	 
	
	@RequestMapping(value = "/save" ,method = RequestMethod.POST)
	public String saveAdmin(AdminDto dto  , Model model, @RequestParam ("multipartfile") MultipartFile multipartfile) throws IOException  {
	  
	
	 String uploadPath = "C:\\Users\\Lenovo\\Desktop\\Javaimg\\";
	 String orgFileName= multipartfile.getOriginalFilename().substring(multipartfile.getOriginalFilename().lastIndexOf("."),
				multipartfile.getOriginalFilename().length());
	 String uniqueName= dto.getName()+orgFileName;
	 multipartfile.transferTo(new File (uploadPath+uniqueName));
	
	 
	 
	 System.out.println(orgFileName);
	 System.out.println(uniqueName);
	dto.setImagepath(uploadPath+uniqueName);
	
	boolean save= service.save(dto, model);
	
		return "save";
		
	}
	
	
	@RequestMapping(value="/sign",method = RequestMethod.POST)
	public String verify(@RequestParam String email,HttpSession session ,HttpServletRequest req   ,Model model) {
		
		boolean sign= service.checkotp(email, model);
		 
		if(sign) {
			model.addAttribute("saved", "check the email");
			
            session.setAttribute("email01",  email);	
            
          
			//req.setAttribute("email",  email);
			return "admin";
		 
	}
		return "admin";
	}
	
	@RequestMapping(value="/otpcheck",method = RequestMethod.POST)
	public String verifyotp( @RequestParam String OTP,  Model model,HttpServletRequest req ,HttpSession session) throws Exception {
		
		String email = (String) session.getAttribute("email01");
		
		  System.out.println(email);
		if(email !=null) {
			AdminDto dto= service.findByMail(email, model);
			session.setAttribute("Admin", dto);
			model.addAttribute( "ad", dto);
			
			 if(dto != null) {
			String DecP=	service.DecryptPWD( dto.getOTP(),"EncryptAdmin"  ) ;
			if(OTP.equals(DecP)) {
				String im=  dto.getImagepath();
				System.out.println( dto);
				return "main";
			}
			System.out.println("otp miss matched");
			return "admin";
			 }
			 System.out.println("dto null");
			 return "admin";
		}
		System.out.println("email null");
		return "admin";
		
		
	}
	
	 
	

}
