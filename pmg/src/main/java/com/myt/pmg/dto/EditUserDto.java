package com.myt.pmg.dto;

import java.io.Serializable;

public class EditUserDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9186133788281009232L;

	private String firstname;

	private String lastname;

	private String dob;

	private String gender;

	private String country;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
