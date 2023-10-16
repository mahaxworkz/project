package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;



 
 
 
@Table(name = "admin_details")
@Entity
@NamedQuery(name = "findMail" , query = "select dto from AdminDto dto where dto.email=:em")
@NamedQuery(name = "updateotp" , query = " update AdminDto dto set dto.OTP =: ot where dto.email=:em")
@NamedQuery(name = "findOTP" , query = "select dto from AdminDto dto where dto.OTP=:ot")
public class AdminDto implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String OTP;
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
	public String getOTP() {
		return OTP;
	}
	public void setOTP(String oTP) {
		OTP = oTP;
	}
	
	public AdminDto() {
		System.out.println("default cons");
	}
	public AdminDto( String name, String email, String oTP) {
		super();
		this.name = name;
		this.email = email;
		OTP = oTP;
	}
	@Override
	public String toString() {
		return "AdminDto [name=" + name + ", email=" + email + ", OTP=" + OTP + "]";
	}
	
	

}
