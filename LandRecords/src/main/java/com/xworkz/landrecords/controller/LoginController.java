package com.xworkz.landrecords.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService service;
	
	
	@RequestMapping(value = "/save" ,method = RequestMethod.POST)
	public String saveAdmin(AdminDto dto , Model model) {
		boolean save= service.save(dto, model);
		if(save) {
			System.out.println("saved ");
		}
		return "save";
		
	}
	
	@RequestMapping(value="/sign",method = RequestMethod.POST)
	public String verify(@RequestParam String email,    Model model) {
		
		boolean sign= service.checkotp(email, model);
		if(sign) {
			model.addAttribute("saved", "check the email");
			return "admin";
		 
	}
		return "admin";
	}
	
	@RequestMapping(value="/otpcheck",method = RequestMethod.POST)
	public String verifyotp( @RequestParam String OTP,  Model model) {
		
		 AdminDto sign= service.findByOtp(OTP, model);
		if(sign !=null) {
			model.addAttribute("check", "login sucessfully");
			return "main";
		}
		return "admin";
		
		
	}
	
	@RequestMapping(value="/check2",method = RequestMethod.POST)
	public String check(     Model model) {
		
		 
		 
	 
		return "save";
	}
	
	

}
