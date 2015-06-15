package com.myt.pmg.engine;

import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.model.Link;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLink;
import com.myt.pmg.service.LinkService;
import com.myt.pmg.service.UserLinkService;
import com.myt.pmg.service.UserService;

@Service
public class CustomScheduler implements Runnable {
	static final Logger logger = Logger.getLogger(CustomScheduler.class);

	@Autowired
	private static LinkService linkService;
	@Autowired
	private static UserService userService;
	@Autowired
	private static UserLinkService userlinkService;

	public LinkService getLinkService() {
		return CustomScheduler.linkService;
	}

	public void setLinkService(LinkService linkService) {
		CustomScheduler.linkService = linkService;
	}

	public UserService getUserService() {
		return CustomScheduler.userService;
	}

	public void setUserService(UserService userService) {
		CustomScheduler.userService = userService;
	}

	public UserLinkService getUserlinkService() {
		return CustomScheduler.userlinkService;
	}

	public void setUserlinkService(UserLinkService userlinkService) {
		CustomScheduler.userlinkService = userlinkService;
	}

	public void run() {
		logger.info("Inside CustomScheduler run method");
		List<Link> linkList = getLinkService().getActiveLinks();// Instead
		// of
		// find
		// all
		// Will search all
		// active Links which
		// has not been
		// traversed from last
		// give time according
		// to Variable
		// duration(this will be
		// in minute)
		if (linkList.isEmpty())
			logger.error("linkList is empty");
		List<User> userList = getUserService().findAllActiveUsers();// corrected
		// :Instead
		// of
		// find all Use searhc for
		// active Users
		int size = (int) linkList.size() / userList.size();
		int i = 0;
		long seed = 0;
		for (final Link link : linkList) {
			seed = System.nanoTime();
			Collections.shuffle(userList, new Random(seed));
			i = 0;
			link.setLastTraveredTime((new java.util.Date()));
			getLinkService().update(link);
			postLink(link, userList, i, size);
			i = i + size;
		}
	}

	private void postLink(final Link link, List<User> users, int start,
			int index) {
		System.out.println(link);
		for (int i = start; i < index; i++) {
			logger.info("Inside postLink run method");
			if (!link.getUserId().equals(users.get(i).getId())) {
				if (!getUserlinkService().linkPosted(users.get(i).getId(),
						link.getId())) {
					UserLink ul = new UserLink();
					ul.setUserId(users.get(i).getId());
					ul.setLinkId(link.getId());
					getUserlinkService().addUserLink(ul);
					System.out.println(ul);
				}
			}
		}
		return;
	}

	public Runnable getNewInstance() {
		return new CustomScheduler();
	}

}