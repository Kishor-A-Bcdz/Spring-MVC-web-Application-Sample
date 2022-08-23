package com.camspace.CamspaceProject.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	private int age;
	private String country;
	private String state;
	private String city;
	private String fevField;
	private String photographyVideographyBoth;
	private long phone;
	private String proffesionalorpassion;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getFevField() {
		return fevField;
	}

	public void setFevField(String fevField) {
		this.fevField = fevField;
	}

	public String getPhotographyVideographyBoth() {
		return photographyVideographyBoth;
	}

	public void setPhotographyVideographyBoth(String photographyVideographyBoth) {
		this.photographyVideographyBoth = photographyVideographyBoth;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getProffesionalorpassion() {
		return proffesionalorpassion;
	}

	public void setProffesionalorpassion(String proffesionalorpassion) {
		this.proffesionalorpassion = proffesionalorpassion;
	}

}
