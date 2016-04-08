package com.hongdan.auto.blog.controller;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongdan.auto.blog.services.BlogService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BlogController {
	
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	
	@Autowired
	private BlogService blogService;
	
	
	/**
	 * 블로그 목록 호출 시 첫번째 페이지 호출하도록 redirect
	 * @return
	 */
	@RequestMapping(value = "/blog/list", method = RequestMethod.GET )
	public String blogListGoFirst(){
	    return "redirect:/blog/list/1";
	}
	
	@RequestMapping(value = "/blog/list/{page}", method = RequestMethod.GET )
	public String blogList(HttpServletRequest request,  Model model, @PathVariable String page) throws SQLException {
		
		int totalCount = blogService.getBlogListTotalCount();	// 총건수
		int pageSize = 3; // 한 페이지에 보일 게시글 수		
		int currentPageNo = 1; // 현재 페이지 번호(디폴트)		
		
		// 번호가 파라미터로 왔을 시에는 주입
		if (page != null) currentPageNo=Integer.parseInt(page); 	
		
		
		Map<String, Integer> param = new HashMap<String, Integer>();
    	
    	param.put("totalCount",totalCount);
    	param.put("pageSize", pageSize);
    	param.put("currentPageNo", (currentPageNo-1) * pageSize);	// 0부터 시작하기때문에 -1 처리함

		
		List<Map<String, String>> resultList = blogService.getBlogList( param );
		model.addAttribute("blogList" , resultList );
		model.addAttribute("blogListTotalCount" , totalCount );
		
		return "blog/list";
	}
	
	
	
	@RequestMapping(value = "/blog/{blog_seq}")
	public String blogView(HttpServletRequest request,  Model model, @PathVariable String blog_seq) throws SQLException {
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_seq",blog_seq);
		
		Map<String, String> resultMap = blogService.getBlogView(param);
		model.addAttribute("blogMap" , resultMap );
		
		return "blog/view";
	}
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.GET )
	public String blogWrite(HttpServletRequest request,  Model model) {		
		
		return "blog/write";
	}	
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.POST )
	public void blogSave(HttpServletRequest request,  Model model) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		
		logger.info("제목 : " + title  );
		logger.info("내용 : " + contents  );
		
    	Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("title",title);
    	param.put("contents", contents);
		
		try {
			int result = blogService.insertBlog( param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
	}
	
}
