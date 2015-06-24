package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "userLinkBroadcaster")
public class UserLinkBroadcaster extends BasicEntity {

	private User postedBy;

	private User postedTo;

	private int lid;

	private String url;

	private Date broadcastDate;

	private Date linkClicked;

	/**
	 * @return the postedBy
	 */
	public User getPostedBy() {
		return postedBy;
	}

	/**
	 * @param postedBy
	 *            the postedBy to set
	 */
	public void setPostedBy(User postedBy) {
		this.postedBy = postedBy;
	}

	/**
	 * @return the postedTo
	 */
	public User getPostedTo() {
		return postedTo;
	}

	/**
	 * @param postedTo
	 *            the postedTo to set
	 */
	public void setPostedTo(User postedTo) {
		this.postedTo = postedTo;
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
	 * @return the broadcastDate
	 */
	public Date getBroadcastDate() {
		return broadcastDate;
	}

	/**
	 * @param broadcastDate
	 *            the broadcastDate to set
	 */
	public void setBroadcastDate(Date broadcastDate) {
		this.broadcastDate = broadcastDate;
	}

	/**
	 * @return the linkClicked
	 */
	public Date getLinkClicked() {
		return linkClicked;
	}

	/**
	 * @param linkClicked
	 *            the linkClicked to set
	 */
	public void setLinkClicked(Date linkClicked) {
		this.linkClicked = linkClicked;
	}

	// postedBy postedTo lid url broadcastDate linkClicked
	@Override
	public String toString() {
		return "UserLink [User Email postedBy=" + postedBy.getEmail()
				+ ", User Email postedTo=" + postedTo.getEmail() + ", url="
				+ url + ", lid=" + lid + ", broadcastDate=" + broadcastDate
				+ ",linkClicked=" + linkClicked + "]";
	}

}
