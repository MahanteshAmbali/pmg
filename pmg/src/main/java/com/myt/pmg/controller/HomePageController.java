package com.myt.pmg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {

	@RequestMapping(value = "/indexPage", method = RequestMethod.GET)
	public String indexPage() {

		System.out.println("Here In Index Page JSP");

		return "indexPage";
	}

	@RequestMapping(value = "/RoE", method = RequestMethod.GET)
	public String roE() {

		System.out.println("Here In Index Page JSP");

		return "roe";
	}

	@RequestMapping(value = "/RoE-Test", method = RequestMethod.GET)
	public String roETest() {

		System.out.println("Here In Index Page JSP");

		return "roe-Test";
	}

}
