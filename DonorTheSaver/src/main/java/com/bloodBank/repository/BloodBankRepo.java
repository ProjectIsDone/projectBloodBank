package com.bloodBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bloodBank.entity.DonorDetails;

@Repository
public interface BloodBankRepo extends JpaRepository<DonorDetails, Long> {

}
