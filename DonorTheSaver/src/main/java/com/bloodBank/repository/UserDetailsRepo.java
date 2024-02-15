package com.bloodBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bloodBank.entity.UserDetails;
@Repository
public interface UserDetailsRepo extends JpaRepository<UserDetails, Long> {
	 UserDetails getByMobileNumberAndPassword(long mobileNumber, String password);
}
