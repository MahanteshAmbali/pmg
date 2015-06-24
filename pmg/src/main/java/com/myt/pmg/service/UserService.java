package com.myt.pmg.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.stereotype.Service;

import com.myt.pmg.chat.XmppManager;
import com.myt.pmg.dao.UserDao;
import com.myt.pmg.dto.AdminDashboardStats;
import com.myt.pmg.dto.ContributorData;
import com.myt.pmg.dto.MembersTableData;
import com.myt.pmg.dto.StatsByCountry;
import com.myt.pmg.model.Link;
import com.myt.pmg.model.Proof;
import com.myt.pmg.model.User;
import com.myt.pmg.model.User.Level;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	private ReportService reportService;
	private ProofService proofService;
	private SessionRegistryImpl sessionRegistry;
	private FeedbackService feedbackService;
	private UserLinkService userlinkService;
	private IpService ipService;
	private LinkService linkService;

	private XmppManager xmppManager;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setLinkService(LinkService linkService) {
		this.linkService = linkService;
	}

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	public void setSessionRegistry(SessionRegistryImpl sessionRegistry) {
		this.sessionRegistry = sessionRegistry;
	}

	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}

	public void setUserlinkService(UserLinkService userlinkService) {
		this.userlinkService = userlinkService;
	}

	public void setIpService(IpService ipService) {
		this.ipService = ipService;
	}

	public void setXmppManager(XmppManager xmppManager) {
		this.xmppManager = xmppManager;
	}

	public boolean exists(User user) {
		return userDao.exists(user);
	}

	public void createUser(User user) {
		userDao.add(user);
		// xmppManager.createUser(user);
	}

	public boolean isUserEligible(User user) {
		return true;
	}

	public List<User> findAll() {
		return userDao.findAll();
	}

	public User findByUsername(String username) {
		return userDao.findUserByUsername(username);

	}

	public User findById(String id) {
		return userDao.findUserById(id);

	}

	public User findByEmail(String email) {
		return userDao.findUserByEmail(email);

	}

	public boolean usernameTaken(String username) {
		return userDao.usernameExists(username);
	}

	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	public List<User> findAllActiveUsers() {
		return userDao.findAllActiveUsers();
	}

	public List<User> getTopUsers(int n) {
		n = 5;
		List<User> userList = findAllActiveUsers();
		Map<String, Float> map = new HashMap<String, Float>();
		for (User user : userList) {
			Float count = (float) ((userlinkService
					.countLinksPostedToUserAndVerified(user.getId()) * 3 + userlinkService
					.countLinksServedByUser(user.getId()) * 2) / 5);
			map.put(user.getId(), (count == null) ? 0 : count);
		}
		List<User> userList2 = new ArrayList<User>();
		Map<String, Float> treeMap = sortByComparator2(map);
		int i = 0;
		for (Map.Entry<String, Float> entry : treeMap.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : "
					+ entry.getValue());
			userList2.add(findById(entry.getKey()));
			if (i == n) {
				break;
			}
		}
		return userList2;
	}

	public List<ContributorData> getTopContributors(String userid, int n) {
		n = 5;
		// find the links created by user
		List<Link> linkList = linkService.getLinksPostedByUser(userid);
		// find proofs for each link
		List<Proof> proofList = new ArrayList<Proof>();
		for (Link link : linkList) {
			proofList.addAll(proofService.getProofsForLinkId(link.getId()));
		}
		// sort by userid
		String userid2;
		Map<String, Integer> map = new HashMap<String, Integer>();

		for (Proof proof : proofList) {
			userid2 = proof.getUserId();
			Integer count = map.get(userid2);
			map.put(userid2, (count == null) ? 1 : count + 1);
		}
		Map<String, Integer> treeMap = sortByComparator1(map);
		List<ContributorData> userList = new ArrayList<ContributorData>();
		int i = 0;
		for (Map.Entry<String, Integer> entry : treeMap.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : "
					+ entry.getValue());
			userList.add(getContributorData(userid, entry.getKey(),
					entry.getValue()));
			if (i == n) {
				break;
			}
		}
		return userList;
	}

	private ContributorData getContributorData(String useridServer,
			String userid, int value) {
		ContributorData cd = new ContributorData();
		User user = userDao.findUserById(userid);
		cd.setContribution((value * (20 + (value - 1) * 5)) / 2);
		cd.setLevel((Level.BOLT).toString());
		cd.setLinksVerified(value);
		cd.setLinksVerifyPercent((int) (value * 100 / userlinkService
				.countLinksServedByUser(useridServer)));
		cd.setRating(feedbackService.getRatingForUser(userid));
		cd.setUsername(user.getUsername());
		cd.setPicName(user.getPicName());
		return cd;
	}

	private Map<String, Integer> sortByComparator1(
			Map<String, Integer> unsortMap) {

		// Convert Map to List
		List<Map.Entry<String, Integer>> list = new LinkedList<Map.Entry<String, Integer>>(
				unsortMap.entrySet());

		// Sort list with comparator, to compare the Map values
		Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
			public int compare(Map.Entry<String, Integer> o1,
					Map.Entry<String, Integer> o2) {
				return (o2.getValue()).compareTo(o1.getValue());
			}
		});

		// Convert sorted map back to a Map
		Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();
		for (Iterator<Map.Entry<String, Integer>> it = list.iterator(); it
				.hasNext();) {
			Map.Entry<String, Integer> entry = it.next();
			sortedMap.put(entry.getKey(), entry.getValue());
		}
		return sortedMap;
	}

	private Map<String, Float> sortByComparator2(Map<String, Float> unsortMap) {

		// Convert Map to List
		List<Map.Entry<String, Float>> list = new LinkedList<Map.Entry<String, Float>>(
				unsortMap.entrySet());

		// Sort list with comparator, to compare the Map values
		Collections.sort(list, new Comparator<Map.Entry<String, Float>>() {
			public int compare(Map.Entry<String, Float> o1,
					Map.Entry<String, Float> o2) {
				return (o2.getValue()).compareTo(o1.getValue());
			}
		});

		// Convert sorted map back to a Map
		Map<String, Float> sortedMap = new LinkedHashMap<String, Float>();
		for (Iterator<Map.Entry<String, Float>> it = list.iterator(); it
				.hasNext();) {
			Map.Entry<String, Float> entry = it.next();
			sortedMap.put(entry.getKey(), entry.getValue());
		}
		return sortedMap;
	}

	public MembersTableData getMembersTableData(User user) {
		MembersTableData mtd = new MembersTableData();
		mtd.setUsername(user.getUsername());
		mtd.setEmail(user.getEmail());
		mtd.setCountry(user.getCountry());
		mtd.setLastAccessIp(ipService.getLastAccessIp(user.getId()).getIp());
		mtd.setLevel(user.getLevel().toString());
		mtd.setVerifiedClicks(userlinkService
				.countLinksPostedToUserAndVerified(user.getId()));
		mtd.setLinkBroadcastCap(user.getLevel().getLinkBroadcastCap());
		mtd.setRegisteredIp(user.getRegisteredIp());
		return mtd;
	}

	public List<User> findTopTwenty(Level level) {
		List<User> userList = findAllUsersByLevel(level);
		Map<String, Float> map = new HashMap<String, Float>();
		for (User user : userList) {
			Float count = (float) ((userlinkService
					.countLinksPostedToUserAndVerified(user.getId()) * 3 + userlinkService
					.countLinksServedByUser(user.getId()) * 2) / 5);
			map.put(user.getId(), (count == null) ? 0 : count);
		}
		List<User> userList2 = new ArrayList<User>();
		Map<String, Float> treeMap = sortByComparator2(map);
		int i = 0;
		for (Map.Entry<String, Float> entry : treeMap.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : "
					+ entry.getValue());
			userList2.add(findById(entry.getKey()));
			if (i == 20) {
				break;
			}
		}
		return userList2;
	}

	public List<User> findAllUsersByLevel(Level level) {
		return userDao.findAllUsersByLevel(level);
	}

	@SuppressWarnings("deprecation")
	public List<User> getOnlineUsers() {
		List<User> userList = new ArrayList<User>();
		List<Object> principalList = sessionRegistry.getAllPrincipals();
		for (Object principal : principalList) {
			String username = ((org.springframework.security.core.userdetails.User) principal)
					.getUsername();
			userList.add(findByUsername(username));
		}
		return userList;
	}

	public List<User> getNewUsersToday() {
		return userDao.findNewUsersToday();
	}

	public List<User> findUsersByField(String username, String email,
			String ip, Level level) {
		return userDao.findUsersByField(username, email, ip, level);
	}

	public List<User> getBannedUsers() {
		return userDao.findBannedUsers();
	}

	public List<StatsByCountry> getStatsByCountry() {
		List<User> userList = findAll();
		Map<String, Integer> map = new HashMap<String, Integer>();
		for (User user : userList) {
			Integer count = map.get(user.getCountry());
			map.put(user.getCountry(), (count == null) ? 1 : count + 1);
		}
		List<StatsByCountry> stats = new ArrayList<StatsByCountry>();
		for (Map.Entry<String, Integer> entry : map.entrySet()) {
			StatsByCountry country = new StatsByCountry();
			country.setCode(entry.getKey());
			Locale obj = new Locale("", entry.getKey());
			country.setCountry(obj.getDisplayCountry());
			country.setNoOfUsers(entry.getValue());
			stats.add(country);
			System.out.println("Key : " + entry.getKey() + "  " + " Value : "
					+ entry.getValue());
		}
		return stats;
	}

	public List<User> getUsersByCountry(String code) {
		return userDao.getUsersByCountry(code);
	}

	public List<User> getUsersWithMultipleIp() {
		List<User> userList = findAll();
		List<User> userList2 = new ArrayList<User>();
		for (User user : userList) {
			if (ipService.getAllIpForUser(user.getId()).size() >= 1)
				userList2.add(user);
		}
		return userList2;
	}

	public AdminDashboardStats getAdminDashboardStats() {
		AdminDashboardStats ads = new AdminDashboardStats();
		ads.setTotalUsers(userDao.countTotalUsers());
		ads.setActiveUsers(userDao.countActiveUsers());
		ads.setBannedUsers(userDao.countBannedUsers());
		ads.setOnlineUsers(sessionRegistry.getAllPrincipals().size());
		ads.setRegisteredToday(userDao.countUsersRegisteredToday());
		ads.setPendingClicks(countPendingClicks());
		ads.setClicksToday(proofService.countClicksToday());
		ads.setClicksMonth(proofService.countClicksMonth());
		ads.setResolvedReports(reportService.countClosedReports());
		ads.setUnresolvedReports(reportService.countOpenReports());
		ads.setBoltUsers(userDao.countUsersByLevel(Level.BOLT));
		ads.setRabbitUsers(userDao.countUsersByLevel(Level.RABBIT));
		ads.setTurtleUsers(userDao.countUsersByLevel(Level.TURTLE));
		ads.setSnailUsers(userDao.countUsersByLevel(Level.SNAIL));
		return ads;
	}

	private long countPendingClicks() {
		long pendingClicks = 0;
		for (User user : findAllActiveUsers()) {
			pendingClicks = userlinkService
					.countLinksPostedToUser(user.getId())
					- userlinkService.countLinksPostedToUserAndClicked(user
							.getId());
		}
		return pendingClicks;
	}

	public User getRandomUser(User user) {
		Random random = new Random();
		List<User> activeUsers = findAllActiveUsers();
		int index = random.nextInt(activeUsers.size());
		System.out.println("\nIndex :" + index);
		System.out.println("Randomly Selected USer Email Address is "
				+ activeUsers.get(index).getEmail());

		return activeUsers.get(index);

	}

	public User getRandomUser() {
		Random random = new Random();
		List<User> activeUsers = findAllActiveUsers();
		int index = random.nextInt(activeUsers.size());
		System.out.println("\nIndex :" + index);
		System.out.println("Randomly Selected USer Email Address is "
				+ activeUsers.get(index).getEmail());

		return activeUsers.get(index);
	}
}