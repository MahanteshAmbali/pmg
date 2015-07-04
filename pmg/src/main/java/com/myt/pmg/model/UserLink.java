package com.myt.pmg.model;

import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="userlink")
public class UserLink extends BasicEntity {
	
	@Indexed(unique = false)
	private String userId=null;
	private String receiveruserId=null;
	private String linkId=null;
	private boolean verified = false;
	private boolean clicked = false;
	private String proofId = null;

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

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public boolean isClicked() {
		return clicked;
	}

	public void setClicked(boolean clicked) {
		this.clicked = clicked;
	}

	public String getProofId() {
		return proofId;
	}

	public void setProofId(String proofId) {
		this.proofId = proofId;
	}

	public String getReceiveruserId() {
		return receiveruserId;
	}

	public void setReceiveruserId(String receiveruserId) {
		this.receiveruserId = receiveruserId;
	}

	@Override
	public String toString() {
		return "UserLink [userId=" + userId + ", linkId=" + linkId
				+ ", verified=" + verified + ", clicked=" + clicked
				+ ", proofId=" + proofId + "]";
	}

}
