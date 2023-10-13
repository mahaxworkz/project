package com.xworkz.landrecords.service;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.AdminDto;

public interface LoginService {
	
	public boolean save(AdminDto dto ,Model model);
	public AdminDto findByMail(String mail ,Model model);
	public String randomotp(int length);
	public boolean checkotp(String mail ,Model model);
	public AdminDto findByOtp(String otp,Model models);
    public boolean sendMail(String otp,String email); 
}
