package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
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
	private String imagepath;
	
	public AdminDto(int id, String name, String email, String oTP, String imagepath) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.OTP = oTP;
		this.imagepath = imagepath;
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

	public String getOTP() {
		return OTP;
	}

	public void setOTP(String oTP) {
		OTP = oTP;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	
	public AdminDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	 

	@Override
	public String toString() {
		return "AdminDto [id=" + id + ", name=" + name + ", email=" + email + ", OTP=" + OTP + ", imagepath="
				+ imagepath + "]";
	}
	
	
	
	
	
	
	

}
