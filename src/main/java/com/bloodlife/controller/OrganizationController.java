package com.bloodlife.controller;

import com.bloodlife.models.Organization;
import com.bloodlife.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class OrganizationController {


    @Autowired
    OrganizationService organizationService;


    @RequestMapping("/saveOrganization")
    @ResponseBody
    public Map<String,Object> saveOrganization(@RequestBody Organization organization) {
        Map<String,Object> response = new HashMap<String, Object>();
        try {
            response.put("data",organizationService.save(organization));
            response.put("status", 200);
        }catch(Exception ex) {
            ex.printStackTrace();
            response.put("error", ex.getLocalizedMessage());
            response.put("status", 500);
        }
        return response;
    }

    @RequestMapping("/getAllOrganization")
    @ResponseBody
    public Map<String,Object> getAllOrganization() {
        Map<String,Object> response = new HashMap<String, Object>();
        try {
            response.put("data",organizationService.findAll());
            response.put("status", 200);
        }catch(Exception ex) {
            ex.printStackTrace();
            response.put("error", ex.getLocalizedMessage());
            response.put("status", 500);
        }
        return response;
    }


    @RequestMapping("/deleteOrganization/{id}")
    @ResponseBody
    public Map<String,Object> deleteOrganization(@PathVariable long id) {
        Map<String,Object> response = new HashMap<String, Object>();
        try {
            organizationService.deleteById(id);
            response.put("status", 200);
        }catch(Exception ex) {
            ex.printStackTrace();
            response.put("error", ex.getLocalizedMessage());
            response.put("status", 500);
        }
        return response;
    }
}

