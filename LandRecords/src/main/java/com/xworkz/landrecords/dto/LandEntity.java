package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
  
@Table(name="landrecords")
@Entity
@NamedQuery(name = "readAll" ,query = "select dto from LandEntity dto where dto.status= 1 ")
@NamedQuery(name = "readbyvillage" ,query = "select dto from LandEntity dto where    dto.taluk =: tl and dto.hobli =: hb and dto.village =:vl and   dto.status= 1")
@NamedQuery(name="Edit" ,query="update LandEntity dto set dto.ownerName=:on ,dto.phoneNumber=:pn ,dto.adharNumber =:an "
		+ "where dto.hissaNumber=:hn and dto.surveyNumber=:sn and  dto.status= 1")
@NamedQuery(name="delete",query=" update LandEntity dto set dto.status=:st  where hissaNumber =:hn and surveyNumber =: sn")
@NamedQuery(name="ifExist",query="select dto from LandEntity dto where dto.hissaNumber=:hn and dto.surveyNumber=:sn and   dto.status= 1")
@NamedQuery(name = "findhissa" , query = "select dto from LandEntity dto where dto.hissaNumber=:hs ")
@NamedQuery(name = "findsurvey" , query = "select dto from LandEntity dto where dto.surveyNumber=:sn")
@NamedQuery(name = "findsurveyAndVillage" , query = "select dto from LandEntity dto where dto.surveyNumber=:sn and dto.village=: vl ")

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
	private int status=1;
	private String acres ;
	private  String image;
	 
	 
	 
	
	 
	 
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getAcres() {
		return acres;
	}
	public void setAcres(String acres) {
		this.acres = acres;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public LandEntity() {
		System.out.println("landentity");
	}
	public LandEntity(int id, String ownerName, Long phoneNumber, String adharNumber, Integer hissaNumber,
			Integer surveyNumber, String year, String state, String district, String taluk, String hobli,
			String village, int status ) {
		super();
		this.id = id;
		this.ownerName = ownerName;
		this.phoneNumber = phoneNumber;
		this.adharNumber = adharNumber;
		this.hissaNumber = hissaNumber;
		this.surveyNumber = surveyNumber;
		this.year = year;
		this.state = state;
		this.district = district;
		this.taluk = taluk;
		this.hobli = hobli;
		this.village = village;
		this.status = status;
		 
		 	}
	@Override
	public String toString() {
		return "LandEntity [ownerName=" + ownerName + ", phoneNumber=" + phoneNumber + ", adharNumber=" + adharNumber
				+ ", hissaNumber=" + hissaNumber + ", surveyNumber=" + surveyNumber + ", year=" + year + ", state="
				+ state + ", district=" + district + ", taluk=" + taluk + ", hobli=" + hobli + ", village=" + village
				+ "]";
	}
	 
	
	
	

}
