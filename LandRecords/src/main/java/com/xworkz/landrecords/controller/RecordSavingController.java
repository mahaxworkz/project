package com.xworkz.landrecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.landrecords.dto.LandEntity;
import com.xworkz.landrecords.service.LandRecordEntityService;

@Controller
public class RecordSavingController {
	
	@Autowired
	private LandRecordEntityService landservice;
	
	@RequestMapping(value = "/saverecords", method = RequestMethod.POST)
	public String saveRecords(LandEntity dto,Model model) {
		
		boolean saved=landservice.save(dto, model);
		if(saved) {
			model.addAttribute("saving" ,"record saved");		
			System.out.println("saving land");
		}
		return "read";
		
	}
	
	@RequestMapping(value = "/editRecords", method = RequestMethod.POST)
	public String EditRecords( Model model,@RequestParam String ownerName,@RequestParam long phoneNumber,
			@RequestParam String adharNumber,@RequestParam int hissaNumber,@RequestParam int surveyNumber) {
		
	   boolean edit= landservice.EditBySurveyno(ownerName, phoneNumber, adharNumber, hissaNumber, surveyNumber, model);
		if(edit) {
			model.addAttribute("edited",  "updated in records");
			return "edit";
		}
	   return "edit";
		
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String read(@RequestParam String taluk, @RequestParam String hobli,@RequestParam String village, Model model) {
		
	 List<LandEntity> dto=landservice.readBYVillage(taluk, hobli, village, model);
		if(dto!= null) {
			 model.addAttribute("read", dto);
			 System.out.println("present");
		}
		model.addAttribute("reading",  "no records found");
		return "search";
		
	}
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String DeleteRecord(Model model,@RequestParam int hissaNumber,int surveyNumber) {
		boolean remove= landservice.deleteRecords(hissaNumber, surveyNumber, model);
		if(remove) {
			model.addAttribute("delete", "records deleted sucessfully");
			 
		}
		
		
		return "delete";
	}

}
