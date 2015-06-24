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
	private int lid=0;
	private boolean verified = false;
	private boolean active = false;
	private int approved = 0;
	private Date creationTime;
	private Date lastTraveredTime = null;

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
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

	/**
	 * @return the verified
	 */
	public boolean isVerified() {
		return verified;
	}

	/**
	 * @param verified the verified to set
	 */
	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	/**
	 * @return the active
	 */
	public boolean isActive() {
		return active;
	}

	/**
	 * @param active the active to set
	 */
	public void setActive(boolean active) {
		this.active = active;
	}

	/**
	 * @return the approved
	 */
	public int getApproved() {
		return approved;
	}

	/**
	 * @param approved the approved to set
	 */
	public void setApproved(int approved) {
		this.approved = approved;
	}

	/**
	 * @return the creationTime
	 */
	public Date getCreationTime() {
		return creationTime;
	}

	/**
	 * @param creationTime the creationTime to set
	 */
	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	/**
	 * @return the lastTraveredTime
	 */
	public Date getLastTraveredTime() {
		return lastTraveredTime;
	}

	/**
	 * @param lastTraveredTime the lastTraveredTime to set
	 */
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
}
