package com.myt.pmg.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Link;
import com.myt.pmg.model.UserLink;
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
	
	public List<UserLinkBroadcaster> findAllLinksPostedToUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userId").is(userid));
		List<UserLinkBroadcaster> userLinkBroadcasterList = getMongoTemplate().find(query,UserLinkBroadcaster.class);
		List<Link> linkList = new ArrayList<Link>();
		/*for (UserLink userLink : userlinkList) {
			System.out.println(userLink);
			if(!userLink.isClicked())
			linkList.add(findById(userLink.getLinkId()));
		}
		for (Link link : linkList) {
			System.out.println(link);
		}*/
		return userLinkBroadcasterList;
	}

}
