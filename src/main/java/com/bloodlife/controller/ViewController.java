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

	@RequestMapping("/updateProfile")
	public String updateProfile() {
		return "updateProfile";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/donor")
	public String donor() {
		return "donor";
	}
	
	@RequestMapping("/eventsManagement")
	public String eventsManagement() {
		return "eventsManagement";
	}
	
	@RequestMapping("/events")
	public String events() {
		return "events";
	}

	@RequestMapping("/gallery")
	public String gallery() {
		return "gallery";
	}

	@RequestMapping("/galleryManagement")
	public String galleryManagement() {
		return "galleryManagement";
	}

	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@RequestMapping("/receiver")
	public String receiver() {
		return "receiver";
	}
	

	@RequestMapping("/report")
	public String report() {
		return "report";
	}
	
	}
