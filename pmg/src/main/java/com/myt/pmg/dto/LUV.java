package com.myt.pmg.dto;

import java.util.Date;

public class LUV {
	private Date creationDate;
	private String linkId;
	private String username;
	private String linkUrl;
	private long noOfClicks;
	private long days;
	private boolean active;

	public LUV(Date creationDate, String linkId, String username,
			String linkUrl, long noOfClicks, long days, boolean active) {
		this.creationDate = creationDate;
		this.linkId = linkId;
		this.username = username;
		this.linkUrl = linkUrl;
		this.noOfClicks = noOfClicks;
		this.days = days;
		this.active = active;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public String getLinkId() {
		return linkId;
	}

	public void setLinkId(String linkId) {
		this.linkId = linkId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public long getNoOfClicks() {
		return noOfClicks;
	}

	public void setNoOfClicks(long noOfClicks) {
		this.noOfClicks = noOfClicks;
	}

	public long getDays() {
		return days;
	}

	public void setDays(long days) {
		this.days = days;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}