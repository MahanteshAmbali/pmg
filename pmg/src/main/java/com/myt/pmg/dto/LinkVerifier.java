package com.myt.pmg.dto;

import java.util.Date;

public class LinkVerifier {

	private String userName;
	private String url;
	private String adUrl;
	private String linkId;
	private String proofFileName;
	private Date submissionDate;

	public LinkVerifier(String userName, String url, String adUrl,
			String linkId, String proofFileName, Date submissionDate) {
		this.userName = userName;
		this.url = url;
		this.adUrl = adUrl;
		this.linkId = linkId;
		this.proofFileName = proofFileName;
		this.submissionDate = submissionDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getAdUrl() {
		return adUrl;
	}

	public void setAdUrl(String adUrl) {
		this.adUrl = adUrl;
	}

	public String getLinkId() {
		return linkId;
	}

	public void setLinkId(String linkId) {
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
		return "LinkVerifier [userName=" + userName + ", url=" + url
				+ ", adUrl=" + adUrl + ", linkId=" + linkId
				+ ", proofFileName=" + proofFileName + ", submissionDate="
				+ submissionDate + "]";
	}

}
