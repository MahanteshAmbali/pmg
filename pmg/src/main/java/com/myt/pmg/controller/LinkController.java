package com.myt.pmg.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.dto.LUV;
import com.myt.pmg.dto.LinkReciever;
import com.myt.pmg.dto.LinkStatus;
import com.myt.pmg.dto.LinkVerifier;
import com.myt.pmg.model.Feedback;
import com.myt.pmg.model.Link;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLink;
import com.myt.pmg.model.UserLinkBroadcaster;
import com.myt.pmg.service.FeedbackService;
import com.myt.pmg.service.LinkBroadcasterService;
import com.myt.pmg.service.LinkService;
import com.myt.pmg.service.ProofService;
import com.myt.pmg.service.UserLinkService;
import com.myt.pmg.service.UserService;

@Controller
public class LinkController {
	static Logger logger = Logger.getLogger(LinkController.class);

	@Autowired
	private LinkService linkService;
	@Autowired
	private UserLinkService userLinkService;
	@Autowired
	private ProofService proofService;
	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private LinkBroadcasterService linkBroadcasterService;

	@Autowired
	private UserService userService;

	public void setLinkService(LinkService linkService) {
		this.linkService = linkService;
	}

	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	public void setUserLinkService(UserLinkService userLinkService) {
		this.userLinkService = userLinkService;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkbroadcaster", method = RequestMethod.GET)
	public String showlinkbroadcaster(Model model, HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			logger.debug("In-Valid User!!!!");
			return "login";
		}

		// LID Already generated send the values LID, AD-URL to SAME PAGE
		List<Link> linkLists = linkService.getLinksPostedByUser(user.getId());
		model.addAttribute("linkLists", linkLists);
		model.addAttribute("user", user);

		/*
		 * for (Link link : linkLists) { model.addAttribute("lid",
		 * link.getLid()); model.addAttribute("url", link.getUrl()); }
		 * 
		 * model.addAttribute("user", user); Link link =
		 * linkService.findByUserId(user.getId()); model.addAttribute("link",
		 * link);
		 */

		return "linkbroadcaster";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkbroadcaster", method = RequestMethod.POST)
	public String createNewLink(
			@RequestParam("regenrateLId") String regenrateLId,
			HttpSession session, Model model, HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(session);
		String urls = request.getParameter("urls");
		String lid = request.getParameter("lid");
		String adurl = request.getParameter("adurl");
		if (null == user) {
			// Send User to same Page showing user is not logged in
			return "login";
		}

		if (regenrateLId.equalsIgnoreCase("false")) {
			// Logic to broadcast the link
			System.out.println("Start Broadcasting");
			System.out
					.println("*****Selecting the user to send the link**************");
			User selecteduser = userService.getRandomUser();
			String randomuserSelected = selecteduser.getId();
			while(user.getId().equalsIgnoreCase(randomuserSelected)){
				System.out.println("Generating the Random User......");
				selecteduser = userService.getRandomUser();	
				randomuserSelected = selecteduser.getId();
			}
			
			if (!user.getId().equalsIgnoreCase(randomuserSelected)) {
				Link link = linkService.findByUserId(user.getId());
				userLinkService.linkPosted(randomuserSelected, link.getId());
				System.out.println("LInk Broad Casted to User Email::"
						+ selecteduser.getEmail());

			} else {
				System.out.println("Broadcaster and reciever are same........");
				
				return "dashboard";
			}

			return "dashboard";
		}
		// regenrateLId --->true then generate the LID now.
		if (regenrateLId.equalsIgnoreCase("true")) {

			List<Link> linkLists = linkService.getLinksPostedByUser(user
					.getId());
			for (Link link : linkLists) {
				model.addAttribute("lid", link.getLid());
				model.addAttribute("url", link.getUrl());
			}

			for (String url : urls.split(",")) {
				Link link = new Link();
				link.setUrl(url);
				linkService.submitLink(link, user);
			}
		}
		return "linkbroadcaster";
		// return "dashboard";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/deletelink")
	public void deleteLink() {
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkverifierdata", produces = "application/json")
	@ResponseBody
	public List<LinkVerifier> linkVerifierData(HttpSession session,
			HttpServletResponse response) {

		User user = UtilFunction.getCurrentUser(session);
		String userid = user.getId();
		List<LinkVerifier> linklist = linkService
				.getLinksForVerfication(userid);
		if (linklist.isEmpty()) {
			logger.error("verification list empty");
		}
		return linklist;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkrecieverdata", produces = "application/json")
	@ResponseBody
	// @RequestMapping(value="/linkreciever")
	public List<LinkReciever> linkReciever(HttpSession session,
			HttpServletResponse response) {
		// Here Add Logic to get top N Link and N will be coming from Requet
		// Parameter for eg N and Pass N to database so we will not be loading
		// all Link and thas has not upload proof
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}
		String userid = user.getId();
		List<LinkReciever> linklist = linkService.getLinksPostedToUser(userid);
		if (linklist.isEmpty()) {
			logger.error("list is empty");
		}
		return linklist;
	}

	@RequestMapping(value = "/linkstatus", produces = "application/json")
	@ResponseBody
	public LinkStatus linkStatus(HttpSession session,
			HttpServletResponse response) {
		User user = UtilFunction.getCurrentUser(session);
		String userid = user.getId();
		LinkStatus ls = new LinkStatus();
		ls.setLinksClicked(userLinkService
				.countLinksPostedToUserAndClicked(userid)
				/ userLinkService.countLinksPostedToUser(userid));
		ls.setLinksVerified(userLinkService
				.countLinksPostedToUserAndVerified(userid)
				/ userLinkService.countLinksPostedToUserAndClicked(userid));
		ls.setLinksVerificationPending((userLinkService
				.countLinksPostedToUserAndClicked(userid) - userLinkService
				.countLinksPostedToUserAndVerified(userid))
				/ userLinkService.countLinksPostedToUserAndClicked(userid));
		ls.setLinksServed(userLinkService.countLinksServedByUser(userid));
		ls.setLinksApproved(userLinkService
				.countLinksServedByUserAndApproved(userid)
				/ userLinkService.countLinksServedByUser(userid));
		ls.setLinksDisapproved(userLinkService
				.countLinksServedByUserAndDisapproved(userid)
				/ userLinkService.countLinksServedByUser(userid));
		System.out.println(ls);
		return ls;
	}

	@RequestMapping(value = "/gettoplinks", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<LUV> getTopLinks(HttpSession session) {
		List<LUV> luvList = linkService.findTopLinks(5);
		return luvList;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/linkreciever")
	public String linkRecieverPage(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}
		//UserLinkBroadcaster obj = linkBroadcasterService.linkreciever(user);
		
		//userLinkService.findByLinkId(linkid);
		UserLink userlink = userLinkService.findByUserid(user.getId());
		String linkId = userlink.getLinkId();
		Link link = linkService.findById(linkId);
		User postedUser = userService.findById(link.getUserId());
		model.addAttribute("link" , link);
		model.addAttribute("posteduser" , postedUser);
		//model.addAttribute("user", user);
		return "linkreciever";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/proofresult", method = RequestMethod.POST)
	@ResponseBody
	public String showLinkVerifier(HttpServletRequest request,
			HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}
		int i = 0;
		while (request.getParameter("linkId" + i) != null) {
			UserLink userlink = userLinkService.findByLinkId(request
					.getParameter("linkId" + i));
			if (userlink != null) {
				int rating = Integer.parseInt(request
						.getParameter("rating" + i));
				if (rating == -99) {
					// proofService.delete(userlink.getProofId());
					userlink.setVerified(false);
				} else {
					userlink.setVerified(true);
					Feedback fb = new Feedback();
					fb.setUserId(userlink.getUserId());
					fb.setRating(rating);
					feedbackService.create(fb);
				}
				userLinkService.update(userlink);
				i++;
			}
		}
		return "dashboard";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/mylinks")
	@ResponseBody
	public List<LUV> getMyLinks(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		List<Link> linkList = linkService.getLinksPostedByUser(user.getId());
		List<LUV> luvList = new ArrayList<LUV>();
		for (Link link : linkList) {
			long days = (new Date().getTime() - (link.getCreationTime())
					.getTime()) / (24 * 3600 * 1000l);
			luvList.add(new LUV(link.getCreationTime(), link.getId(), null,
					link.getUrl(), userLinkService.countClicksOnLink(link
							.getId()), days, link.isActive()));
		}
		return luvList;
	}

	@RequestMapping(value = "/editmylinks", method = RequestMethod.POST)
	@ResponseBody
	public String showEditFaq(HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(request.getSession());
		if (user == null) {
			request.getSession().invalidate();
		}
		int i = 0;
		while (request.getParameter("linkid" + i) != null) {
			Link link = linkService
					.findById(request.getParameter("linkid" + i));
			if (link != null) {
				if (request.getParameter("checklink" + i).equalsIgnoreCase(
						"true")) {
					link.setActive(true);
				} else
					link.setActive(false);
				linkService.update(link);
			}
			i++;
		}
		return "success";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/contributors")
	public String contributors(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		model.addAttribute("user", user);
		return "contributors";
	}

}
