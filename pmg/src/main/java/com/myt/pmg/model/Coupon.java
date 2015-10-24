package com.myt.pmg.model;

public class Coupon extends BasicEntity {
	private String code;
	private String benefits;
	private String reqiurements;
	private boolean available;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public String getReqiurements() {
		return reqiurements;
	}

	public void setReqiurements(String reqiurements) {
		this.reqiurements = reqiurements;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	@Override
	public String toString() {
		return "Coupon [code=" + code + ", benefits=" + benefits
				+ ", reqiurements=" + reqiurements + ", available=" + available
				+ "]";
	}

}
