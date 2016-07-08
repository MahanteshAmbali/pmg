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
	private String adurl;
	private int lid = 0;

	

	public enum Linkstatus {
		ACTIVE,NEWLINK, BROADCASTED, PENDING, CLICKED, VERIFIED, AWARDED, INACTIVE, EXPIRED, DELETED_BY_ADMIN;
	}

	private Linkstatus linkstatus;

	private String keyword;

	private String videourl;


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
	 * @param userId
	 *            the userId to set
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
	 * @param url
	 *            the url to set
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
	 * @param lid
	 *            the lid to set
	 */
	public void setLid(int lid) {
		this.lid = lid;
	}

	/**
	 * @return the approved
	 */
	public int getApproved() {
		return approved;
	}

	/**
	 * @param approved
	 *            the approved to set
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
	 * @param creationTime
	 *            the creationTime to set
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
	 * @param lastTraveredTime
	 *            the lastTraveredTime to set
	 */
	public void setLastTraveredTime(Date lastTraveredTime) {
		this.lastTraveredTime = lastTraveredTime;
	}

	/**
	 * @return the videourl
	 */
	public String getVideourl() {
		return videourl;
	}

	/**
	 * @param videourl
	 *            the videourl to set
	 */
	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

	/**
	 * @return the keyword
	 */
	public String getKeyword() {
		return keyword;
	}

	/**
	 * @param keyword
	 *            the keyword to set
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	/**
	 * @return the adurl
	 */
	public String getAdurl() {
		return adurl;
	}

	/**
	 * @param adurl
	 *            the adurl to set
	 */
	public void setAdurl(String adurl) {
		this.adurl = adurl;
	}

	/**
	 * @return the linkstatus
	 */
	public Linkstatus getLinkstatus() {
		return linkstatus;
	}

	/**
	 * @param linkstatus
	 *            the linkstatus to set
	 */
	public void setLinkstatus(Linkstatus linkstatus) {
		this.linkstatus = linkstatus;
	}

	/*
	 * @Override public String toString() { return "Link [userId=" + userId +
	 * ", url=" + url + ", verified=" + verified + ", active=" + active +
	 * ", isBroadcasted=" + isBroadcasted() + ", approved=" + approved +
	 * ", creationTime=" + creationTime + ", lastTraveredTime=" +
	 * lastTraveredTime + "]"; }
	 */

}
