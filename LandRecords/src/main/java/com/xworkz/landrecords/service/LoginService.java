package com.xworkz.landrecords.service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.AdminDto;

public interface LoginService {
	
	public boolean save(AdminDto dto ,Model model);
	public AdminDto findByMail(String mail ,Model model);
	public String randomotp(int length);
	public boolean checkotp(String mail ,Model model);
	public AdminDto findByOtp(String otp,Model models);
    public boolean sendMail(String otp,String email); 
    public String DecryptPWD(String encryptPwd,String Secretkey) throws Exception;
    public String EncryptPWD(String password, String Secretkey)  throws Exception;
}
