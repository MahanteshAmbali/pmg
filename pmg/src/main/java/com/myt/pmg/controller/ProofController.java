package com.myt.pmg.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.myt.pmg.common.UtilFunction;
import com.myt.pmg.helper.DownloadHandler;
import com.myt.pmg.model.Proof;
import com.myt.pmg.model.User;
import com.myt.pmg.model.UserLink;
import com.myt.pmg.service.ProofService;
import com.myt.pmg.service.UserLinkService;

@Controller
public class ProofController {

	private ProofService proofService;

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	private UserLinkService userlinkService;

	public void setUserlinkService(UserLinkService userlinkService) {
		this.userlinkService = userlinkService;
	}

	private DownloadHandler downloadHandler;

	public void setDownloadHandler(DownloadHandler downloadHandler) {
		this.downloadHandler = downloadHandler;
	}

	@RequestMapping(value = "/linkverifier", method = RequestMethod.GET)
	public String showCreateProof(Model model, HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}
		model.addAttribute("user", user);
		return "linkverifier";
	}

	@RequestMapping(value = "/linkverifier", method = RequestMethod.POST)
	@ResponseBody
	public String createProof(HttpServletRequest request, HttpSession session)
			throws IllegalStateException, IOException {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		ResourceBundleMessageSource bean = new ResourceBundleMessageSource();
		bean.setBasename("paths");
		String saveDirectory = bean.getMessage("File.proof.savepath", null,
				Locale.getDefault());
		int i = 0;
		Map<?, ?> map = multipartRequest.getFileMap();
		MultipartFile mfile = null;
		for (Iterator iter = map.values().iterator(); iter.hasNext();) {
			mfile = (MultipartFile) iter.next();
			Proof proof = new Proof();
			String fileName = mfile.getOriginalFilename();
			long hash = (new Date()).getTime();
			fileName = hash + fileName;
			if (!"".equalsIgnoreCase(fileName)) {
				UserLink ul = userlinkService.findByLinkId(request
						.getParameter("linkIds" + i));
				if (ul != null) {
					mfile.transferTo(new File(saveDirectory + fileName));
					System.out.println(saveDirectory + fileName);
					proof.setLinkId(request.getParameter("linkIds" + i));
					proof.setFileName(fileName);
					proof.setUserId(UtilFunction.getCurrentUser(session)
							.getId());
					proof.setSubmissionDate(new Date());
					proofService.createProof(proof);
					ul.setClicked(true);
					// ul.setProofId(proofId);
					userlinkService.update(ul);
					i++;
				}
			}
		}
		return "dashboard";
	}

	@RequestMapping(value = "/downloadproof", method = RequestMethod.POST)
	public void downloadProof(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("fileName") String fileName) {
		downloadHandler.doDownload(request, response, fileName);
	}
}
