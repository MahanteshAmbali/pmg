package com.myt.pmg.model;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "user")
public class User extends BasicEntity {
	public enum Level {
		SNAIL(100), TURTLE(200), RABBIT(350), BOLT(500);
		private int linkBroadcastCap;

		private Level(int cap) {
			linkBroadcastCap = cap;
		}

		public int getLinkBroadcastCap() {
			return linkBroadcastCap;
		}

		public static Level getLevel(String level) {
			if (level.equalsIgnoreCase("bolt"))
				return Level.BOLT;
			else if (level.equalsIgnoreCase("rabbit"))
				return Level.RABBIT;
			else if (level.equalsIgnoreCase("turtle"))
				return Level.TURTLE;
			else if (level.equalsIgnoreCase("snail"))
				return Level.SNAIL;
			else
				return null;
		}
	}

	@Indexed(unique = true)
	private String username;
	private String email;
	private String password;
	private boolean active = false;
	private boolean banned = false;
	private String firstname;
	private String lastname;
	private String gender;
	private Date dob;
	private String adUrl;
	private String country;
	private String picName;
	private String remarks;
	private Level level = Level.SNAIL;
	private Date registrationDate = new Date();
	private String registeredIp;
	private String[] role = { "ROLE_USER" };

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = DigestUtils.sha1Hex(password);
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public boolean isBanned() {
		return banned;
	}

	public void setBanned(boolean banned) {
		this.banned = banned;
	}

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAdUrl() {
		return adUrl;
	}

	public void setAdUrl(String adUrl) {
		this.adUrl = adUrl;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getRegisteredIp() {
		return registeredIp;
	}

	public void setRegisteredIp(String registeredIp) {
		this.registeredIp = registeredIp;
	}

	public String[] getRole() {
		return role;
	}

	public void setRole(String[] role) {
		this.role = role;
	}

	@Override
	public String toString() {
		System.out.println("Returning the >>>>>>>>" +   "User [username=" + username + ", email=" + email
				+ ", password=" + password + ", active=" + active + ", banned="
				+ banned + ", firstname=" + firstname + ", lastname="
				+ lastname + ", gender=" + gender + ", dob=" + dob + ", adUrl="
				+ adUrl + ", country=" + country + ", picName=" + picName
				+ ", remarks=" + remarks + ", level=" + level
				+ ", registrationDate=" + registrationDate + ", registeredIp="
				+ registeredIp + ", role=" + role + "]" );
		return "User [username=" + username + ", email=" + email
				+ ", password=" + password + ", active=" + active + ", banned="
				+ banned + ", firstname=" + firstname + ", lastname="
				+ lastname + ", gender=" + gender + ", dob=" + dob + ", adUrl="
				+ adUrl + ", country=" + country + ", picName=" + picName
				+ ", remarks=" + remarks + ", level=" + level
				+ ", registrationDate=" + registrationDate + ", registeredIp="
				+ registeredIp + ", role=" + role + "]";
	}

}
