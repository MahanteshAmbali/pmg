package com.myt.pmg.dao;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Account;

@Repository
public class AccountDao extends BasicDaoImpl<Account> {

	public Account updateUser(Account account) {
		getMongoTemplate().save(account);
		return account;

	}

	public String addAccount(Account account) {
		return super.add(account);
	}

	public Account findByUserId(String userId) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userId));
		// return getMongoTemplate().find(query, Account.class).get(0);

		return getMongoTemplate().findOne(query, Account.class);

	}

	public void findAndUpdateLinksSubmitted(String userId) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userId));

		Update update = new Update();
		update.inc("linksSubmitted", 1);
		// update.set("linksSubmitted", 10);
		getMongoTemplate().findAndModify(query, update, Account.class);

	}

}
