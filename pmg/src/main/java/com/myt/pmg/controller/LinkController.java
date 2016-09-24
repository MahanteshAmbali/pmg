package com.myt.pmg.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import java.util.TreeSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.dto.LUV;
import com.myt.pmg.dto.LinkRecieverDTO;
import com.myt.pmg.dto.LinkVerifierDTO;
import com.myt.pmg.dto.MyClickStatusDto;
import com.myt.pmg.model.Link;
import com.myt.pmg.model.Link.Linkstatus;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLink;
import com.myt.pmg.service.AccountService;
import com.myt.pmg.service.LinkService;
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
	private UserService userService;

	@Autowired
	AccountService accountService;

	public void setLinkService(LinkService linkService) {
		this.linkService = linkService;
	}

	public void setUserLinkService(UserLinkService userLinkService) {
		this.userLinkService = userLinkService;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkbroadcaster", method = RequestMethod.GET)
	public String showlinkbroadcaster(Model model, HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			logger.debug("InValid User!!!!");
			return "login";
		}

		// LID Already generated send the values LID, AD-URL to SAME PAGE (JSP)
		// to display
		List<Link> linkLists = linkService.getLinksPostedByUser(user.getId());
		// Add null or empty checks
		// How if we remove the line of code 85
		model.addAttribute("linkLists", linkLists);
		model.addAttribute("user", user);

		return "linkbroadcaster";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkbroadcaster", method = RequestMethod.POST)
	public String createNewLink(@RequestParam("generateLID") String generateLID, @RequestParam("urls") String urls,
			HttpSession session, Model model, HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			// Send User to same Page showing user is not logged in
			return "login";
		}

		TreeSet<String> uniqueurls = new TreeSet<String>();

		StringTokenizer strtkn = new StringTokenizer(urls, "\r\n");
		while (strtkn.hasMoreTokens()) {
			uniqueurls.add(strtkn.nextToken());
		}

		// generateLID --->true then generate the LID now.
		if (generateLID.equalsIgnoreCase("true")) {

			Iterator<String> itr = uniqueurls.iterator();
			while (itr.hasNext()) {
				String url = itr.next();
				Link link = new Link();
				if (linkService.isurlexists(url)) {
					if (url.contains(user.getDomain())) {
						link.setUrl(url);
						System.out.println("URL doesnot exisits!!!!!!!!!!!!");
						// Submit the link for Broadcast
						linkService.submitLink(link, user);
					}
				} else {
					System.out.println("URL exists" + url);
					System.out.println("Please choose another url for broadcasting...");
				}

			}
			return "redirect:/linkbroadcaster";
		}

		if (generateLID.equalsIgnoreCase("false")) {
			// Logic to broadcast the link
			System.out.println("Start Broadcasting");
			System.out.println("*****Selecting the user to send the link**************");
			// Linkstatus status = Linkstatus.PENDING;
			// TO DO Add isBroadcasted in DB query and remove the line 139
			List<Link> links = linkService.findByUserId(user.getId());
			for (Link link : links) {
				System.out.println("Link Status:: ENUM VALUE" + link.getLinkstatus().name());
				// If link is not active , then continue
				if (!"pending".equalsIgnoreCase(link.getLinkstatus().name())) {
					System.out.println("Link Status" + link.getLinkstatus().name());
					continue;
				}

				String randomuserSelected = getRandomUser(user);
				String keyword = request.getParameter("keyword");

				if (!link.getLinkstatus().name().equalsIgnoreCase("BROADCASTED")) {
					boolean result = userLinkService.linkPosted(randomuserSelected, link.getId(), user.getId(),
							user.getEmail());
					if (result) {
						// link.setBroadcasted(true);
						link.setLinkstatus(Linkstatus.BROADCASTED);
						link.setKeyword(keyword);
						linkService.update(link);
						accountService.findAndUpdateLinksSubmitted(user.getEmail());

						System.out.println("Link BroadCasted to User Email::" + randomuserSelected + ">***************<"
								+ link.getLid());
					}
				}
			}
		} else {
			System.out.println("Broadcaster and reciever are same........");
			return "linkbroadcaster";
		}

		return "redirect:/linkbroadcaster";
		// return "dashboard";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/deletelink")
	public void deleteLink() {
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkverifierdata", produces = "application/json")
	@ResponseBody
	public List<LinkVerifierDTO> linkVerifierData(HttpSession session, HttpServletResponse response) {

		User user = UtilFunction.getCurrentUser(session);
		String userid = user.getId();
		List<LinkVerifierDTO> linklist = linkService.getLinksForVerfication(userid);
		if (linklist.isEmpty()) {
			logger.error("verification list empty");
		}
		return linklist;
	}

	@RequestMapping(value = "/linkstatus", method = RequestMethod.GET)
	public String linkStatus(HttpSession session, HttpServletResponse response, ModelMap model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
			return "login";
		}
		String userid = user.getId();

		model.addAttribute("user", user);

		List<Link> mylinksstatus = linkService.findByUserId(userid);
		// LinkStatus ls = new LinkStatus();

		List<UserLink> userLinks = userLinkService.findByUserid(userid);

		List<MyClickStatusDto> myClickStatuslist = new ArrayList<MyClickStatusDto>();

		for (UserLink userLink : userLinks) {
			String buserid = userLink.getBroadcasterUserId();
			List<Link> links = linkService.findByUserId(buserid);
			// System.out.println("Reciever User Name::" +
			// userLink.getUserId());
			User recverUser = userService.findById(userLink.getUserId());

			// LID reciever
			for (Link link : links) {
				if (link.getLinkstatus().compareTo(Linkstatus.PENDING) != 0) {
					if (recverUser.getId().equalsIgnoreCase(userid)
							&& userLink.getLinkId().equalsIgnoreCase(link.getId())) {

						MyClickStatusDto myClickStatusDto = new MyClickStatusDto();
						User contributor = userService.findById(link.getUserId());
						myClickStatusDto.setLid(link.getLid());
						myClickStatusDto.setClickedon(link.getLastTraveredTime());
						myClickStatusDto.setOwnerId(contributor.getFirstname());
						myClickStatusDto.setLinkstatus(link.getLinkstatus());
						myClickStatusDto.setVerifierUrl(link.getAdurl());

						System.out.println("Broadcaster User Name: " + contributor.getFirstname());
						System.out.println("::Reciever User Name::" + recverUser.getFirstname());
						// System.out.println("LInk ID for the broadcasted
						// User:" + link.getLid());
						// System.out.println("Link Recieved By :" +
						// userLink.getLinkId());
						myClickStatuslist.add(myClickStatusDto);
					}
				}
			}
			// break;
		}

		if (mylinksstatus != null)
			model.addAttribute("links", mylinksstatus);

		if (myClickStatuslist != null)
			model.addAttribute("myClickStatuslist", myClickStatuslist);

		return "linksnclicks-status";

	}

	@RequestMapping(value = "/gettoplinks", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<LUV> getTopLinks(HttpSession session) {
		List<LUV> luvList = linkService.findTopLinks(5);
		return luvList;
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkreciever", method = RequestMethod.GET)
	public String linkRecieverPage(HttpSession session, Model model, HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
			return "login";
		}

		// List<Link> links = linkService.findByUserId(user.getId());
		List<UserLink> userlinks = userLinkService.findByUserid(user.getId());
		for (UserLink userlink : userlinks) {
			Link link = linkService.findById(userlink.getLinkId());
			//
			// GET ENUM VALUE AND CHECK ENUM IS BROADCASTED
			// if (link.isBroadcasted() && link.isActive() && !link.isClicked()
			// && !link.isVerified()) {
			//
			System.out.println("Link Status:: ENUM VALUE" + link.getLinkstatus().name());
			if ("broadcasted".equalsIgnoreCase(link.getLinkstatus().name())) {

				User broadcastedUser = userService.findById(link.getUserId());

				// Validate the Userlink with broadcasted user and link recved
				// user
				if (!(broadcastedUser.getId()).equalsIgnoreCase(userlink.getBroadcasterUserId())) {
					continue;
				}
				if (!(link.getId()).equalsIgnoreCase(userlink.getLinkId())) {
					continue;
				}

				LinkRecieverDTO linkrecvDTO = new LinkRecieverDTO();

				linkrecvDTO.setLid(Integer.valueOf(link.getLid()));
				linkrecvDTO.setLinkrecvdDate(link.getLastTraveredTime());
				linkrecvDTO.setUsername(broadcastedUser.getFirstname());

				model.addAttribute("linkrecv", linkrecvDTO);
				break;
			}
		}

		// Link not clicked then show in link reciever table.

		// linkrecvDTO.setAdurl(adurl);
		model.addAttribute("user", user);
		return "linkreciever";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/linkreciever", method = RequestMethod.POST)
	public String linkVerification(HttpSession session, @RequestParam("videourl") String videourl,
			@RequestParam("lid") String lid, @RequestParam("adurl") String adurl) {
		User user = UtilFunction.getCurrentUser(session);

		if (user == null) {
			session.invalidate();
			return "login";
		}

		Link link = linkService.findByLid(lid);
		if (link != null) {
			// Linkstatus status = Linkstatus.CLICKED;
			link.setLinkstatus(Linkstatus.CLICKED);

			link.setLastTraveredTime(new Date());
			link.setVideourl(videourl);
			link.setAdurl(adurl);
			linkService.update(link);
			return "redirect:/linkreciever?verify=false";
		}

		return "linkreciever";

	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/proofresult", method = RequestMethod.GET)
	public String showLinkVerifierPage(HttpServletRequest request, HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
			return "logout";
		}

		boolean isApproved = Boolean.valueOf(request.getParameter("isApproved"));

		List<UserLink> userlinks = userLinkService.findByBroadcasterId(user.getId());
		LinkVerifierDTO linkVerifierDTO = new LinkVerifierDTO();

		if (userlinks == null || userlinks.isEmpty()) {
			return "linkverifier";
		}

		for (UserLink userlink : userlinks) {
			String linkId = userlink.getLinkId();
			// CHANGE THIS ENUM
			Link link = linkService.findByIdAndIsClicked(linkId);

			if (null != link) {
				// Link Not Verified Yet
				if (isApproved) {
					// Logic to update the links table
					link.setApproved(isApproved);
					link.setLinkstatus(Linkstatus.VERIFIED);
					linkService.update(link);
					return "redirect:/proofresult?isApproved=false";
				}

				System.out.println("*******LINK" + link);

				User contributor = userService.findById(userlink.getUserId());
				System.out.println("Contributor ID" + contributor.getFirstname());

				// LOGIC to replace the watch with embed in the URL
				String youtubestr = link.getVideourl();
				if (youtubestr != null) {
					StringBuilder builder = new StringBuilder(youtubestr);
					builder.replace(24, 32, "embed/");

					linkVerifierDTO.setDomain(user.getDomain());
					linkVerifierDTO.setLinkId(link.getLid());
					linkVerifierDTO.setUserName(contributor.getFirstname());

					linkVerifierDTO.setProofFileName(builder.toString());
					linkVerifierDTO.setSubmissionDate(new Date());
					linkVerifierDTO.setDomain(link.getUrl());
					linkVerifierDTO.setMyAdurl(link.getAdurl());
				}
				model.addAttribute("linkVerifierDTO", linkVerifierDTO);
				break;

			}

		}
		model.addAttribute("user", user);
		return "linkverifier";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/mylinks")
	@ResponseBody
	public String getMyLinks(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();

		return "PAVAN";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/luv")
	public String getLinkUniqueness(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		/*
		 * List<Link> linkList = linkService.getLinksPostedByUser(user.getId());
		 * List<LUV> luvList = new ArrayList<LUV>(); for (Link link : linkList)
		 * { long days = (new Date().getTime() - (link.getCreationTime())
		 * .getTime()) / (24 * 3600 * 1000l); luvList.add(new
		 * LUV(link.getCreationTime(), link.getId(), null, link.getUrl(),
		 * userLinkService.countClicksOnLink(link .getId()), days,
		 * link.isActive())); }
		 */
		return "luv";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping("/complaints")
	public String complaints(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();

		return "complaints";
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

	private String getRandomUser(User user) {
		User selecteduser = userService.getRandomUser();
		System.out.println("*****Selecting the user to send the link**************" + selecteduser.getEmail());
		String randomuserSelected = selecteduser.getId();
		// Re generate the Ramdom User ... if equals
		while (user.getId().equalsIgnoreCase(randomuserSelected)) {
			System.out.println("Generating the Random User Again......");
			selecteduser = userService.getRandomUser();
			randomuserSelected = selecteduser.getId();
		}
		return randomuserSelected;
	}
}
