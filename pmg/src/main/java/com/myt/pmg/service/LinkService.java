package com.myt.pmg.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.LinkDao;
import com.myt.pmg.dto.LUV;
import com.myt.pmg.dto.LinkVerifierDTO;
import com.myt.pmg.model.Link;
import com.myt.pmg.model.Link.Linkstatus;
import com.myt.pmg.model.Proof;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLink;

@Service
public class LinkService {

	@Autowired
	private LinkDao linkDao;

	@Autowired
	private UserService userService;

	@Autowired
	private ProofService proofService;

	@Autowired
	private UserLinkService userlinkService;

	public void setLinkDao(LinkDao linkDao) {
		this.linkDao = linkDao;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	public void setUserlinkService(UserLinkService userlinkService) {
		this.userlinkService = userlinkService;
	}

	// Save Link to database, create UserLink object
	public String submitLink(Link link, User user) {
		if (userService.isUserEligible(user)) {
			link.setUserId(user.getId());
			// link.setActive(true);
			link.setLinkstatus(Linkstatus.PENDING);
			// link.setIsBroadcasted("YES");
			link.setCreationTime(new Date());
			link.setLastTraveredTime(new Date());
			if (link.getLid() != 0 || link.getLid() <= 0) {
				link.setLid(generateLID());
			}
			createLink(link);
			return "Link submitted!!!";
		} else
			return "User Not Eligible For Link Submission!!!";
	}

	private int generateLID() {
		Random rnd = new Random();
		int n = 100000 + rnd.nextInt(900000);
		return n;
	}

	public boolean exists(Link link) {
		return true;
	}

	public List<Link> getLinksPostedByUser(String userid) {
		return linkDao.findLinksPostedByUser(userid);
	}

	//
	public List<Link> getAllLinks() {
		return linkDao.findAll();
	}

	public List<Link> getLinksSortByTime(int n) {
		return linkDao.getLinksSortByTime(n);
	}

	public List<Link> getActiveLinks() {
		return linkDao.getActiveLinks();
	}

	/*
	 * public List<LinkRecieverDTO> getLinksPostedToUser(String userid) {
	 * List<LinkRecieverDTO> linkRecievers = new ArrayList<LinkRecieverDTO>();
	 * List<Link> links = linkDao.findAllLinksPostedToUser(userid); for (Link
	 * link : links) { User user = userService.findById(link.getUserId());
	 * LinkRecieverDTO linkReciever = new LinkRecieverDTO(link.getId(),
	 * link.getUrl(), user.getId(), user.getEmail());
	 * linkRecievers.add(linkReciever); } return linkRecievers; }
	 * 
	 * public List<LinkRecieverDTO> getLimitedLinksPostedToUser(String userid,
	 * int n) { List<LinkRecieverDTO> linkRecievers = new
	 * ArrayList<LinkRecieverDTO>(); List<Link> links =
	 * linkDao.findLimitedLinksPostedToUser(userid, n); for (Link link : links)
	 * { User user = userService.findById(userid); LinkRecieverDTO linkReciever
	 * = new LinkRecieverDTO(link.getId(), link.getUrl(), user.getId(),
	 * user.getEmail()); linkRecievers.add(linkReciever); } return
	 * linkRecievers; }
	 */

	public void deleteById(String id) {
	}

	public void createLink(Link link) {
		if (linkDao == null)
			System.out.println("linkDao is null");
		linkDao.add(link);
		/*
		 * if (linkSubmitionEligiblity(link)) { linkDao.add(link); }
		 */
	}


	// Check user eligibility for posting links
	public boolean linkSubmitionEligiblity(Link link) {
		// Logic to check the best time in account.jsp
		// Logic to check the last submitted time >=48hours
		return false;

	}

	public void update(Link link) {
		linkDao.update(link);
	}

	public Link findByLid(String lid) {
		return linkDao.findByLid(lid);
	}

	public List<LinkVerifierDTO> getLinksForVerfication(String userid) {
		List<LinkVerifierDTO> linkVerifiers = new ArrayList<LinkVerifierDTO>();
		List<Proof> proofs = new ArrayList<Proof>();
		List<Link> linklist = getLinksPostedByUser(userid);
		for (Link link : linklist) {
			proofs.addAll(proofService.getProofsForLinkId(link.getId()));
		}
		for (Proof proof : proofs) {
			/*
			 * if (!(linkDao.findByLinkId(proof.getLinkId()).isVerified())) {
			 * User user = userService.findById(proof.getUserId()); Link link =
			 * linkDao.findById(proof.getLinkId()); LinkVerifierDTO lv = new
			 * LinkVerifierDTO(); linkVerifiers.add(lv); }
			 */
		}
		return linkVerifiers;
	}

	public List<LUV> findTopLinks(int n) {
		List<UserLink> userlinkList = userlinkService.findAll();
		String linkId;
		Map<String, Integer> map = new HashMap<String, Integer>();
		for (UserLink ul : userlinkList) {
			linkId = ul.getLinkId();
			Integer count = map.get(linkId);
			/*
			 * if (ul.isClicked()) map.put(linkId, (count == null) ? 1 : count +
			 * 1);
			 */
		}
		int i = 0;
		Map<String, Integer> treeMap = sortByComparator1(map);
		List<LUV> luvList = new ArrayList<LUV>();
		for (Map.Entry<String, Integer> entry : treeMap.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : " + entry.getValue());
			Link link = linkDao.findById(entry.getKey());
			long days = (new Date().getTime() - link.getCreationTime().getTime()) / (24 * 3600 * 1000l);
			// luvList.add(new LUV(link.getCreationTime(), link.getId(),
			// userService.findById(link.getUserId()).getEmail(),link.getUrl(),
			// entry.getValue(), days, link.isActive()));
			if (i == n) {
				break;
			}
		}
		return luvList;
	}

	private Map<String, Integer> sortByComparator1(Map<String, Integer> unsortMap) {

		// Convert Map to List
		List<Map.Entry<String, Integer>> list = new LinkedList<Map.Entry<String, Integer>>(unsortMap.entrySet());

		// Sort list with comparator, to compare the Map values
		Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
			public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
				return (o2.getValue()).compareTo(o1.getValue());
			}
		});

		// Convert sorted map back to a Map
		Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();
		for (Iterator<Map.Entry<String, Integer>> it = list.iterator(); it.hasNext();) {
			Map.Entry<String, Integer> entry = it.next();
			sortedMap.put(entry.getKey(), entry.getValue());
		}
		return sortedMap;
	}

	public Link findById(String id) {
		return linkDao.findById(id);
	}

	public List<Link> findByUserId(String userid) {
		return linkDao.findByUserId(userid);
	}

	public boolean isurlexists(String url) {
		return linkDao.isurlexists(url);
	}

	public Link findByIdAndIsClicked(String linkId) {
		return linkDao.findByIdAndIsClicked(linkId);
	}

	public Link findByIdAndIsClickedAndIsNotApproved(String linkId) {
		return linkDao.findByIdAndIsClickedAndIsNotApproved(linkId);
	}

}
