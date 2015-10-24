package com.myt.pmg.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.NotificationDao;
import com.myt.pmg.model.Notification;


@Service
public class NotificationService {
	
	@Autowired
	private NotificationDao notificationDao;

	public NotificationDao getNotificationDao() {
		return notificationDao;
	}

	public void setNotificationDao(NotificationDao notificationDao) {
		this.notificationDao = notificationDao;
	}

	public int countNotificationsForUser(String userid) {
		return notificationDao.countNotificationsForUser(userid);
	}

	public List<Notification> findForUser(String userid) {
		return notificationDao.findForUser(userid);
	}

	public List<Notification> findBroadcastNotificationsForUser(String userid) {
		return notificationDao.findBroadcastNotificationForUser(userid);
	}

	public List<Notification> findAdminNotificationsForUser(String userid) {
		return notificationDao.findAdminNotificationForUser(userid);
	}

	public List<Notification> getAllUnreadNotificationsForUser(String userid) {
		List<Notification> list = new ArrayList<Notification>();
		list.addAll(findAdminNotificationsForUser(userid));
		list.addAll(findBroadcastNotificationsForUser(userid));
		return list;
	}

	public void newNotification(Notification notif) {
		notificationDao.add(notif);
	}

	public Notification update(Notification notif) {
		notificationDao.getMongoTemplate().save(notif);
		return notif;
	}

	public Notification findById(String id) {
		return notificationDao.findById(id, Notification.class);
	}

}
