package com.hongdan.auto.membership.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongdan.auto.admin.services.AdminService;
import com.hongdan.auto.membership.services.MembershipService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MembershipController {
		
	private static final Logger logger = LoggerFactory.getLogger(MembershipController.class);
	
	@Autowired
	private MembershipService membershipService;
	
	@RequestMapping(value = "/membership" , method = RequestMethod.GET )
	public String membership(HttpServletRequest request,  Model model) throws SQLException {		
		
		model.addAttribute("membershipApplyList", membershipService.getMembershipApplyList() );
		
		return "membership";
	}	
	
	
	@RequestMapping(value = "/membership/insert" , method = RequestMethod.POST )
	public String membershipApply(HttpServletRequest request,  Model model) throws SQLException {		
		
		//파라미터 저장
		String appl_nm = request.getParameter("appl_nm");
		String appl_hp = request.getParameter("appl_hp");
		String appl_email = request.getParameter("appl_email");
		String appl_comment = request.getParameter("appl_comment");
		
		logger.debug("이름 : " + appl_nm);
		logger.debug("연락처 : " + appl_hp);
		logger.debug("이메일 : " + appl_email);
		logger.debug("코멘트 : " + appl_comment);
		logger.debug("유저IP : " + request.getRemoteHost());
		
		
		// DB 조회 시 사용할 파라미터 MAP
		Map<String, String> param = new HashMap<String, String>();   
		
		param.put("appl_nm", appl_nm);	
		param.put("appl_hp", appl_hp);
		param.put("appl_email", appl_email);
		param.put("appl_comment", appl_comment);
		param.put("reg_ip",request.getRemoteHost() );
		
		if( membershipService.insertMembershipApply(param) >= 0 ){
			model.addAttribute("msg","신청이 정상 처리되었습니다.");
		}else{
			model.addAttribute("msg","신청이 정상 처리되지 않았습니다. 담당자에게 문의하세요~!");
		}
		
		model.addAttribute("membershipApplyList", membershipService.getMembershipApplyList() );
		
		return "membership";
	}	
	
}
