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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hongdan.auto.blog.services.BlogService;
import com.hongdan.auto.common.PagingUtil;

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
	public String blogList(
											@ModelAttribute("pagingDTO") PagingUtil pagingUtil, 
											HttpServletRequest request,  
											Model model, 
											@PathVariable String page
									) throws SQLException {
		
		// 페이징 요소 셋팅
		pagingUtil.setPageSize(5); 																		// 한 페이지에 보일 게시글 수
		pagingUtil.setPageNo(1); 																		// 현재 페이지 번호(Default)
		if(page != null){ pagingUtil.setPageNo(Integer.parseInt(page)); }				// 현재 페이지 번호(Parameter)
		pagingUtil.setBlockSize(10);																		// 페이징 블럭사이즈
		pagingUtil.setTotalCount( blogService.getBlogListTotalCount() ); 				// 게시물 총 개수(makePaging()이 실행된다)
		
		
		// 파라미터( DB 조회용 파라미터 생성 )
		Map<String, Integer> param = new HashMap<String, Integer>();    	
    	param.put("totalCount",pagingUtil.getTotalCount() );	// 전체건수
    	param.put("pageSize", pagingUtil.getPageSize() );	// 페이지사이즈
    	param.put("currentPageNo", pagingUtil.getPageNo4MySql() );	// mysql 쿼리용 현재페이지 번호
    	
    		
    	// 결과셋팅
    	model.addAttribute("paging", pagingUtil);
    	model.addAttribute("blogList" , blogService.getBlogList( param ) );
		
		return "blog/list";
	}
	
	
	
	@RequestMapping(value = "/blog/{blog_seq}")
	public String blogView(HttpServletRequest request,  Model model, @PathVariable String blog_seq) throws SQLException {
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_seq",blog_seq);
		
		Map<String, String> resultMap = blogService.getBlogView(param);
		model.addAttribute("blogMap" , resultMap );
		model.addAttribute("blog_seq" , blog_seq );
		
		return "blog/view";
	}
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.GET )
	public String blogWrite(HttpServletRequest request,  Model model) {		
		
		return "blog/write";
	}	
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.POST )
	public String blogSave(HttpServletRequest request,  Model model) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		String tags 		= request.getParameter("blog_tag");
		
		logger.info("제목 : " + title  );
		logger.info("태그 : " + tags  );
		logger.info("내용 : " + contents  );
		
    	Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("title",title);
    	param.put("tags", tags);
    	param.put("contents", contents);
    	
		
		try {
			int result = blogService.insertBlog( param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
		return "redirect:/blog/list";
		
	}
	
	
	@RequestMapping(value = "/blog/delete/{blog_seq}")
	public String blogDelete(HttpServletRequest request,  Model model, @PathVariable String blog_seq) {		
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_seq",blog_seq);
		
		try {
			int result = blogService.deleteBlog(param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
		return "redirect:/blog/list";
		
	}
	
	
	@RequestMapping(value = "/blog/edit/{blog_seq}", method = RequestMethod.GET)
	public String blogEdit(HttpServletRequest request,  Model model, @PathVariable String blog_seq) throws SQLException {
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_seq",blog_seq);
		
		Map<String, String> resultMap = blogService.getBlogView(param);
		model.addAttribute("blogMap" , resultMap );
		model.addAttribute("blog_seq" , blog_seq );
		
		return "blog/write";
	}
	
	@RequestMapping(value = "/blog/edit/{blog_seq}", method = RequestMethod.POST )
	public String blogEditProcess(HttpServletRequest request,  Model model, @PathVariable String blog_seq) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		String tags 		= request.getParameter("blog_tag");
		
		Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("blog_seq",blog_seq);
    	param.put("title",title);
    	param.put("contents", contents);
    	param.put("tags", tags);
    	
		
		try {
			int result = blogService.updateBlog( param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
		return "redirect:/blog/list";
		
	}
	
}
