package com.hongdan.auto.price.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PriceController {
	
	
	// 사후관리서비스 가격안내
	@RequestMapping(value = "/price/car_management_each")
	public String carManagementEach(HttpServletRequest request,  Model model) {		
		
		return "price/car_management_each";
	}	
	
	// 사후관리서비스 가격안내
	@RequestMapping(value = "/price/car_management_total")
	public String carManagementTotal(HttpServletRequest request,  Model model) {		
		
		return "price/car_management_total";
	}	
	
}
