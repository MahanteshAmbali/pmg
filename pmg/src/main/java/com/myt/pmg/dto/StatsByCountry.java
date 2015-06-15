package com.myt.pmg.dto;

public class StatsByCountry {
	private String country;
	private String code;
	private int noOfUsers;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getNoOfUsers() {
		return noOfUsers;
	}

	public void setNoOfUsers(int noOfUsers) {
		this.noOfUsers = noOfUsers;
	}

	@Override
	public String toString() {
		return "StatsByCountry [country=" + country + ", code=" + code
				+ ", noOfUsers=" + noOfUsers + "]";
	}

}
