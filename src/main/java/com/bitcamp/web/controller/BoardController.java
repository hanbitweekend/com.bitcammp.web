package com.bitcamp.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@RequestMapping("/board/write_form")
	public String writeForm() {
		logger.info("=== BoardController: writeForm() ENTER ===");
		return "board/write";
	}
}
