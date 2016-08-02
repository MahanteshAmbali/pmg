package com.myt.pmg.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.User;
import com.myt.pmg.model.User.Level;

@Repository
public class UserDao extends BasicDaoImpl<User> {

	public List<User> findAll() {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(User.class);
		return (List<User>) getMongoTemplate().findAll(User.class, COLLECTION_NAME);
	}

	public boolean usernameExists(String email) {
		Query query = new Query();
		query.addCriteria(Criteria.where("email").is(email));

		if (getMongoTemplate().find(query, User.class).isEmpty())
			// Empty then no User email exists in DB , So allow to register
			return false;
		else
			return true;
	}

	public boolean domainExists(String domain) {
		Query query = new Query();
		query.addCriteria(Criteria.where("domain").is(domain));

		if (getMongoTemplate().find(query, User.class).isEmpty())
			// Empty then no domain email exists in DB , So allow to register
			return false;
		else
			return true;
	}

	public User findUserById(String id) {
		return super.findById(id, User.class);
	}

	public User findUserByUsername(String username) {
		Query query = new Query();
		query.addCriteria(Criteria.where("username").is(username));
		return (User) getMongoTemplate().findOne(query, User.class);
	}

	public User updateUser(User user) {
		getMongoTemplate().save(user);
		return user;

	}

	public User findUserByEmail(String email) {
		Query query = new Query();
		query.addCriteria(Criteria.where("email").is(email));
		return (User) getMongoTemplate().findOne(query, User.class);
	}

	public List<User> findAllActiveUsers() {
		Query query = new Query();
		query.addCriteria(Criteria.where("active").is(true));
		return (List<User>) getMongoTemplate().find(query, User.class);
	}

	public List<User> findUsersByField(String username, String email, String ip, Level level) {
		String fieldValue = null, fieldName = null;
		if (username != null) {
			fieldName = "username";
			fieldValue = username;
		} else if (email != null) {
			fieldName = "email";
			fieldValue = email;
		} else if (ip != null) {
			fieldName = "ip";
			fieldValue = ip;
		} else if (level != null) {
			fieldName = "level";
			fieldValue = level.toString();
		}
		Query query = new Query();
		query.addCriteria(Criteria.where(fieldName).is(fieldValue));
		return getMongoTemplate().find(query, User.class);
	}

	public List<User> findNewUsersToday() {
		Query query = new Query();
		query.addCriteria(Criteria.where("registrationDate").gt(new Date((new Date().getTime()) - 24 * 3600 * 1000l)));
		return getMongoTemplate().find(query, User.class);
	}

	public List<User> findBannedUsers() {
		Query query = new Query();
		query.addCriteria(Criteria.where("banned").is(true));
		return getMongoTemplate().find(query, User.class);
	}

	public List<User> getUsersByCountry(String code) {
		Query query = new Query();
		query.addCriteria(Criteria.where("country").is(code));
		return getMongoTemplate().find(query, User.class);
	}

	public List<User> findAllUsersByLevel(Level level) {
		Query query = new Query();
		query.addCriteria(Criteria.where("level").is(level));
		return getMongoTemplate().find(query, User.class);
	}

	public long countTotalUsers() {
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").exists(true));
		return getMongoTemplate().count(query, User.class);
	}

	public long countActiveUsers() {
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").exists(true));
		query.addCriteria(Criteria.where("active").is(true));
		return getMongoTemplate().count(query, User.class);
	}

	public long countBannedUsers() {
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").exists(true));
		query.addCriteria(Criteria.where("active").is(true));
		query.addCriteria(Criteria.where("banned").is(true));
		return getMongoTemplate().count(query, User.class);
	}

	public long countUsersRegisteredToday() {
		Query query = new Query();
		query.addCriteria(Criteria.where("registrationDate").gt(new Date((new Date().getTime()) - 24 * 3600 * 1000l)));
		return getMongoTemplate().count(query, User.class);
	}

	public long countUsersByLevel(Level level) {
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").exists(true));
		query.addCriteria(Criteria.where("level").is(level));
		return getMongoTemplate().count(query, User.class);

	}

}
