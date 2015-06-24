package com.myt.pmg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.LinkBroadcasterDao;
import com.myt.pmg.model.UserLinkBroadcaster;

@Service
public class LinkBroadcasterService {
	
	@Autowired
	LinkBroadcasterDao broadcasterDao;
	
	
	public void postLink(UserLinkBroadcaster userLinkBroadcaster){
		broadcasterDao.add(userLinkBroadcaster);
	}
	

}
