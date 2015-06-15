package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "proof")
public class Proof extends BasicEntity {
	private String userId;
	private String linkId;
	private String fileName;
	private Date submissionDate;

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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getSubmissionDate() {
		return submissionDate;
	}

	public void setSubmissionDate(Date submissionDate) {
		this.submissionDate = submissionDate;
	}

	@Override
	public String toString() {
		return "Proof [userId=" + userId + ", linkId=" + linkId + ", fileName="
				+ fileName + ", submissionDate=" + submissionDate + "]";
	}

}
