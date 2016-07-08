package com.myt.pmg.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.AccountDao;
import com.myt.pmg.dao.UserLinkDao;
import com.myt.pmg.model.Account;
import com.myt.pmg.model.UserLink;

@Service
public class UserLinkService {

	@Autowired
	private UserLinkDao userLinkDao;

	@Autowired
	private AccountDao accountDao;

	public void addUserLink(UserLink userLink) {
		userLinkDao.add(userLink);
	}

	public List<UserLink> getUserLinkList(String id) {
		return userLinkDao.findAllById(id);
	}

	public long countLinksPostedToUser(String userid) {
		if (userLinkDao.countLinksPostedToUser(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUser(userid);
	}

	public long countLinksPostedToUserAndClicked(String userid) {
		if (userLinkDao.countLinksPostedToUserAndClicked(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUserAndClicked(userid);
	}

	public long countLinksPostedToUserAndVerified(String userid) {
		if (userLinkDao.countLinksPostedToUserAndVerified(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUserAndVerified(userid);
	}

	public long countLinksServedByUser(String userid) {
		if (userLinkDao.countLinksServedByUser(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUser(userid);
	}

	public long countLinksServedByUserAndApproved(String userid) {
		if (userLinkDao.countLinksServedByUserAndApproved(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUserAndApproved(userid);
	}

	public long countLinksServedByUserAndDisapproved(String userid) {
		if (userLinkDao.countLinksServedByUserAndDisapproved(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUserAndDisapproved(userid);
	}

	public boolean linkPosted(String userid, String linkid) {

		UserLink userlink = new UserLink();
		userlink.setUserId(userid);
		userlink.setLinkId(linkid);
		// userlink.setClicked(false);
		// userlink.setVerified(false);
		// addUserLink(userlink);
		// return userLinkDao.linkPosted(userid, linkid);
		return true;
	}

	public boolean linkPosted(String userid, String linkid, String broadcasteruserid, String email) {
		boolean isEligible = false;
		UserLink userlink = new UserLink();
		userlink.setUserId(userid);
		userlink.setLinkId(linkid);
		userlink.setBroadcasterUserId(broadcasteruserid);
		userlink.setLinkrecvDate(new Date());
		userlink.setLinkbroadcastingDate(new Date());

		System.out.println("Broadcasting the link details are>>>>>>>>");

		System.out.println("Total Rows in MongoDB for the collection ::UserLink"
				+ userLinkDao.countRows(UserLink.class, broadcasteruserid, userid));

		if (userLinkDao.countRows(UserLink.class, broadcasteruserid, userid) == 0) {
			isEligible = true;
		} else if (userLinkDao.countRows(UserLink.class, broadcasteruserid, userid) > 0) {
			isEligible = iseligibleforbroadcasting(broadcasteruserid, userid);
		}
		
		if(!isEligible) return false;

		// Logic to add the Account Page Validation......
		System.out.println("broadcasteruserid:::" + broadcasteruserid);
		System.out.println("broadcasterEmailID:::" + email);

		Account account = accountDao.findByUserId(email);

		try {
			if (account != null)
				isEligible = validatetheAccount(account);
			else
				System.out.println("Please set up the account page before Broadcasting!!!!!!!");
		} catch (ParseException e) {
			e.printStackTrace();
			return false;
		}
		System.out.println("After Account Validation ::isEligible??" + isEligible);

		System.out.println("Is User Eligible ?" + isEligible);
		// Logic to add the link i,e broadcast after 24 hours
		if (isEligible) {
			addUserLink(userlink);
			return true;
		}
		return false;
	}

	private boolean validatetheAccount(Account account) throws ParseException {
		String[] besttime = account.getBestTime();
		DateFormat df = new SimpleDateFormat("HH:mm");

		Date date1 = df.parse(besttime[0]);
		Date date2 = df.parse(besttime[1]);
		Date datenow = df.parse(df.format(new Date()));

		Calendar cal1 = Calendar.getInstance();
		cal1.setTime(date1);
		Calendar cal2 = Calendar.getInstance();
		cal2.setTime(date2);
		Calendar now = Calendar.getInstance();
		now.setTime(datenow);

		System.out.println("Start Time:::" + df.format(date1.getTime()));
		System.out.println("End Time::::" + df.format(date2.getTime()));
		System.out.println("Current Time :: " + df.format(now.getTime()));

		if (now.before(cal2) && now.after(cal1)) {
			// User is eligible for Broadcasting!!!!!
			System.out.println("User is eligible for Broadcasting!!!!!");
			return true;
		}
		System.out.println("User is not eligible for Broadcasting!!!!!");
		return false;
	}

	public static void main(String[] args) {
		try {

			SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
			Date date1 = sdf.parse("09:15");
			Date date2 = sdf.parse("21:17");
			Date datenow = sdf.parse(sdf.format(new Date()));

			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			Calendar now = Calendar.getInstance();

			now.setTime(datenow);
			cal1.setTime(date1);
			cal2.setTime(date2);

			System.out.println(sdf.format(date1));
			System.out.println(sdf.format(date2));
			System.out.println(sdf.format(datenow));

			if (now.after(cal1)) {
				System.out.println("NOw is after Time2");
			}

			if (now.before(cal2)) {
				System.out.println("Now is before Time2");
			}

			if (cal1.equals(cal2)) {
				System.out.println("Time1 is equal Time2");
			}

		} catch (ParseException ex) {
			ex.printStackTrace();
		}
	}

	public UserLink findByLinkId(String linkid) {
		return userLinkDao.findByLinkId(linkid);
	}

	public List<UserLink> findByUserid(String userid) {
		return userLinkDao.findByUserId(userid);
	}

	public List<UserLink> findByBroadcasterId(String broadcasterId) {
		return userLinkDao.findByBroadcasterId(broadcasterId);
	}

	public void update(UserLink userlink) {
		userLinkDao.update(userlink);
	}

	public List<UserLink> findAll() {
		return userLinkDao.findAll();
	}

	public long countClicksOnLink(String linkId) {
		return userLinkDao.countClicksOnLink(linkId);
	}

	private boolean iseligibleforbroadcasting(String broadcastinguserid, String userid) {
		long MILLIS_PER_DAY = 60 * 60 * 1000L;
		Date now = new Date();

		UserLink userlink = userLinkDao.getlatestdate(broadcastinguserid, userid);
		Date latestlinkBroadcastedDate = userlink.getLinkbroadcastingDate();

		System.out.println("Present Date and Time" + now);
		System.out.println("Last Link Broadcasted date" + latestlinkBroadcastedDate);

		return (now.getTime() - latestlinkBroadcastedDate.getTime()) > MILLIS_PER_DAY;

	}

}
