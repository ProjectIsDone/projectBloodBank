package com.bloodBank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodBank.entity.UserDetails;
import com.bloodBank.repository.UserDetailsRepo;

@Service
public class UserDetailsServiceImp implements UserDetailsService {
	@Autowired
	private UserDetailsRepo repo;

	@Override
	public UserDetails saveUser(UserDetails details) {
		UserDetails r=repo.save(details);
		return r;
	}

	@Override
	public UserDetails login(String mobileNumber, String password) 
	{
		long mNo=Long.parseLong(mobileNumber);
		UserDetails details=repo.getByMobileNumberAndPassword(mNo, password);
		if(details!=null)
		{
		   return details;
		}
		return null;
	        
		
	}

}
