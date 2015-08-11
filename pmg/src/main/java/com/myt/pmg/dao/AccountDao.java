package com.myt.pmg.dao;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Account;

@Repository
public class AccountDao extends BasicDaoImpl<Account>  {
	
	
	public Account findOne(String userId){
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userId));
		return (Account) getMongoTemplate().find(query, Account.class);		
	}
	
	public Account findById(String userId){
		return super.findById(userId, Account.class);
	}
	
	public Account findByUserEmail(String userEmail){
		Query query = new Query();
		query.addCriteria(Criteria.where("userEmail").is(userEmail));
		return getMongoTemplate().findOne(query, Account.class);
	}
	
	public void updateUser(Account account) {
		getMongoTemplate().save(account);
	}
	
	public String addAccount(Account account){
		return super.add(account);
	}


	}
