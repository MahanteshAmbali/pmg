package com.myt.pmg.dto;

import java.util.Date;

public class LinkVerifierDTO {

	private String userName;
	private String myAdurl;
	private String domain;
	private Integer linkId;
	private String proofFileName;
	private Date submissionDate;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getLinkId() {
		return linkId;
	}

	public void setLinkId(int linkId) {
		this.linkId = linkId;
	}

	public String getProofFileName() {
		return proofFileName;
	}

	public void setProofFileName(String proofFileName) {
		this.proofFileName = proofFileName;
	}

	public Date getSubmissionDate() {
		return submissionDate;
	}

	public void setSubmissionDate(Date submissionDate) {
		this.submissionDate = submissionDate;
	}

	@Override
	public String toString() {
		return "LinkVerifier [userName=" + userName + ", myAdurl=" + getMyAdurl() + ", domain=" + getDomain()
				+ ", linkId=" + linkId + ", proofFileName=" + proofFileName + ", submissionDate=" + submissionDate
				+ "]";
	}

	/**
	 * @return the myAdurl
	 */
	public String getMyAdurl() {
		return myAdurl;
	}

	/**
	 * @param myAdurl
	 *            the myAdurl to set
	 */
	public void setMyAdurl(String myAdurl) {
		this.myAdurl = myAdurl;
	}

	/**
	 * @return the domain
	 */
	public String getDomain() {
		return domain;
	}

	/**
	 * @param domain
	 *            the domain to set
	 */
	public void setDomain(String domain) {
		this.domain = domain;
	}

}
