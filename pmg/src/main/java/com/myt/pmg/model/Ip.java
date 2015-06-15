package com.myt.pmg.model;

import java.util.Date;

public class Ip extends BasicEntity {
	private String ip;
	private String userid;
	private boolean banned = false;
	private Date accessTime;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public boolean isBanned() {
		return banned;
	}

	public void setBanned(boolean banned) {
		this.banned = banned;
	}

	public Date getAccessTime() {
		return accessTime;
	}

	public void setAccessTime(Date accessTime) {
		this.accessTime = accessTime;
	}

	@Override
	public String toString() {
		return "Ip [ip=" + ip + ", userid=" + userid + ", banned=" + banned
				+ ", accessTime=" + accessTime + "]";
	}

}
