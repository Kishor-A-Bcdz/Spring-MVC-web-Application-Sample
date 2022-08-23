package com.camspace.CamspaceProject.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class admin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int adminId;
	private String fname;
	private String lname;
	private int age;
	private String country;
	private String state;
	private String city;
	private long phone;
	private int experiencecountyear;
	private String videoPhotoboth;
	private String typeOfPhotography;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public int getExperiencecountyear() {
		return experiencecountyear;
	}

	public void setExperiencecountyear(int experiencecountyear) {
		this.experiencecountyear = experiencecountyear;
	}

	public String getVideoPhotoboth() {
		return videoPhotoboth;
	}

	public void setVideoPhotoboth(String videoPhotoboth) {
		this.videoPhotoboth = videoPhotoboth;
	}

	public String getTypeOfPhotography() {
		return typeOfPhotography;
	}

	public void setTypeOfPhotography(String typeOfPhotography) {
		this.typeOfPhotography = typeOfPhotography;
	}

}
