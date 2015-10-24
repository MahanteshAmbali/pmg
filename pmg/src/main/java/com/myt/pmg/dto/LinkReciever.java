package com.myt.pmg.dto;

public class LinkReciever {

	String linkId;
	String linkUrl;
	String userId;
	String userName;

	public LinkReciever(String linkId, String linkUrl, String userId,
			String userName) {
		this.linkId = linkId;
		this.linkUrl = linkUrl;
		this.userId = userId;
		this.userName = userName;
	}

	public String getLinkId() {
		return linkId;
	}

	public void setLinkId(String linkId) {
		this.linkId = linkId;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "LinkReciever [linkId=" + linkId + ", linkUrl=" + linkUrl
				+ ", userId=" + userId + ", userName=" + userName + "]";
	}

}
