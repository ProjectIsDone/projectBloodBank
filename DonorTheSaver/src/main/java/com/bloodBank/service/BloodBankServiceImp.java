package com.bloodBank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodBank.entity.DonorDetails;
import com.bloodBank.repository.BloodBankRepo;

@Service
public class BloodBankServiceImp implements BloodBankService {
	@Autowired
     private BloodBankRepo repo;
	@Override
	public DonorDetails save(DonorDetails details) {
		DonorDetails dd=new DonorDetails();
		dd.setStatus(true);
		DonorDetails d=repo.save(details);
		return d;
	}

}
