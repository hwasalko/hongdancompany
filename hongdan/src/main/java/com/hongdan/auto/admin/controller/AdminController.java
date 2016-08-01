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
	public String login(HttpServletRequest request,  Model model, HttpSession session) throws SQLException {		
		
		String admin_id 					= 	request.getParameter("admin_id");
		String admin_password 		= 	request.getParameter("admin_password");
		boolean isLoginOk = true;
		
		logger.debug("아이디 : " + admin_id);
		
		
		Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("usr_id",admin_id);
    	param.put("password", admin_password);
		
    	Map<String, String> resultMap = new HashMap<String, String>();
    	
    	resultMap = adminService.getUserInfo(param);
		
		if( resultMap != null && resultMap.size() > 0 ){
			session.setAttribute("usr_nm", resultMap.get("USR_NM"));
			session.setAttribute("usr_id", resultMap.get("ID"));
			logger.debug("로그인 성공! ==> " + resultMap.get("ID") + ", " + resultMap.get("USR_NM"));
		}else{
			logger.debug("로그인 실패!! ");
			model.addAttribute("msg", "로그인에 실패하였습니다.");
			isLoginOk = false;
		}
		
		if(isLoginOk){
			return "redirect:/";
		}else{
			return "admin/login";
		}
		
	}	
	
	
	@RequestMapping(value = "/admin/logout" )
	public String logout(HttpServletRequest request,  Model model, HttpSession session) {		
		
		session.invalidate();// 세션 파기
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/admin/blog_category" )
	public String blog_category(HttpServletRequest request,  Model model, HttpSession session) throws SQLException {		
		
		model.addAttribute("blogCtgList", adminService.getBlogCategoryList() );
		
		return "admin/blog_category";
	}
	
	
	@RequestMapping(value = "/admin/blog_category/update", method = RequestMethod.POST )
	public String blog_category_update(HttpServletRequest request,  Model model, HttpSession session) throws SQLException {		
		String category_cd 		= 	request.getParameter("modal_category_cd");	
		String category_nm 		= 	request.getParameter("modal_category_nm");
		
		logger.debug("카테고리코드 : " +category_cd );
		logger.debug("카테고리명 : " +category_nm );
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_category_cd",category_cd);
    	param.put("blog_category_nm",category_nm);
		
    	logger.debug("카테고리코드 수정처리 : " + adminService.updateBlogCategory(param) );
    	
		model.addAttribute("blogCtgList", adminService.getBlogCategoryList());
		model.addAttribute("msg","수정이 완료되었습니다.");
		
		return "admin/blog_category";
	}
	
	@RequestMapping(value = "/admin/blog_category/delete", method = RequestMethod.POST )
	public String blog_category_delete(HttpServletRequest request,  Model model, HttpSession session) throws SQLException {		
		String category_cd 		= 	request.getParameter("modal_del_category_cd");	
		
		logger.debug("카테고리코드 : " +category_cd );
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_category_cd",category_cd);
		
    	logger.debug("카테고리코드 삭제처리 : " + adminService.deleteBlogCategory(param) );
    	
		model.addAttribute("blogCtgList", adminService.getBlogCategoryList());
		model.addAttribute("msg","삭제가 완료되었습니다.");
		
		return "admin/blog_category";
	}
	
	@RequestMapping(value = "/admin/blog_category/insert", method = RequestMethod.POST )
	public String blog_category_insert(HttpServletRequest request,  Model model, HttpSession session) throws SQLException {		
		String category_nm 		= 	request.getParameter("modal_insert_category_nm");	
		
		logger.debug("카테고리명 : " + category_nm );
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_category_nm",category_nm);
		
    	logger.debug("카테고리코드 신규등록 처리 : " + adminService.insertBlogCategory(param) );
    	
		model.addAttribute("blogCtgList", adminService.getBlogCategoryList());
		model.addAttribute("msg","카테고리 신규등록이 완료되었습니다.");
		
		return "admin/blog_category";
	}
	
	
}
