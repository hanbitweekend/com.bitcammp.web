package com.bitcamp.web.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy 년 MM 월 dd 일 hh 시 mm 분");
		Date date = new Date();
		String formattedDate = sdf.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/login_form", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("HomeController: loginForm() ENTER");
		return "member/login";
	}
	
}
