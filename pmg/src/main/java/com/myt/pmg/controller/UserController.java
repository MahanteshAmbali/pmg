
package com.myt.pmg.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.dto.EditUserDto;
import com.myt.pmg.dto.QuestionDto;
import com.myt.pmg.mail.VelocityTemplateMail;
import com.myt.pmg.model.Questionnaire;
import com.myt.pmg.model.User;
import com.myt.pmg.model.User.Level;
import com.myt.pmg.service.GridFSService;
import com.myt.pmg.service.QuestionnaireService;
import com.myt.pmg.service.ResetPasswordService;
import com.myt.pmg.service.UserService;

@Controller
public class UserController {

	static final Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	private ResetPasswordService resetPasswordService;

	@Autowired
	private UserService userService;

	@Autowired
	private GridFSService gridFSService;

	@Autowired
	private VelocityTemplateMail velocityTemplateMail;

	private QuestionnaireService questionnaireService;

	public void setVelocityTemplateMail(VelocityTemplateMail velocityTemplateMail) {
		this.velocityTemplateMail = velocityTemplateMail;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setQuestionnaireService(QuestionnaireService questionnaireService) {
		this.questionnaireService = questionnaireService;
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.GET)
	public String redirectToRoe() {
		return "redirect:/roe";
	}

	@RequestMapping(value = "/roe", method = RequestMethod.GET)
	public String showRoe() {
		return "quest";
	}

	@RequestMapping(value = "/quest", method = RequestMethod.GET)
	public String showQuest(Model model) {
		model.addAttribute("user", new User());
		return "signup";
	}

	@RequestMapping(value = "/getquestions", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<QuestionDto> getQuestions() {
		List<QuestionDto> queDto = new ArrayList<QuestionDto>();
		List<Questionnaire> queList = questionnaireService.getQueList();
		for (Questionnaire questionnaire : queList) {
			queDto.add(new QuestionDto(questionnaire.getId(), questionnaire.getQue(), questionnaire.getOp1(),
					questionnaire.getOp2(), questionnaire.getOp3(), questionnaire.getOp4()));
		}
		return queDto;
	}

	@RequestMapping(value = "/checkans", method = RequestMethod.POST)
	@ResponseBody
	public String processQuest(HttpServletRequest request) {
		boolean flag = false;
		int i = 0;
		while (request.getParameter("que" + i) != null) {
			String ans = questionnaireService.getAnswerForId(request.getParameter("que" + i));
			if (ans.equals(request.getParameter("ans" + i))) {
				flag = true;
				i++;
			} else {
				flag = false;
				break;
			}
		}
		if (flag)
			return "signup";
		else
			return "quest";
	}

	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Model model, HttpSession httpSession) {
		User user = UtilFunction.getCurrentUser(httpSession);
		model.addAttribute("user", user);
		return "chat";
	}

	@RequestMapping(value = "/chat", method = RequestMethod.POST)
	public void chaasdt(Model model, HttpSession httpSession) {
		// user
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showCreateAccount(Model model) {
		model.addAttribute("user", new User());
		String[] locales = Locale.getISOCountries();
		Map<String, String> countries = new HashMap<String, String>();
		for (String countryCode : locales) {
			Locale obj = new Locale("", countryCode);
			countries.put(obj.getCountry(), obj.getDisplayCountry());
		}
		model.addAttribute("countryList", countries);
		return "signup";
	}

	@RequestMapping(value = "/signupfailed", method = RequestMethod.GET)
	public String createAccountfailed() {

		return "";

	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String createAccount(@ModelAttribute("user") User user, HttpServletRequest request, Model model) {

		boolean userExists = userService.usernameExists(user.getEmail());
		boolean domainExists = userService.domainExists(user.getDomain());

		if (userExists && domainExists) {
			logger.warn("Username  Details Exists...!!!!!!!");
			logger.warn("Domain Name" + user.getDomain());
			logger.warn("User Email" + user.getEmail());
			model.addAttribute("error", "Signupfailed");
			model.addAttribute("domain", user.getDomain());
			model.addAttribute("email", user.getEmail());
			return "signup";
		}

		if (userExists) {
			logger.warn("User Email" + user.getEmail());
			model.addAttribute("error", "Signupfailed");
			model.addAttribute("email", user.getEmail());
			return "signup";
		}

		if (domainExists) {
			logger.warn("Domain Name" + user.getDomain());
			model.addAttribute("error", "Signupfailed");
			model.addAttribute("domain", user.getDomain());
			return "signup";
		}

		try {
			userService.createUser(user);
			velocityTemplateMail.sendVerificationMail(user, request);
		} catch (DuplicateKeyException e) {
			// result.rejectValue("username", "DuplicateKey.user.username");
			logger.error("Duplicate Key>" + e);
			return "signup";
		} catch (Exception e) {
			logger.error("Registration Failed >" + e);
			e.printStackTrace();
			return "redirect:/signup?signupcomplete=false";
		}

		logger.info("Registration Success!!! Please check email");
		model.addAttribute("email", user.getEmail());
		return "emailver";
	}

	@RequestMapping("/verifyaccount")
	public String verifyEmail(@RequestParam(value = "uid", required = true) String uid) {
		User user = (User) userService.findById(uid);
		if (user == null)
			return "redirect:/login?verified=false";
		else {
			user.setLevel(Level.SNAIL);
			user.setActive(true);
			/*
			 * Update update = new Update(); update.set("active", true);
			 */
			userService.updateUser(user);
			return "thankyou";
		}
	}

	@RequestMapping("/deleteaccount")
	public String deleteAccount() {
		return "deleteaccount";
	}

	@RequestMapping(value = "/resetpasswd", method = RequestMethod.GET)
	public String resetPassword(HttpServletRequest request) {

		return "forgotpassword";
	}

	@RequestMapping(value = "/forgot", method = RequestMethod.POST)
	public String resetPassword(@RequestParam String email, HttpServletRequest request) {
		User user = userService.findByEmail(email);
		if (user == null)
			return "redirect:/login?resetpass=false";
		else {
			velocityTemplateMail.sendResetPasswordMail(user, request);
			return "redirect:/login?resetpass=true";
		}
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String changePassword(@RequestParam String email, HttpServletRequest request) {
		User user = userService.findByEmail(email);
		if (user == null)
			return "redirect:/login?invalidueremail=true";
		user.setPassword("admin");
		resetPasswordService.loadUserByUsername(email);

		velocityTemplateMail.sendVerificationMail(user, request);

		// velocityTemplateMail.sendResetPasswordMail(user, request);
		return "redirect:/login?resetpass=donesuccess";
	}

	/*
	 * @RequestMapping(value = "/resetpasswd", method = RequestMethod.GET)
	 * public String resetPassword(HttpServletRequest request) {
	 * 
	 * return "forgotpassword"; }
	 * 
	 * @RequestMapping(value = "/resetpassword", method = RequestMethod.GET)
	 * public String forgotPassword(@RequestParam(value = "resetPasswordEmail",
	 * required = false) String email, HttpServletRequest request) { User user =
	 * userService.findByEmail(email); if (user == null) return
	 * "redirect:/login?resetpass=false"; else {
	 * velocityTemplateMail.sendResetPasswordMail(user, request); return
	 * "redirect:/login?resetpass=true"; } // DigestUtils.sha1Hex(password);
	 * 
	 * }
	 * 
	 * 
	 * @RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	 * public String showEditProfile(@RequestParam(value = "uid") String uid,
	 * Model model) { User user = userService.findById(uid);
	 * model.addAttribute("user", user); return "profile"; }
	 * 
	 * @RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	 * public String changePassword(HttpSession session, Model model) { // User
	 * user = userService.findById(uid);
	 * 
	 * return "reset"; }
	 * 
	 * @RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	 * public String changePassword(HttpSession session, @RequestParam String
	 * n_password, Model model) { // User user = userService.findById(uid); User
	 * user = UtilFunction.getCurrentUser(session); model.addAttribute("user",
	 * user); return "profile"; }
	 */

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String showEditProfile(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			return "redirect:/login?session=false";
		model.addAttribute("user", user);
		return "profile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String editProfile(HttpSession session, Model model, @ModelAttribute("user") User user,
			BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("Errors Found!!!! So User details not updated");
			return "profile";
		}

		userService.updateUser(user);
		return "dashboard";
	}

	@RequestMapping(value = "/uploadpic", method = RequestMethod.POST)
	public String uploadpic(HttpSession session, @RequestParam("file") MultipartFile file) throws IOException {

		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			return "redirect:/login?session=false";

		String pic_id = gridFSService.save(file);

		System.out.println("Profile Image uploaded Succussfully!!!!!!!!!!");
		System.out.println("PIC ID::" + pic_id);

		if (pic_id != null) {
			user.setPic_id(pic_id);
			userService.updateUser(user);
		}

		return "redirect:/profile";

	}

	@RequestMapping(value = "/showpic", method = RequestMethod.GET)
	public String showPic(HttpSession session, HttpServletRequest request) {

		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			return "redirect:/login?session=false";

		String imgpath = null;
		try {
			imgpath = gridFSService.getpic(user, session);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (imgpath != null)
				session.setAttribute("imgpath", imgpath);
			else
				session.removeAttribute(imgpath);
		}
		return "redirect:/profile";
	}

	@RequestMapping(value = "/edituser", method = RequestMethod.POST)
	public String editUser(HttpSession session, HttpServletRequest request,
			@ModelAttribute("editUser") EditUserDto editUserDto) throws ParseException {

		User user = UtilFunction.getCurrentUser(session);

		if (user == null)
			return "redirect:/login?session=false";

		String firstname = editUserDto.getFirstname();
		if (StringUtils.isNotBlank(firstname) && StringUtils.isNotEmpty(firstname))
			user.setFirstname(firstname);

		String lastname = editUserDto.getLastname();
		if (StringUtils.isNotBlank(lastname) && StringUtils.isNotEmpty(lastname))
			user.setLastname(lastname);

		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");

		if ((editUserDto.getDob()) != null) {
			Date dob = df.parse(editUserDto.getDob());
			user.setDob(df.format(dob));
		}

		String country = editUserDto.getCountry();
		if (StringUtils.isNotBlank(country) && StringUtils.isNotEmpty(country))
			user.setCountry(country);

		String gender = editUserDto.getGender();
		if (StringUtils.isNotBlank(gender) && StringUtils.isNotEmpty(gender))
			user.setGender(gender);

		userService.updateUser(user);

		return "redirect:/profile";
	}

}
