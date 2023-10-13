package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
  
@Table(name="records")
@Entity
@NamedQuery(name = "readAll" ,query = "select dto from LandEntity dto")
@NamedQuery(name = "readbyvillage" ,query = "select dto from LandEntity dto where    dto.taluk =: tl and dto.hobli =: hb and dto.village =:vl")

public class LandEntity  implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	 
	private String ownerName;
	 
	private Long phoneNumber;
	 
	private String adharNumber;
	 
	private  Integer hissaNumber;
	 
	private  Integer surveyNumber;
	 
	private  String year;
	 
	private  String  state;
	 
	private  String district;
	 
	private  String taluk;
	 
	private  String hobli;
	 
	private  String village;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public Long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAdharNumber() {
		return adharNumber;
	}
	public void setAdharNumber(String adharNumber) {
		this.adharNumber = adharNumber;
	}
	public Integer getHissaNumber() {
		return hissaNumber;
	}
	public void setHissaNumber(Integer hissaNumber) {
		this.hissaNumber = hissaNumber;
	}
	public Integer getSurveyNumber() {
		return surveyNumber;
	}
	public void setSurveyNumber(Integer surveyNumber) {
		this.surveyNumber = surveyNumber;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getTaluk() {
		return taluk;
	}
	public void setTaluk(String taluk) {
		this.taluk = taluk;
	}
	public String getHobli() {
		return hobli;
	}
	public void setHobli(String hobli) {
		this.hobli = hobli;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	
	
	

}
