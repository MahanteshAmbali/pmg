package com.myt.pmg.dto;

import java.util.Date;

public class LinkRecieverDTO {

	private Integer lid;
	private String username;
	private Date linkrecvdDate;
	private String adurl;
	private String videourl;

	/**
	 * @return the lid
	 */
	public Integer getLid() {
		return lid;
	}

	/**
	 * @param lid
	 *            the lid to set
	 */
	public void setLid(Integer lid) {
		this.lid = lid;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the linkrecvdDate
	 */
	public Date getLinkrecvdDate() {
		return linkrecvdDate;
	}

	/**
	 * @param linkrecvdDate
	 *            the linkrecvdDate to set
	 */
	public void setLinkrecvdDate(Date linkrecvdDate) {
		this.linkrecvdDate = linkrecvdDate;
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
}
