package com.hongdan.auto.admin.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongdan.auto.admin.dao.AdminDao;
import com.hongdan.auto.admin.services.AdminService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	@Autowired
	private AdminService adminService;
	
	
	
	
	@RequestMapping(value = "/admin/blog/list", method = RequestMethod.GET )
	public String blogList(HttpServletRequest request,  Model model) throws SQLException {		
		List<Map<String, String>> resultList = adminService.getBlogList();
		model.addAttribute("blogList" , resultList );
		
		return "admin/blog/list";
	}
	
	
	@RequestMapping(value = "/admin/blog/write", method = RequestMethod.GET )
	public String blogWrite(HttpServletRequest request,  Model model) {		
		
		return "admin/blog/write";
	}	
	
	
	@RequestMapping(value = "/admin/blog/write", method = RequestMethod.POST )
	public void blogSave(HttpServletRequest request,  Model model) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		
		logger.info("제목 : " + title  );
		logger.info("내용 : " + contents  );
		
    	Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("title",title);
    	param.put("contents", contents);
		
		try {
			int result = adminService.insertBlog( param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
	}
	
}
