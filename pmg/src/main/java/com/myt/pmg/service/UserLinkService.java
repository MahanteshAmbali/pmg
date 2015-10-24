package com.myt.pmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.UserLinkDao;
import com.myt.pmg.model.UserLink;

@Service
public class UserLinkService {
	
	@Autowired
	private UserLinkDao userLinkDao;

	public void setUserLinkDao(UserLinkDao userLinkDao) {
		this.userLinkDao = userLinkDao;
	}

	public void addUserLink(UserLink userLink) {
		userLinkDao.add(userLink);
	}

	public List<UserLink> getUserLinkList(String id) {
		return userLinkDao.findAllById(id);
	}

	public long countLinksPostedToUser(String userid) {
		if (userLinkDao.countLinksPostedToUser(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUser(userid);
	}

	public long countLinksPostedToUserAndClicked(String userid) {
		if (userLinkDao.countLinksPostedToUserAndClicked(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUserAndClicked(userid);
	}

	public long countLinksPostedToUserAndVerified(String userid) {
		if (userLinkDao.countLinksPostedToUserAndVerified(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksPostedToUserAndVerified(userid);
	}

	public long countLinksServedByUser(String userid) {
		if (userLinkDao.countLinksServedByUser(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUser(userid);
	}

	public long countLinksServedByUserAndApproved(String userid) {
		if (userLinkDao.countLinksServedByUserAndApproved(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUserAndApproved(userid);
	}

	public long countLinksServedByUserAndDisapproved(String userid) {
		if (userLinkDao.countLinksServedByUserAndDisapproved(userid) == 0)
			return 1;
		else
			return userLinkDao.countLinksServedByUserAndDisapproved(userid);
	}

	public boolean linkPosted(String userid, String linkid) {
		UserLink userlink = new UserLink();
		userlink.setUserId(userid);
		userlink.setLinkId(linkid);
		//userlink.setBroadcasterUserId();
		userlink.setClicked(false);
		userlink.setVerified(false);
		addUserLink(userlink);
		//return userLinkDao.linkPosted(userid, linkid);
		return true;
	}
	
	public boolean linkPosted(String userid, String linkid, String broadcasteruserid) {
		UserLink userlink = new UserLink();
		userlink.setUserId(userid);
		userlink.setLinkId(linkid);
		userlink.setBroadcasterUserId(broadcasteruserid);
		userlink.setClicked(false);
		userlink.setVerified(false);
		addUserLink(userlink);
		//return userLinkDao.linkPosted(userid, linkid);
		return true;
	}
	
		
	public UserLink findByLinkId(String linkid) {
		return userLinkDao.findByLinkId(linkid);
	}
	
	public UserLink findByUserid(String userid){
		return userLinkDao.findByUserId(userid);
	}
	
	public UserLink findByBroadcasterId(String broadcasterId){
		return userLinkDao.findByBroadcasterId(broadcasterId);
	}

	public void update(UserLink userlink) {
		userLinkDao.update(userlink);
	}

	public List<UserLink> findAll() {
		return userLinkDao.findAll();
	}

	public long countClicksOnLink(String linkId) {
		return userLinkDao.countClicksOnLink(linkId);
	}
}
