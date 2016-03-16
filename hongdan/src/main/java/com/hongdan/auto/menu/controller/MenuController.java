package com.hongdan.auto.menu.controller;

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
public class MenuController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);
	
	
	@RequestMapping(value = "/menu")
	public String menu(HttpServletRequest request,  Model model) {		
		
		return "menu/menu";
	}	
	
	@RequestMapping(value = "/menu-masonary")
	public String menu_masonary(HttpServletRequest request,  Model model) {		
		
		return "menu/menu-masonary";
	}
	
	@RequestMapping(value = "/menu-without-parallax")
	public String menu_without_parallax(HttpServletRequest request,  Model model) {		
		
		return "menu/menu-without-parallax";
	}
	
}
