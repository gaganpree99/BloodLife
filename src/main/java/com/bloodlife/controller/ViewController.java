package com.bloodlife.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

	@RequestMapping("/")
	public String login() {
		return "login";
	}

	@RequestMapping("/homepage")
	public String homepage() {
		return "homepage";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/donor")
	public String donor() {
		return "donor";
	}

	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@RequestMapping("/receiver")
	public String receiver() {
		return "receiver";
	}
}
