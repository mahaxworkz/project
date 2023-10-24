package com.xworkz.landrecords.repo;


import com.xworkz.landrecords.dto.UserRegister;

public interface UserRepo {
	
	public boolean save(UserRegister user);
	public UserRegister ifExists(String mail,String password);
	public UserRegister passwordExists( String password);
	public UserRegister mailExists(String mail );
	 public boolean updateotp1(String otp, String mail);
	 public UserRegister findByOtp1(String otp);
	 public boolean updatePassword(String password,String cPassword,String mail);
	
}
