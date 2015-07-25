package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Link;
import com.myt.pmg.model.UserLink;

@Repository
public class UserLinkDao extends BasicDaoImpl<UserLink> {

	public List<UserLink> findAll() {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				UserLink.class);
		return (List<UserLink>) getMongoTemplate().findAll(UserLink.class,
				COLLECTION_NAME);
	}

	public List<UserLink> findAllById(String id) {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				UserLink.class);
		Query query = new Query();
		query.addCriteria(Criteria.where("id").is(id));
		return (List<UserLink>) getMongoTemplate().find(query, UserLink.class,
				COLLECTION_NAME);
	}

	public int count() {
		Query query = new Query();
		query.addCriteria(Criteria.where("id").exists(true));
		getMongoTemplate().count(query, UserLink.class);
		return 0;
	}

	public long countLinksPostedToUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		return getMongoTemplate().count(query, UserLink.class);
	}

	public long countLinksPostedToUserAndVerified(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("clicked").is(true));
		query.addCriteria(Criteria.where("verified").is(true));
		return getMongoTemplate().count(query, UserLink.class);
	}

	public long countLinksPostedToUserAndClicked(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("clicked").is(true));
		query.addCriteria(Criteria.where("verified").is(false));
		return getMongoTemplate().count(query, UserLink.class);
	}

	public long countLinksServedByUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		return getMongoTemplate().count(query, Link.class);
	}

	public long countLinksServedByUserAndApproved(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("approved").is(1));
		return getMongoTemplate().count(query, Link.class);
	}

	public long countLinksServedByUserAndDisapproved(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("approved").is(2));
		return getMongoTemplate().count(query, Link.class);
	}

	public boolean linkPosted(String userid, String linkid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		query.addCriteria(Criteria.where("linkId").is(linkid));
		return getMongoTemplate().exists(query, UserLink.class);
	}

	public UserLink findByLinkId(String linkid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("linkId").is(linkid));
		return getMongoTemplate().findOne(query, UserLink.class);
	}
	
	public UserLink findByUserId(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		return getMongoTemplate().findOne(query, UserLink.class);
	}
	
	public UserLink findByBroadcasterId(String broadcasterUserId) {
		Query query = new Query();
		query.addCriteria(Criteria.where("broadcasterUserId").is(broadcasterUserId));
		return getMongoTemplate().findOne(query, UserLink.class);
	}

	public void update(UserLink userlink) {
		getMongoTemplate().save(userlink);
	}

	public long countClicksOnLink(String linkId) {
		Query query = new Query();
		query.addCriteria(Criteria.where("linkId").is(linkId));
		query.addCriteria(Criteria.where("clicked").is(true));
		return getMongoTemplate().count(query, UserLink.class);
	}
}
