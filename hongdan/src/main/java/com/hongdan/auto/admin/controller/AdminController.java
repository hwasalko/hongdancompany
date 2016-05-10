package com.hongdan.auto.admin.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongdan.auto.admin.services.AdminService;
import com.hongdan.auto.blog.services.BlogService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.GET )
	public String loginForm(HttpServletRequest request,  Model model, HttpSession session) {		
		
		return "admin/login";
	}
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.POST )
	public String login(HttpServletRequest request,  Model model, HttpSession session) {		
		
		String admin_id 					= 	request.getParameter("admin_id");
		String admin_password 		= 	request.getParameter("admin_password");
		
		logger.debug("아이디 : " + admin_id);
		logger.debug("패스워드 : " + admin_password);
		
		
		Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("usr_id",admin_id);
    	param.put("password", admin_password);
		
    	Map<String, String> resultMap = new HashMap<String, String>();
    	
    	try {
			resultMap = adminService.getUserInfo(param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
		if( resultMap != null && resultMap.size() > 0 ){
			session.setAttribute("usr_nm", resultMap.get("USR_NM"));
			session.setAttribute("usr_id", resultMap.get("ID"));
			logger.debug("로그인 성공! ==> " + resultMap.get("ID") + ", " + resultMap.get("USR_NM"));
		}else{
			logger.debug("로그인 실패!! ");
		}
		
		return "redirect:/";
	}	
	
	
	@RequestMapping(value = "/admin/logout" )
	public String logout(HttpServletRequest request,  Model model, HttpSession session) {		
		
		session.invalidate();// 세션 파기
		
		return "redirect:/";
	}
	
	
}
