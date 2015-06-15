package com.myt.pmg.dto;

public class MembersTableData {

	private String username;
	private String email;
	private String registeredIp;
	private String lastAccessIp;
	private String country;
	private int linkBroadcastCap;
	private String level;
	private long verifiedClicks;

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

	public String getRegisteredIp() {
		return registeredIp;
	}

	public void setRegisteredIp(String registeredIp) {
		this.registeredIp = registeredIp;
	}

	public String getLastAccessIp() {
		return lastAccessIp;
	}

	public void setLastAccessIp(String lastAccessIp) {
		this.lastAccessIp = lastAccessIp;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getLinkBroadcastCap() {
		return linkBroadcastCap;
	}

	public void setLinkBroadcastCap(int linkBroadcastCap) {
		this.linkBroadcastCap = linkBroadcastCap;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public long getVerifiedClicks() {
		return verifiedClicks;
	}

	public void setVerifiedClicks(long verifiedClicks) {
		this.verifiedClicks = verifiedClicks;
	}

	@Override
	public String toString() {
		return "MembersTableData [username=" + username + ", email=" + email
				+ ", registeredIp=" + registeredIp + ", lastAccessIp="
				+ lastAccessIp + ", country=" + country + ", linkBroadcastCap="
				+ linkBroadcastCap + ", level=" + level + ", verifiedClicks="
				+ verifiedClicks + "]";
	}
}
