package com.myt.pmg.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "feedback")
public class Feedback extends BasicEntity {
	private String userId;
	private int rating;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Feedback [userId=" + userId + ", rating=" + rating + "]";
	}

}
