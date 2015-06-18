package com.myt.pmg.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.dto.QuestionDto;
import com.myt.pmg.mail.VelocityTemplateMail;
import com.myt.pmg.model.Questionnaire;
import com.myt.pmg.model.User;
import com.myt.pmg.model.User.Level;
import com.myt.pmg.service.QuestionnaireService;
import com.myt.pmg.service.UserService;

@Controller
public class UserController {

	static final Logger logger = Logger.getLogger(UserController.class);

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private VelocityTemplateMail velocityTemplateMail;

	public void setVelocityTemplateMail(
			VelocityTemplateMail velocityTemplateMail) {
		this.velocityTemplateMail = velocityTemplateMail;
	}

	private QuestionnaireService questionnaireService;

	public void setQuestionnaireService(
			QuestionnaireService questionnaireService) {
		this.questionnaireService = questionnaireService;
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.GET)
	public String redirectToRoe() {
		return "redirect:/roe";
	}

	@RequestMapping(value = "/roe", method = RequestMethod.GET)
	public String showRoe() {
		return "roe";
	}

	@RequestMapping(value = "/quest", method = RequestMethod.GET)
	public String showQuest(Model model) {
		model.addAttribute("user",new User());
		return "signup";
	}

	@RequestMapping(value = "/getquestions", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<QuestionDto> getQuestions() {
		List<QuestionDto> queDto = new ArrayList<QuestionDto>();
		List<Questionnaire> queList = questionnaireService.getQueList();
		for (Questionnaire questionnaire : queList) {
			queDto.add(new QuestionDto(questionnaire.getId(), questionnaire
					.getQue(), questionnaire.getOp1(), questionnaire.getOp2(),
					questionnaire.getOp3(), questionnaire.getOp4()));
		}
		return queDto;
	}

	@RequestMapping(value = "/checkans", method = RequestMethod.POST)
	@ResponseBody
	public String processQuest(HttpServletRequest request) {
		boolean flag = false;
		int i = 0;
		while (request.getParameter("que" + i) != null) {
			String ans = questionnaireService.getAnswerForId(request
					.getParameter("que" + i));
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
		model.addAttribute("user",new User());
		String[] locales = Locale.getISOCountries();
		Map<String, String> countries = new HashMap<String, String>();
		for (String countryCode : locales) {
			Locale obj = new Locale("", countryCode);
			countries.put(obj.getCountry(), obj.getDisplayCountry());
		}
		model.addAttribute("countryList", countries);
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String createAccount(User user, BindingResult result) {

		if (result.hasErrors()) {

			return "signup";
		}
		if (!userService.usernameTaken(user.getUsername())) {
			// result.rejectValue("name", );
			return "signup";
		}
		try {
			userService.createUser(user);
		} catch (DuplicateKeyException e) {
			// result.rejectValue("username", "DuplicateKey.user.username");
			return "signup";
		}
	//	velocityTemplateMail.sendVerificationMail(user);
		return "redirect:/login?signupcomplete=true";

	}

	@RequestMapping("/verifyaccount")
	public String verifyEmail(
			@RequestParam(value = "uid", required = true) String uid) {
		User user = (User) userService.findById(uid);
		if (user == null)
			return "redirect:/login?verified=false";
		else {
			user.setLevel(Level.BOLT);
			user.setActive(true);
			Update update = new Update();
			update.set("active", true);
			userService.updateUser(user);
			return "redirect:/login?verified=true";
		}
	}

	@RequestMapping("/deleteaccount")
	public String deleteAccount() {
		return "deleteaccount";
	}

	@RequestMapping("/resetpassword")
	public String forgotPassword(
			@RequestParam(value = "resetPasswordEmail", required = false) String email) {
		User user = userService.findByEmail(email);
		if (user == null)
			return "redirect:/login?resetpass=false";
		else {
			velocityTemplateMail.sendResetPasswordMail(user);
			return "redirect:/login?resetpass=true";
		}
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String showEditProfile(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		model.addAttribute("user", user);
		return "profile";
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String showEditProfile(@RequestParam(value = "uid") String uid,
			Model model) {
		User user = userService.findById(uid);
		model.addAttribute("user", user);
		return "profile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String editProfile(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "profile";
		}
		Update update = null;
		userService.updateUser(user);
		return "dashboard";
	}

	@RequestMapping(value = "/savepic", method = RequestMethod.POST)
	@ResponseBody
	public String savePic(@RequestParam("pic") MultipartFile file,
			@RequestParam("picName") String picName) throws IOException {
		ResourceBundleMessageSource bean = new ResourceBundleMessageSource();
		bean.setBasename("paths");
		String saveDirectory = bean.getMessage("File.image.savepath", null,
				Locale.getDefault());
		System.out.println(saveDirectory);
		String fileName = picName;
		if (!"".equalsIgnoreCase(fileName)) {
			file.transferTo(new File(saveDirectory + fileName));
			return fileName;
		} else
			return "err";
	}
}
