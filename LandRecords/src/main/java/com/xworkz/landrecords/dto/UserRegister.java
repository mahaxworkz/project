package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
@Table(name="user_Registeration")
@Entity
@NamedQuery(name="ifExists",query="select dto from UserRegister dto where dto.email=:em and dto.password=:ps ")
@NamedQuery(name="pwdExists",query="select dto from UserRegister dto where dto.password=:ps ")
@NamedQuery(name="mailExists",query="select dto from UserRegister dto where dto.email=:em ")
 
@NamedQuery(name = "updatingotp" , query = " update UserRegister dto set dto.otp =: ot where dto.email=:em")
@NamedQuery(name = "findotp" , query = "select dto from UserRegister dto where dto.otp=:ot")
@NamedQuery(name = "updatingpwd" , query = " update UserRegister dto set dto.password =: pd ,dto.cPassword=:cpd  where dto.email=:em")
public class UserRegister implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private Long mobileNumber;
	private String aadharNumber;
	private String password;
	private String cPassword;
	private String otp =null;
	
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getAadharNumber() {
		return aadharNumber;
	}
	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}
	public UserRegister() {
		System.out.println("user");
	}
	public UserRegister(  String name, String email, Long mobileNumber, String aadharNumber, String password,
			String cPassword ,String otp) {
		super();
		this.otp = otp;
		this.name = name;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.aadharNumber = aadharNumber;
		this.password = password;
		this.cPassword = cPassword;
	}
	@Override
	public String toString() {
		return "UserRegister [name=" + name + ", email=" + email + ", mobileNumber=" + mobileNumber + ", aadharNumber="
				+ aadharNumber + ", password=" + password + ", cPassword=" + cPassword + "]";
	}
	
	
	
	

}
