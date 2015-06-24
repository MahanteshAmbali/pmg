package com.myt.pmg.dto;

import java.io.Serializable;
import java.util.Date;

import com.myt.pmg.model.User;

public class LinkBroadcasterDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6084430244328588375L;

	private int lid;

	private String url;

	private String keyword;

	private Date submissionDate;

	private User postedBy;

	private User postedTo;

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
	 * @return the submissionDate
	 */
	public Date getSubmissionDate() {
		return submissionDate;
	}

	/**
	 * @param submissionDate
	 *            the submissionDate to set
	 */
	public void setSubmissionDate(Date submissionDate) {
		this.submissionDate = submissionDate;
	}

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

}
