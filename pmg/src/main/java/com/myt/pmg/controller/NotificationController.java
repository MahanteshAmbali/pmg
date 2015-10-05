package com.myt.pmg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.model.Notification;
import com.myt.pmg.model.User;
import com.myt.pmg.service.NotificationService;

@Controller
public class NotificationController {

	private NotificationService notificationService;

	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/noofNotification", method = RequestMethod.GET)
	@ResponseBody
	public int getNoOfNotification(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user != null) {
			return notificationService.countNotificationsForUser(user.getId());
		} else {
			session.invalidate();
		}
		return 0;

	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/changenotificationstatus", method = RequestMethod.POST)
	@ResponseBody
	public String changeNotificationStatus(@RequestParam String id) {
		Notification notif = notificationService.findById(id);
		notif.setRead(true);
		notificationService.update(notif);
		return "dashboard";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/notificationmessage", method = RequestMethod.GET)
	@ResponseBody
	public List<Notification> getNotification(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		List<Notification> notifications = new ArrayList<Notification>();
		if (user != null) {
			notifications = notificationService
					.getAllUnreadNotificationsForUser(user.getId());
		} else {
			session.invalidate();
		}
		return notifications;

	}
	
	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/notify", method = RequestMethod.GET)
	public String notify(HttpServletRequest req){
		return "notify";
	}
	
}
