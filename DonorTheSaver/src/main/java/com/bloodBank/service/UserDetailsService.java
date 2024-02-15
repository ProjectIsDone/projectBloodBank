package com.bloodBank.service;


import com.bloodBank.entity.UserDetails;


public interface UserDetailsService {
	public UserDetails saveUser(UserDetails details);
	public UserDetails login(String mobileNumber, String password);

}
