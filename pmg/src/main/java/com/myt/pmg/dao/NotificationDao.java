package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Notification;

@Repository
public class NotificationDao extends BasicDaoImpl<Notification> {
	public List<Notification> findForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		return getMongoTemplate().find(query, Notification.class);
	}

	public List<Notification> findAdminNotificationForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("type").is(1));
		query.addCriteria(Criteria.where("read").is(false));
		return getMongoTemplate().find(query, Notification.class);
	}

	public List<Notification> findBroadcastNotificationForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("type").is(2));
		query.addCriteria(Criteria.where("read").is(false));
		return getMongoTemplate().find(query, Notification.class);
	}

	public int countNotificationsForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("read").is(false));
		return (int) getMongoTemplate().count(query, Notification.class);
	}

}
