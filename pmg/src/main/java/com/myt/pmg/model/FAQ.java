package com.myt.pmg.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "faq")
public class FAQ extends BasicEntity {
	private String question;
	private String answer;
	private boolean active;
	private String mediaPath;

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getMediaPath() {
		return mediaPath;
	}

	public void setMediaPath(String mediaPath) {
		this.mediaPath = mediaPath;
	}

	@Override
	public String toString() {
		return "FAQ [question=" + question + ", answer=" + answer + ", active="
				+ active + ", mediaPath=" + mediaPath + "]";
	}

}
