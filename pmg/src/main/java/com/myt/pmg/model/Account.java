package com.myt.pmg.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "account")
public class Account extends BasicEntity {

	private String userId;

	private int linksSubmitted=0;

	// ToDO change to datatimme
	private String[] bestTime;

	// ToDo change it to calendar
	private String[] days;
	private String duration;

	private String dailyBroadcastingRate;

	// ToDo change it to calendar
	private String[] vacation;

	private int earnings;

	private int weektarget;

	private int monthtarget;

	public int getMonthtarget() {
		return monthtarget;
	}

	public void setMonthtarget(int monthtarget) {
		this.monthtarget = monthtarget;
	}

	/**
	 * @return the bestTime
	 */
	public String[] getBestTime() {
		return bestTime;
	}

	/**
	 * @param bestTime
	 *            the bestTime to set
	 */
	public void setBestTime(String[] bestTime) {
		this.bestTime = bestTime;
	}

	/**
	 * @return the days
	 */
	public String[] getDays() {
		return days;
	}

	/**
	 * @param days
	 *            the days to set
	 */
	public void setDays(String[] days) {
		this.days = days;
	}

	/**
	 * @return the duration
	 */
	public String getDuration() {
		return duration;
	}

	/**
	 * @param duration
	 *            the duration to set
	 */
	public void setDuration(String duration) {
		this.duration = duration;
	}

	/**
	 * @return the dailyBroadcastingRate
	 */
	public String getDailyBroadcastingRate() {
		return dailyBroadcastingRate;
	}

	/**
	 * @param dailyBroadcastingRate
	 *            the dailyBroadcastingRate to set
	 */
	public void setDailyBroadcastingRate(String dailyBroadcastingRate) {
		this.dailyBroadcastingRate = dailyBroadcastingRate;
	}

	/**
	 * @return the vacation
	 */
	public String[] getVacation() {
		return vacation;
	}

	/**
	 * @param vacation
	 *            the vacation to set
	 */
	public void setVacation(String[] vacation) {
		this.vacation = vacation;
	}

	/**
	 * @return the earnings
	 */
	public int getEarnings() {
		return earnings;
	}

	/**
	 * @param earnings
	 *            the earnings to set
	 */
	public void setEarnings(int earnings) {
		this.earnings = earnings;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the weektarget
	 */
	public int getWeektarget() {
		return weektarget;
	}

	/**
	 * @param weektarget
	 *            the weektarget to set
	 */
	public void setWeektarget(int weektarget) {
		this.weektarget = weektarget;
	}

	@Override
	public String toString() {
		String var = "LinkSubmitted" + getLinksSubmitted() + "Best Time From" + bestTime[0] + ",Best Time TO"
				+ bestTime[1];
		System.out.println(var);
		return var;
	}

	/**
	 * @return the linksSubmitted
	 */
	public int getLinksSubmitted() {
		return linksSubmitted;
	}

	/**
	 * @param linksSubmitted
	 *            the linksSubmitted to set
	 */
	public void setLinksSubmitted(int linksSubmitted) {
		this.linksSubmitted = linksSubmitted;
	}
}
