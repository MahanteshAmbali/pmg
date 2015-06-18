package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @author Arpit
 *
 */
@Document(collection = "link")
public class Link extends BasicEntity {

	private String userId;
	private String url;
	private int lid;
	private boolean verified = false;
	private boolean active = false;
	private int approved = 0;
	private Date creationTime;
	private Date lastTraveredTime = null;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getApproved() {
		return approved;
	}

	public void setApproved(int approved) {
		this.approved = approved;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Date getLastTraveredTime() {
		return lastTraveredTime;
	}

	public void setLastTraveredTime(Date lastTraveredTime) {
		this.lastTraveredTime = lastTraveredTime;
	}

	@Override
	public String toString() {
		return "Link [userId=" + userId + ", url=" + url + ", verified="
				+ verified + ", active=" + active + ", approved=" + approved
				+ ", creationTime=" + creationTime + ", lastTraveredTime="
				+ lastTraveredTime + "]";
	}

	/**
	 * @return the lid
	 */
	public int getLid() {
		return lid;
	}

	/**
	 * @param lid the lid to set
	 */
	public void setLid(int lid) {
		this.lid = lid;
	}

}
