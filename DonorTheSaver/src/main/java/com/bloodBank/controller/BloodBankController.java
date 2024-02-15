package com.bloodBank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bloodBank.entity.DonorDetails;
import com.bloodBank.service.BloodBankServiceImp;

@Controller
public class BloodBankController {
    @Autowired
    private BloodBankServiceImp service;
	@GetMapping("/registerdonor")
	public String getDonor()
	{
		return "registerdonor";
	}
	@GetMapping("/registerbloodbank")
	public String getbloodbank()
	{
		return "registerbloodbank";
	}
	@PostMapping("/savedonor")
	@ResponseBody
	public String save(DonorDetails details)
	{
		DonorDetails d1=service.save(details);
		return "donor saved succesfully";
	}
	@GetMapping("/menu")
	public String getMenu()
	{
		return "menu";
	}
}
