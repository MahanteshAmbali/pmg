package com.myt.pmg.dto;

public class AdminDashboardStats {
	private long totalUsers;
	private long activeUsers;
	private long onlineUsers;
	private long bannedUsers;
	private long registeredToday;
	private long pendingClicks;
	private long clicksToday;
	private long clicksMonth;
	private long resolvedReports;
	private long unresolvedReports;
	private long boltUsers;
	private long rabbitUsers;
	private long turtleUsers;
	private long snailUsers;

	public long getTotalUsers() {
		return totalUsers;
	}

	public void setTotalUsers(long totalUsers) {
		this.totalUsers = totalUsers;
	}

	public long getActiveUsers() {
		return activeUsers;
	}

	public void setActiveUsers(long activeUsers) {
		this.activeUsers = activeUsers;
	}

	public long getOnlineUsers() {
		return onlineUsers;
	}

	public void setOnlineUsers(long onlineUsers) {
		this.onlineUsers = onlineUsers;
	}

	public long getBannedUsers() {
		return bannedUsers;
	}

	public void setBannedUsers(long bannedUsers) {
		this.bannedUsers = bannedUsers;
	}

	public long getRegisteredToday() {
		return registeredToday;
	}

	public void setRegisteredToday(long registeredToday) {
		this.registeredToday = registeredToday;
	}

	public long getPendingClicks() {
		return pendingClicks;
	}

	public void setPendingClicks(long pendingClicks) {
		this.pendingClicks = pendingClicks;
	}

	public long getClicksToday() {
		return clicksToday;
	}

	public void setClicksToday(long clicksToday) {
		this.clicksToday = clicksToday;
	}

	public long getClicksMonth() {
		return clicksMonth;
	}

	public void setClicksMonth(long clicksMonth) {
		this.clicksMonth = clicksMonth;
	}

	public long getResolvedReports() {
		return resolvedReports;
	}

	public void setResolvedReports(long resolvedReports) {
		this.resolvedReports = resolvedReports;
	}

	public long getUnresolvedReports() {
		return unresolvedReports;
	}

	public void setUnresolvedReports(long unresolvedReports) {
		this.unresolvedReports = unresolvedReports;
	}

	public long getBoltUsers() {
		return boltUsers;
	}

	public void setBoltUsers(long boltUsers) {
		this.boltUsers = boltUsers;
	}

	public long getRabbitUsers() {
		return rabbitUsers;
	}

	public void setRabbitUsers(long rabbitUsers) {
		this.rabbitUsers = rabbitUsers;
	}

	public long getTurtleUsers() {
		return turtleUsers;
	}

	public void setTurtleUsers(long turtleUsers) {
		this.turtleUsers = turtleUsers;
	}

	public long getSnailUsers() {
		return snailUsers;
	}

	public void setSnailUsers(long snailUsers) {
		this.snailUsers = snailUsers;
	}

	@Override
	public String toString() {
		return "AdminDashboardStats [totalUsers=" + totalUsers
				+ ", activeUsers=" + activeUsers + ", onlineUsers="
				+ onlineUsers + ", bannedUsers=" + bannedUsers
				+ ", registeredToday=" + registeredToday + ", pendingClicks="
				+ pendingClicks + ", clicksToday=" + clicksToday
				+ ", clicksMonth=" + clicksMonth + ", resolvedReports="
				+ resolvedReports + ", unresolvedReports=" + unresolvedReports
				+ ", boltUsers=" + boltUsers + ", rabbitUsers=" + rabbitUsers
				+ ", turtleUsers=" + turtleUsers + ", snailUsers=" + snailUsers
				+ "]";
	}

}
