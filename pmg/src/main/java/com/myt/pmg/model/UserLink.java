package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "userlink")
public class UserLink extends BasicEntity {

	// @Indexed(unique = false)
	private String userId = null;
	private String broadcasterUserId = null;
	private String linkId = null;
//	private boolean clicked = false;
//	private String proofId = null;
//	private String videourl
	private Date linkbroadcastingDate;
	private Date linkrecvDate;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLinkId() {
		return linkId;
	}

	public void setLinkId(String linkId) {
		this.linkId = linkId;
	}

	
	public String getBroadcasterUserId() {
		return broadcasterUserId;
	}

	public void setBroadcasterUserId(String broadcasterUserId) {
		this.broadcasterUserId = broadcasterUserId;
	}

	/**
	 * @return the linkrecvDate
	 */
	public Date getLinkrecvDate() {
		return linkrecvDate;
	}

	/**
	 * @param linkrecvDate
	 *            the linkrecvDate to set
	 */
	public void setLinkrecvDate(Date linkrecvDate) {
		this.linkrecvDate = linkrecvDate;
	}

	

	/**
	 * @return the linkbroadcastingDate
	 */
	public Date getLinkbroadcastingDate() {
		return linkbroadcastingDate;
	}

	/**
	 * @param linkbroadcastingDate
	 *            the linkbroadcastingDate to set
	 */
	public void setLinkbroadcastingDate(Date linkbroadcastingDate) {
		this.linkbroadcastingDate = linkbroadcastingDate;
	}
}
