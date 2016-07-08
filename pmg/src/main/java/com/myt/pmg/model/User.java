
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
	private String email;

	private String domain;
	private String password;

	private String firstname;
	private String lastname;
	private String gender;
	
	private String dob;
	

	private String country;
	private String picName;
	private String remarks;

	private boolean active = false;
	private boolean banned = false;
	private Level level = Level.SNAIL;
	private Date registrationDate = new Date();
	private String registeredIp;
	private String role;
	private String pic_id;

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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {

		return "User [ email=" + email + ", password=" + password + ", active=" + active + ", banned=" + banned
				+ ", firstname=" + firstname + ", lastname=" + lastname + ", gender=" + gender + ", dob=" + getDob()
				+ ", domain=" + domain + ", country=" + country + ", picName=" + picName + ", remarks=" + remarks
				+ ", level=" + level + ", registrationDate=" + registrationDate + ", registeredIp=" + registeredIp
				+ ", role=" + role + "]";
	}

	/**
	 * @return the domain
	 */
	public String getDomain() {
		return domain;
	}

	/**
	 * @param domain
	 *            the domain to set
	 */
	public void setDomain(String domain) {
		this.domain = domain;
	}

	/**
	 * @return the pic_id
	 */
	public String getPic_id() {
		return pic_id;
	}

	/**
	 * @param pic_id
	 *            the pic_id to set
	 */
	public void setPic_id(String pic_id) {
		this.pic_id = pic_id;
	}

	/**
	 * @return the dob
	 */
	public String getDob() {
		return dob;
	}

	/**
	 * @param dob the dob to set
	 */
	public void setDob(String dob) {
		this.dob = dob;
	}

}
