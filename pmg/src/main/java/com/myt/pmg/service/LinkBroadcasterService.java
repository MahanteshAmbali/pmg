package com.myt.pmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.LinkBroadcasterDao;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLinkBroadcaster;

@Service
public class LinkBroadcasterService {
	
	@Autowired
	LinkBroadcasterDao broadcasterDao;
	
	
	public void postLink(UserLinkBroadcaster userLinkBroadcaster){
		broadcasterDao.add(userLinkBroadcaster);
	}
	
	public UserLinkBroadcaster linkreciever(User loggedInUser){
		System.out.println("Logged in user Email::" + loggedInUser.getEmail());
		List<UserLinkBroadcaster> obj = broadcasterDao.findAllLinksPostedToUser(loggedInUser.getId());
		
		return  obj.get(0);
	}
	

}
