package com.myt.pmg.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Link;
import com.myt.pmg.model.UserLinkBroadcaster;

@Repository
public class LinkBroadcasterDao extends BasicDaoImpl<UserLinkBroadcaster> {

	private static Logger logger = Logger.getLogger(LinkBroadcasterDao.class);

	public List<UserLinkBroadcaster> findAll() {
		logger.info("LinkBroadcasterDao Dao");
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				Link.class);
		return (List<UserLinkBroadcaster>) getMongoTemplate().findAll(
				UserLinkBroadcaster.class, COLLECTION_NAME);
	}
	
	public void update(UserLinkBroadcaster UserLinkBroadcaster) {
		getMongoTemplate().save(UserLinkBroadcaster);
	}

}
