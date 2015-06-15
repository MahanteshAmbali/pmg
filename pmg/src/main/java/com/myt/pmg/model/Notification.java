package com.myt.pmg.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "notif")
public class Notification extends BasicEntity {
	private String userId;
	private String message;
	private int type;
	private Date date;
	private boolean read;


	public Notification(String userId, String message, int type, Date date) {
		this.userId = userId;
		this.message = message;
		this.type = type;
		this.date = date;
		this.read = false;
	}

	public Notification() {
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	
	public boolean isRead() {
		return read;
	}

	public void setRead(boolean read) {
		this.read = read;
	}

	@Override
	public String toString() {
		return "Notification [userId=" + userId + ", message=" + message
				+ ", type=" + type + ", date=" + date + ", read=" + read + "]";
	}

}
