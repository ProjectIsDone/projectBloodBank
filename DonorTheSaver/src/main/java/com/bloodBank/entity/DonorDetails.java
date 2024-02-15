package com.bloodBank.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class DonorDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_sequence")
    @SequenceGenerator(name = "user_sequence", sequenceName = "user_sequence", allocationSize = 1)
    private Long id;

    private String name;
    private int age;
    private int weight;
    private String bloodGroup;
    private String state;
    private String district;
    private String area;
    private String mobileNumber;
    private boolean status;
    

    // Constructors, getters, and setters

    public DonorDetails() {
        // Default constructor
    }

    public DonorDetails(String name, int age, int weight, String bloodGroup, String state, String district, String area, String mobileNumber,boolean status) {
        this.name = name;
        this.age = age;
        this.weight = weight;
        this.bloodGroup = bloodGroup;
        this.state = state;
        this.district = district;
        this.area = area;
        this.mobileNumber = mobileNumber;
        this.status=status;
    }

    // Getters and setters for each field

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
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

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "DonorDetails [id=" + id + ", name=" + name + ", age=" + age + ", weight=" + weight + ", bloodGroup="
				+ bloodGroup + ", state=" + state + ", district=" + district + ", area=" + area + ", mobileNumber="
				+ mobileNumber + ", status=" + status + "]";
	}
}
