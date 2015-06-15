package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Feedback;
import com.myt.pmg.model.User;


@Repository
public class FeedbackDao extends BasicDaoImpl<Feedback> {
	public List<User> findAll() {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				User.class);
		return (List<User>) getMongoTemplate().findAll(User.class,
				COLLECTION_NAME);
	}

	public Feedback findById(String id) {
		return super.findById(id, Feedback.class);
	}

	public List<Feedback> findAllForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		return (List<Feedback>) getMongoTemplate().find(query, Feedback.class);
	}

	public void create(Feedback feedback) {
		add(feedback);
	}
}
