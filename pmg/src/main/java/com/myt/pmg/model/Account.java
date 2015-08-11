package com.myt.pmg.model;

import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "account")
public class Account extends BasicEntity {

	@Indexed(unique = true)
	private String userEmail;

	@Indexed(unique = true)
	private String domain;

	private String linksSubmitted;

	// ToDO change to datatimme
	private String[] bestTime;

	// ToDo change it to calendar
	private String[] days;
	private String duration;

	private String dailyBroadcastingRate;

	// ToDo change it to calendar
	private String[] vacation;

	private int earnings;

	/**
	 * @return the domain
	 */
	public String getDomain() {
		return domain;
	}

	/**
	 * @param domain
	 *            the domain to set
	 */
	public void setDomain(String domain) {
		this.domain = domain;
	}

	/**
	 * @return the linksSubmitted
	 */
	public String getLinksSubmitted() {
		return linksSubmitted;
	}

	/**
	 * @param linksSubmitted
	 *            the linksSubmitted to set
	 */
	public void setLinksSubmitted(String linksSubmitted) {
		this.linksSubmitted = linksSubmitted;
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
	 * @return the userEmail
	 */
	public String getUserEmail() {
		return userEmail;
	}

	/**
	 * @param userEmail the userEmail to set
	 */
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("userEmail=" + getUserEmail());
		sb.append(" domain=" + domain);
		sb.append(" links submitted=" + linksSubmitted);
		sb.append(" bestTime=" + bestTime[0]);
		sb.append(" days=" + days);
		sb.append(" duration=" + duration);
		sb.append(" dailyBroadcastingRate = " + dailyBroadcastingRate);
		sb.append(" vacation=" + vacation);
		sb.append(" earnings=" + earnings);

		return sb.toString();
	}
}
