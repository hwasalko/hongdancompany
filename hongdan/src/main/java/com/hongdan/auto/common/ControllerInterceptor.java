package com.hongdan.auto.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hongdan.auto.main.HomeController;



//컨트롤러 호출 인터셉터
public class ControllerInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	 
	 @Override
	// Controller 가 수행되기 전에 실행됩니다. 여기서는 이후 Controller를 수행할지 여부를 boolean 으로 return
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		 logger.info("인터셉터 preHandle 진입~!!!!!!");
		  // session검사
		  HttpSession session = request.getSession(false);
		  
		
		   if (session == null) {
		   // 처리를 끝냄 - 컨트롤로 요청이 가지 않음.
		   response.sendRedirect("/");
		   return false;
		  }
		  
		  String userId = (String)session.getAttribute("userId");
		  if (userId == null) { 
		   response.sendRedirect("/");  
		   return false;
		  }
		  return true;
		 }

}
