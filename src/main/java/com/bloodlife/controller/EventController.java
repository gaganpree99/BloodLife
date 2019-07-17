package com.bloodlife.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.bloodlife.models.Events;
import com.bloodlife.service.EventService;

@Controller
public class EventController {

	@Autowired
	EventService eventService;
	
	
	@RequestMapping(value = "/getAllEvents", method= RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getAllEvents() {
        Map<String,Object> response = new HashMap<>();
        try{
        	List<Events> events = eventService.findAll();
            response.put("status",200);
            response.put("data",events);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            response.put("error",ex.getLocalizedMessage());
            return response;
        }
    }
	

    @RequestMapping(value = "/deleteEvent/{eventId}", method= RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> deleteEvent(@PathVariable(value = "eventId") long eventId) {
        Map<String,Object> response = new HashMap<>();
        try{

        	eventService.deleteByEventId(eventId);
             response.put("status",200);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            response.put("error",ex.getLocalizedMessage());
            return response;
        }
    }

	
	
	@PostMapping("/saveEvent")
	@ResponseBody
	public Map<String,Object> saveEvent(@RequestBody Events event) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			response.put("data",eventService.Save(event));
			response.put("status", 200);
		}catch(Exception ex) {
			ex.printStackTrace();
			response.put("error", ex.getLocalizedMessage());
			response.put("status", 500);
		}
		return response;
	}
	
	
	


	
}
