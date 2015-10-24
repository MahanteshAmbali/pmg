package com.myt.pmg.dto;

public class ContributorData {
	private long contribution;
	private long linksVerified;
	private int linksVerifyPercent;
	private long rating;
	private String username;
	private String picName;
	private String level;

	public long getContribution() {
		return contribution;
	}

	public void setContribution(long contribution) {
		this.contribution = contribution;
	}

	public long getLinksVerified() {
		return linksVerified;
	}

	public void setLinksVerified(long linksVerified) {
		this.linksVerified = linksVerified;
	}

	public int getLinksVerifyPercent() {
		return linksVerifyPercent;
	}

	public void setLinksVerifyPercent(int linksVerifyPercent) {
		this.linksVerifyPercent = linksVerifyPercent;
	}

	public long getRating() {
		return rating;
	}

	public void setRating(long rating) {
		this.rating = rating;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "ContributorData [contribution=" + contribution
				+ ", linksVerified=" + linksVerified + ", linksVerifyPercent="
				+ linksVerifyPercent + ", rating=" + rating + ", username="
				+ username + ", picName=" + picName + ", level=" + level + "]";
	}

}
