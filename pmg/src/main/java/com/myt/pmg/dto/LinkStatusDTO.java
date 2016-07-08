package com.myt.pmg.dto;

import java.util.Date;

public class LinkStatusDTO {

	private long lid;

	private Date date;

	private String myUrl;

	private String keyword;

	public enum Linkstatus {
		ACTIVE, NEWLINK, BROADCASTED, PENDING, CLICKED, VERIFIED, AWARDED, INACTIVE, EXPIRED, DELETED_BY_ADMIN;
	}

	private Linkstatus linkstatus;

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	/**
	 * @return the myUrl
	 */
	public String getMyUrl() {
		return myUrl;
	}

	/**
	 * @param myUrl
	 *            the myUrl to set
	 */
	public void setMyUrl(String myUrl) {
		this.myUrl = myUrl;
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
	 * @return the lid
	 */
	public long getLid() {
		return lid;
	}

	/**
	 * @param lid
	 *            the lid to set
	 */
	public void setLid(long lid) {
		this.lid = lid;
	}

	/**
	 * @return the linkstatus
	 */
	public Linkstatus getLinkstatus() {
		return linkstatus;
	}

	/**
	 * @param linkstatus the linkstatus to set
	 */
	public void setLinkstatus(Linkstatus linkstatus) {
		this.linkstatus = linkstatus;
	}

}
