package com.myt.pmg.dto;

import java.util.Date;

import com.myt.pmg.model.Link.Linkstatus;

public class MyClickStatusDto {

	private Date clickedon;
	private String ownerId;
	private int lid;
	private Linkstatus linkstatus;
	private String verifierUrl;

	/**
	 * @return the clickedon
	 */
	public Date getClickedon() {
		return clickedon;
	}

	/**
	 * @param clickedon
	 *            the clickedon to set
	 */
	public void setClickedon(Date clickedon) {
		this.clickedon = clickedon;
	}

	/**
	 * @return the ownerId
	 */
	public String getOwnerId() {
		return ownerId;
	}

	/**
	 * @param ownerId
	 *            the ownerId to set
	 */
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	/**
	 * @return the lid
	 */
	public int getLid() {
		return lid;
	}

	/**
	 * @param lid
	 *            the lid to set
	 */
	public void setLid(int lid) {
		this.lid = lid;
	}

	/**
	 * @return the linkstatus
	 */
	public Linkstatus getLinkstatus() {
		System.out.println("Get Link STatus:" + linkstatus.name());
		return linkstatus;
	}

	/**
	 * @param linkstatus
	 *            the linkstatus to set
	 */
	public void setLinkstatus(Linkstatus linkstatus) {
		System.out.println("Set Link STatus:" + linkstatus.name());
		this.linkstatus = linkstatus;
	}

	/**
	 * @return the verifierUrl
	 */
	public String getVerifierUrl() {
		return verifierUrl;
	}

	/**
	 * @param verifierUrl the verifierUrl to set
	 */
	public void setVerifierUrl(String verifierUrl) {
		this.verifierUrl = verifierUrl;
	}

}
