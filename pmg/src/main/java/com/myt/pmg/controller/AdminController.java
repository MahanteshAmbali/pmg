package com.myt.pmg.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.dto.AdminDashboardStats;
import com.myt.pmg.dto.MembersTableData;
import com.myt.pmg.dto.StatsByCountry;
import com.myt.pmg.model.FAQ;
import com.myt.pmg.model.Ip;
import com.myt.pmg.model.Notification;
import com.myt.pmg.model.Report;
import com.myt.pmg.model.User;
import com.myt.pmg.model.User.Level;
import com.myt.pmg.service.FaqService;
import com.myt.pmg.service.IpService;
import com.myt.pmg.service.NotificationService;
import com.myt.pmg.service.ProofService;
import com.myt.pmg.service.ReportService;
import com.myt.pmg.service.UserService;

@Controller
@RequestMapping("admin")
public class AdminController {

	static Logger logger = Logger.getLogger(AdminController.class);

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private NotificationService notificationService;

	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}

	private ProofService proofService;

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	private ReportService reportService;

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}

	private FaqService faqService;

	private IpService ipService;

	public void setIpService(IpService ipService) {
		this.ipService = ipService;
	}

	public void setFaqService(FaqService faqService) {
		this.faqService = faqService;
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String showAdminDashboard(Model model, HttpSession httpSession) {
		User user = UtilFunction.getCurrentUser(httpSession);
		model.addAttribute("user", user);
		return "admin";
	}

	@RequestMapping(value = "/allmembers", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getAllMembers() {
		logger.info("getAllMembers called");
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.findAllActiveUsers();
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/toptwentybolt", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getTopTwentyMembersBolt() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.findTopTwenty(Level.BOLT);
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/toptwentyrabbit", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getTopTwentyMembersRabbit() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.findTopTwenty(Level.RABBIT);
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/toptwentyturtle", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getTopTwentyMembersTurtle() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.findTopTwenty(Level.TURTLE);
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/toptwentysnail", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getTopTwentyMembersSnail() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.findTopTwenty(Level.SNAIL);
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/registeredtoday", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getUsersRegisteredToday() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.getNewUsersToday();
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/onlinemembers", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getOnlineMembers(HttpServletRequest request) {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.getOnlineUsers();
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/bannedmembers", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getBannedMembers() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.getBannedUsers();
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/unbanusers", produces = "application/json", method = RequestMethod.POST)
	@ResponseBody
	public String unbanUsers(HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(request.getSession());
		if (user == null) {
			request.getSession().invalidate();
		}
		int i = 0;
		while (request.getParameter("username" + i) != null) {
			User user1 = userService.findByUsername(request
					.getParameter("username" + i));
			user1.setBanned(false);
			userService.updateUser(user1);
			i++;
		}
		return "dashboard";
	}

	@RequestMapping(value = "/banusers", produces = "application/json", method = RequestMethod.POST)
	@ResponseBody
	public String banUsers(HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(request.getSession());
		if (user == null) {
			request.getSession().invalidate();
		}
		int i = 0;
		while (request.getParameter("username" + i) != null) {
			User user1 = userService.findByUsername(request
					.getParameter("username" + i));
			user1.setBanned(true);
			userService.updateUser(user1);
			i++;
		}
		return "dashboard";
	}

	@RequestMapping(value = "/statsbycountry", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<StatsByCountry> getMemberStatsByCountry() {
		List<StatsByCountry> tableData = userService.getStatsByCountry();
		return tableData;
	}

	@RequestMapping(value = "/usersbycountry/{code}", produces = "application/json", method = RequestMethod.GET)
	public @ResponseBody List<User> getUsersByCountry(@PathVariable String code) {
		return userService.getUsersByCountry(code);
	}

	@RequestMapping(value = "/multipleip", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<MembersTableData> getMembersWithMultipleIp() {
		List<MembersTableData> tableData = new ArrayList<MembersTableData>();
		List<User> userList = userService.getUsersWithMultipleIp();
		for (User user : userList) {
			MembersTableData mtd = userService.getMembersTableData(user);
			tableData.add(mtd);
		}
		return tableData;
	}

	@RequestMapping(value = "/multipleip/{username}", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<Ip> getMultipleIpForMember(@PathVariable String username) {
		User user = userService.findByUsername(username);
		List<Ip> ipList = ipService.getAllIpForUser(user.getId());
		return ipList;
	}

	@RequestMapping(value = "/reportabuseopen", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<Report> getReportAbuseOpen() {
		List<Report> reportList = reportService.findOpenReports();
		return reportList;
	}

	@RequestMapping(value = "/reportabuseclosed", produces = "application/json", method = RequestMethod.GET)
	@ResponseBody
	public List<Report> getReportAbuseClosed() {
		List<Report> reportList = reportService.findClosedReports();
		return reportList;
	}

	@RequestMapping(value = "/createfaq", method = RequestMethod.GET)
	public String showCreateFaq(Model model, HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		model.addAttribute("user", user);
		model.addAttribute("faq", new FAQ());
		return "createfaq";
	}

	@RequestMapping(value = "/createfaq", method = RequestMethod.POST)
	public void createFaq(FAQ faq) {
		faqService.createFaq(faq);
	}

	@RequestMapping(value = "/editfaq", method = RequestMethod.POST)
	@ResponseBody
	public String showEditFaq(HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(request.getSession());
		if (user == null) {
			request.getSession().invalidate();
		}
		int i = 0;
		while (request.getParameter("faqid" + i) != null) {
			FAQ faq = faqService.findById(request.getParameter("faqid" + i));
			if (request.getParameter("checkfaq" + i).equalsIgnoreCase("true")) {
				;
				faq.setActive(true);
			} else
				faq.setActive(false);
			faqService.updateFaq(faq);
			i++;
		}
		return "success";
	}

	@RequestMapping(value = "/geteditfaq", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<FAQ> getEditFaq() {
		return faqService.getAllFaqs();
	}

	@RequestMapping(value = "/newnotification", method = RequestMethod.POST)
	public void newNotification(
			@RequestParam("msg") String msg,
			@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "level", required = false) String level) {

		if (username != null) {
			Notification notif = new Notification();
			notif.setDate(new Date());
			notif.setType(2);
			notif.setMessage(msg);
			notif.setUserId(userService.findByUsername(username).getId());
			notificationService.newNotification(notif);
		} else if (level != null) {
			List<User> userList = userService.findAllUsersByLevel(Level
					.getLevel(level));
			for (User user : userList) {
				Notification notif = new Notification();
				notif.setDate(new Date());
				notif.setType(2);
				notif.setMessage(msg);
				notif.setUserId(user.getId());
				notificationService.newNotification(notif);
			}
		} else {
			List<User> userList = userService.findAll();
			for (User user : userList) {
				Notification notif = new Notification();
				notif.setDate(new Date());
				notif.setType(2);
				notif.setMessage(msg);
				notif.setUserId(user.getId());
				notificationService.newNotification(notif);
			}
		}
	}

	@RequestMapping(value = "/admindashboardstats", method = RequestMethod.GET)
	public @ResponseBody AdminDashboardStats countClicksToday() {
		return userService.getAdminDashboardStats();
	}

	@RequestMapping(value = "/userdetails", method = RequestMethod.GET)
	public String showUserDetails() {
		return "userdetails";
	}

	@RequestMapping(value = "/userdetails/{username}", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody User getUserDetails(@PathVariable String username) {
		User user = userService.findByUsername(username);
		return user;
	}
}
