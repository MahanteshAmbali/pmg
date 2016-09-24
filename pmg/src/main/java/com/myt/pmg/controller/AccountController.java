
package com.myt.pmg.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.model.Account;
import com.myt.pmg.model.Ip;
import com.myt.pmg.model.User;
import com.myt.pmg.service.AccountService;
import com.myt.pmg.service.GridFSService;
import com.myt.pmg.service.IpService;
import com.myt.pmg.service.UserService;

@Controller
public class AccountController {

	static final Logger logger = Logger.getLogger(AccountController.class);

	@Autowired
	private AccountService accountService;

	@Autowired
	UserService userService;

	@Autowired
	private IpService ipService;

	@Autowired
	GridFSService gridFSService;

	private static String SESSION_OBJ = "SessionObj";

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String accountPage(Model model, Principal principal, HttpServletRequest request, HttpSession session) throws IOException {
		User user = userService.findByEmail(principal.getName());
		Account account = accountService.findByUserId(user.getEmail());
		if (session.getAttribute(SESSION_OBJ) == null) {
			UtilFunction.setCurrentUser(session, user);
			String ipAddress = request.getHeader("X-FORWARDED-FOR");
			
			if (ipAddress == null) {
				ipAddress = request.getRemoteAddr();
			}
			Ip ip1 = ipService.findByIp(ipAddress, user.getId());
			if (ip1 == null) {
				Ip ip = new Ip();
				ip.setAccessTime(new Date());
				ip.setIp(ipAddress);
				ip.setUserid(user.getId());
				ipService.saveIp(ip);

			} else {
				ip1.setAccessTime(new Date());
				ipService.updateIp(ip1);
				if (ip1.isBanned()) {
					session.invalidate();
					return "redirect:/login?error=true&ipban=true";
				}
			}
		}
		model.addAttribute("user", user);
		model.addAttribute("account", account);
		logger.info("Logon" + user);

		String path = (String) session.getAttribute("path");

		System.out.println(":::::::::::::Path from the Session Object:::::::::::" + path);
		if (path == null)
			path = gridFSService.getpic(user, session);

		System.out.println("::::::::::::::::Image File Name:::::::::" + path);
		if (path != null) {
			model.addAttribute("path", path);
		}

		return "account";
	}

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/accountsetup", method = RequestMethod.POST)
	public String accountSetup(Model model, Principal principal, HttpServletRequest request, HttpSession session,
			@ModelAttribute("account") Account account) {
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			return "login";
		}
		account.setUserId(user.getEmail());
		Account test = accountService.findByUserId(user.getEmail());
		if (test != null) {
			// Account is not null then updating the existing the account
			account.setId(test.getId());
		}
		account = accountService.saveAccount(account);
		model.addAttribute("user", user);

		return "account";
	}

}
