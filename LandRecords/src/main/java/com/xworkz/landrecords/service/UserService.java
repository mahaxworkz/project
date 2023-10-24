package com.xworkz.landrecords.service;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.AdminDto;
import com.xworkz.landrecords.dto.UserRegister;

public interface UserService {
	
	public boolean save(UserRegister user,Model model);
	public boolean validateEntity(UserRegister  ent ,Model model);
	public UserRegister ifexist(String email,String password,Model model);
	public UserRegister findByMail(String email ,Model model);
	public UserRegister signin(String email,String password,Model model);
	public String randomotp(int length);
	public boolean checkotp1(String mail ,Model model);
	public UserRegister  findByOtp1(String otp,Model models);
    public boolean sendMail1(String otp,String email);
    public boolean updatePassword(String password,String cPassword,String mail,Model model);
}
