package com.billjc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.billjc.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static Logger logger = LoggerFactory
					.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}


}
