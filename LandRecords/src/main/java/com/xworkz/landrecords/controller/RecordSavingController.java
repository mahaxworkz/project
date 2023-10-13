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
			System.out.println("saving land");
		}
		return "read";
		
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.POST)
	public String readRecords( Model model) {
		
	 List<LandEntity> dto=landservice.readAll();
		if(dto!= null) {
			 model.addAttribute("read", dto);
		}
		return "view";
		
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String read(@RequestParam String taluk, @RequestParam String hobli,@RequestParam String village, Model model) {
		
	 List<LandEntity> dto=landservice.readBYVillage(taluk, hobli, village, model);
		if(dto!= null) {
			 model.addAttribute("read", dto);
		}
		return "check";
		
	}

}
