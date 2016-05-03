package com.hongdan.auto.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.POST )
	public String login(HttpServletRequest request,  Model model, HttpSession session) {		
		
		String admin_id 					= 	request.getParameter("admin_id");
		String admin_password 		= 	request.getParameter("admin_password");
		
		logger.debug("아이디 : " + admin_id);
		logger.debug("패스워드 : " + admin_password);
		logger.debug("이전 URL" + request.getRequestURI() );
		
		if( admin_id.equals("hongdan") && admin_password.equals("1111")  ){
			session.setAttribute("usr_id", admin_id);
		}
		
		return "redirect:/";
	}	
	
	
	
}
