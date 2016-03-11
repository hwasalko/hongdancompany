package com.hongdan.auto.services.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ServicesController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServicesController.class);
	
	
	@RequestMapping(value = "/services")
	public String services(HttpServletRequest request,  Model model) {		
		
		return "services";
	}	
	
}
