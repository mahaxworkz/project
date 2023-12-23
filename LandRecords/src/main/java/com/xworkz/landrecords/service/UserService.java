package com.xworkz.landrecords.service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.SecretKey;

import org.springframework.ui.Model;

 
import com.xworkz.landrecords.dto.UserRegister;

public interface UserService {
	
	public boolean save(UserRegister user,Model model) throws Exception ;
	public boolean validateEntity(UserRegister  ent ,Model model);
	public UserRegister ifexist(String email,String password,Model model);
	public UserRegister findByMail(String email ,Model model);
	public UserRegister signin(String email,String password,Model model);
	public String randomotp(int length);
	public UserRegister checkotp1(String mail ,Model model);
	public UserRegister  findByOtp1(String otp,Model models);
    public UserRegister sendMail1(String otp,String email);
    public boolean updatePassword(String password,String cPassword,String mail,Model model);
     public UserRegister mailExists(String mail);
    public UserRegister pwdExists(String password);
    
    public String EncryptPWD(String password,String Secretkey) throws NoSuchAlgorithmException, InvalidKeySpecException, Exception;
    public String DecryptPWD(String encryptPwd,String Secretkey);
    
     
    public UserRegister otpAndMailverification(String mail,String otp, Model model) throws Exception;
}
