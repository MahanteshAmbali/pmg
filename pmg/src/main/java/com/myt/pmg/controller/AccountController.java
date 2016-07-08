
package com.myt.pmg.controller;

import java.security.Principal;

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
import com.myt.pmg.model.User;
import com.myt.pmg.service.AccountService;

@Controller
public class AccountController {

	static final Logger logger = Logger.getLogger(AccountController.class);

	@Autowired
	private AccountService accountService;

	@PreAuthorize(value = "hasRole('ROLE_USER')")
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String accountPage(Model model, Principal principal, HttpServletRequest request, HttpSession session) {
		// User user = userService.findByEmail(principal.getName());
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			// Send User to same Page showing user is not logged in
			return "login";
		}
		// Account account = accountService.findByUserId(user.getId());
		Account account = accountService.findByUserId(user.getEmail());

		model.addAttribute("account", account);
		model.addAttribute("user", user);

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
		if (test != null){
			//Account is not null then updating the existing the account
			account.setId(test.getId());
		}
		account = accountService.saveAccount(account);
		System.out.println("*******Account Created for User" + account.getUserId());
		model.addAttribute("user", user);

		return "account";
	}

}
