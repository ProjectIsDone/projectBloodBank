package com.bloodBank.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bloodBank.entity.UserDetails;
import com.bloodBank.service.UserDetailsServiceImp;
@Controller
public class UserDetailsController 
{
	@Autowired
	private UserDetailsServiceImp service;
	@GetMapping("/")
	public String getForm()
	{
		return "signup";
	}
   @PostMapping("/save")
   public String save( UserDetails details) {
	   UserDetails r=service.saveUser(details);
	   return "login";
   } 
   @GetMapping("/login")
   public String getLogin()
   {
	   return "login";
   }
   @PostMapping("/logindetails")
   public String loginDetails(@RequestParam String mobileNumber,@RequestParam String password)
   {
	  UserDetails msg=service.login(mobileNumber, password);
	  if(msg!=null)
	  {
		  return "home";
	  }
	  else
	  {
		  return "loginfailed";
	  }
   }
   @GetMapping("/register")
   public String getRegisterForm() 
   {
	   return "register";
   }
   @GetMapping("/search")
   public String getSearchForm() 
   {
	   return "search";
   }
   @GetMapping("/home")
   public String getHomePage()
   {
	   return "home";
   }
  

}
