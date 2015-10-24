package com.myt.pmg.dto;

public class LinkStatus {
	private float linksClicked;
	private float linksVerified;
	private float linksVerificationPending;
	private float linksServed;
	private float linksApproved;
	private float linksDisapproved;

	public float getLinksClicked() {
		return linksClicked;
	}

	public void setLinksClicked(float linksClicked) {
		this.linksClicked = linksClicked;
	}

	public float getLinksVerified() {
		return linksVerified;
	}

	public void setLinksVerified(float linksVerified) {
		this.linksVerified = linksVerified;
	}

	public float getLinksVerificationPending() {
		return linksVerificationPending;
	}

	public void setLinksVerificationPending(float linksVerificationPending) {
		this.linksVerificationPending = linksVerificationPending;
	}

	public float getLinksServed() {
		return linksServed;
	}

	public void setLinksServed(float linksServed) {
		this.linksServed = linksServed;
	}

	public float getLinksApproved() {
		return linksApproved;
	}

	public void setLinksApproved(float linksApproved) {
		this.linksApproved = linksApproved;
	}

	public float getLinksDisapproved() {
		return linksDisapproved;
	}

	public void setLinksDisapproved(float linksDisapproved) {
		this.linksDisapproved = linksDisapproved;
	}

	@Override
	public String toString() {
		return "LinkStatus [linksClicked=" + linksClicked + ", linksVerified="
				+ linksVerified + ", linksVerificationPending="
				+ linksVerificationPending + ", linksServed=" + linksServed
				+ ", linksApproved=" + linksApproved + ", linksDisapproved="
				+ linksDisapproved + "]";
	}

	
}