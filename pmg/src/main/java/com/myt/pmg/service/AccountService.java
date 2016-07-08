package com.myt.pmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.AccountDao;
import com.myt.pmg.model.Account;

@Service
public class AccountService {

	@Autowired
	private AccountDao accountDao;

	public Account saveAccount(Account account) {
		return accountDao.updateUser(account);
	}

	public String addAccount(Account account) {
		return accountDao.add(account);
	}

	public Account findByUserId(String userId) {
		return accountDao.findByUserId(userId);
	}
	
	public void findAndUpdateLinksSubmitted(String userId) {
		accountDao.findAndUpdateLinksSubmitted(userId);
	}
}
