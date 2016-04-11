package com.hongdan.auto.services.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ServicesController {
	
		
	@RequestMapping(value = "/services")
	public String services(HttpServletRequest request,  Model model) {		
		
		return "services";
	}	
	
}
