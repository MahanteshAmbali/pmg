package com.myt.pmg.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.myt.pmg.model.Link;
import com.myt.pmg.model.User;
import com.myt.pmg.service.LoginService;

@Controller
public class AccessController {
	static final Logger logger = Logger.getLogger(AccessController.class);

	
	@Autowired
	private LoginService  loginservice;
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
	public String showLogin(
			@RequestParam(value = "signupcomplete", required = false) String signupcomplete,
			@RequestParam(value = "verified", required = false) String verified,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "resetpass", required = false) String resetpass,
			@RequestParam(value = "loggedout", required = false) String loggedout,
			@RequestParam(value = "ipban", required = false) String ipban,
			@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "password", required = false) String password,
			Model model) {
		
		//loginservice.loadUserByUsername(email);
		logger.info("In access controller");
		if (signupcomplete != null) {
			model.addAttribute(
					"signupcomplete",
					"An email verification link has been sent to the email id. Kindly click on the link and let us know that you really wanna join in.");
			logger.info("SignUp Complete");
		}
		if (verified != null) {
			if (verified.equals("true")) {
				model.addAttribute(
						"verified",
						"Hope you still remember and agree with our Rules of Engagement. Your trustworthiness has been verified and you're good to go.");
				logger.info("Verfication success.");
			} else {
				model.addAttribute("verified",
						"Verification Failed. Please Regiser Again");
				logger.info("Verfication failed.");
			}
		}
		/*
		 * if (error != null) { if (ipban != null) { model.addAttribute("error",
		 * "Login failed. Your IP has being denied access."); } else {
		 * model.addAttribute("error",
		 * "Login failed. Check your email and password."); }
		 * logger.info("Login failed"); }
		 */
		if (resetpass != null) {
			if (resetpass.equals(true)) {
				model.addAttribute(
						"resetpass",
						"A password reset link has been sent to your email id. Kindly click on the link and set up new credentials");
				logger.info("Login failed");
			} else if (resetpass.equals(false)) {
				model.addAttribute("resetpass",
						"The email you provided is not registered with us.");
				logger.info("Login failed");
			}
		}
		if (loggedout != null) {
			model.addAttribute("loggedout",
					"Logout successful. Login again to continue.");
			logger.info("Logout success.");
		}
		if (email != null) {
			if (email.equalsIgnoreCase("pavan@gmail.com")
					&& password.equalsIgnoreCase("pavan")) {
				System.out.println("here in Login Success");
				model.addAttribute("user", new User());
				model.addAttribute("link", new Link());
				return "linkbroadcaster";
			}
		}

		return "login";
	}

}
