package com.hongdan.auto.price.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PriceController {
	
	private static final Logger logger = LoggerFactory.getLogger(PriceController.class);
	
	
	// 사후관리서비스 가격안내
	@RequestMapping(value = "/price/post_management")
	public String services(HttpServletRequest request,  Model model) {		
		
		return "price/post_management";
	}	
	
}
