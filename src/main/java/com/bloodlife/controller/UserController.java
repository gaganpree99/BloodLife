package com.bloodlife.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bloodlife.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping("/getAllUsers")
	@ResponseBody
	public Map<String,Object> getAllUsers() {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			response.put("data",userService.findAll());
			response.put("status", 200);
		}catch(Exception ex) {
			ex.printStackTrace();
			response.put("error", ex.getLocalizedMessage());
			response.put("status", 500);
		}
		return response;
	}
	
	@RequestMapping(value = "/getUserByFirstName" , method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getUserByFirstName(@RequestParam(name = "firstName") String firstName) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			response.put("data",userService.findByFirstName(firstName));
			response.put("status", 200);
		}catch(Exception ex) {
			ex.printStackTrace();
			response.put("error", ex.getLocalizedMessage());
			response.put("status", 500);
		}
		
		return response;
	}
	
	@RequestMapping(value = "/user/{id}" , method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getUserById(@PathVariable(name = "id") long userId) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			// service --> userId
			//response.put("data",userService.findByFirstName(firstName));
			response.put("status", 200);
		}catch(Exception ex) {
			ex.printStackTrace();
			response.put("error", ex.getLocalizedMessage());
			response.put("status", 500);
		}
		return response;
	}
}
