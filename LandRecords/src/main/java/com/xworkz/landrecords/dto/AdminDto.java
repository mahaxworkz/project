package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

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

}
