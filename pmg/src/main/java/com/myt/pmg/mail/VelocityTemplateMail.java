package com.myt.pmg.mail;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.myt.pmg.model.User;

public class VelocityTemplateMail {

	static Logger logger = Logger.getLogger(VelocityTemplateMail.class);

	private JavaMailSender mailSender;

	private VelocityEngine velocityEngine;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void setVelocityEngine(VelocityEngine velocityEngine) {
		this.velocityEngine = velocityEngine;
	}

	public void sendResetPasswordMail(final User user, final HttpServletRequest request) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			@SuppressWarnings({ "rawtypes", "unchecked" })
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(user.getEmail());
				message.setFrom("admin@wishgrab.com");
				message.setSubject("Reset Password Mail from PMG");
				message.setSentDate(new Date());
				Map model = new HashMap();
				model.put("username", user.getEmail());
				StringBuilder link = new StringBuilder("http://");
				link.append(request.getServerName()+":"+request.getServerPort());
				link.append(request.getContextPath()+"/changepassword?uid=");
				/*StringBuilder link = new StringBuilder(
						"http://107.161.95.16:8080/pmg/changepassword?uid=");*/
				link.append(user.getId());
				model.put("link", link);
				String text = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "templates/forgot_password.vm",
						"UTF-8", model);
				message.setText(text, true);
			}
		};
		mailSender.send(preparator);
	}

	public void sendVerificationMail(final User user,
			final HttpServletRequest request) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			// @SuppressWarnings({ "rawtypes", "unchecked" })
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(user.getEmail());
				message.setFrom("admin@promagizmo.com");
				
				message.setSubject("Verification Mail from PMG");
				message.setSentDate(new Date());
				Map model = new HashMap();
				model.put("username", user.getEmail());
				StringBuilder link = new StringBuilder("http://");
				link.append(request.getServerName()+":"+request.getServerPort());
				link.append(request.getContextPath()+"/verifyaccount?uid=");
			/*	StringBuilder link = new StringBuilder(
						"http://107.161.95.16:8080/pmg/verifyaccount?uid=");*/
				link.append(user.getId());
				
				logger.info(link);
				
				model.put("link", link);
				String text = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "templates/verification_email.vm",
						"UTF-8", model);
				message.setText(text, true);
			}
		};
		mailSender.send(preparator);
	}
}
