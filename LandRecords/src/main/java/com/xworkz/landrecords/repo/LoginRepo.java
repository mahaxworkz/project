package com.xworkz.landrecords.repo;

import com.xworkz.landrecords.dto.AdminDto;

public interface LoginRepo {
	public boolean save(AdminDto dto);
	public AdminDto findByMail(String name);
	public boolean updateotp(String otp,String mail);
	public AdminDto findByOtp(String otp);

}
