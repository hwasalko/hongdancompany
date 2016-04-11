package com.hongdan.auto.reservation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReservationController {
	
	
	@RequestMapping(value = "/reservation")
	public String about(HttpServletRequest request,  Model model) {		
		
		return "reservation";
	}	
	
}
