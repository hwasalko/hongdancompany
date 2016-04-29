package com.hongdan.auto.blog.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.hongdan.auto.blog.services.BlogService;
import com.hongdan.auto.blog.vo.PhotoVo;
import com.hongdan.auto.common.DateUtil;
import com.hongdan.auto.common.FileUpload;
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
	
	@RequestMapping(value = "/blog/list/{page}" )
	public String blogList(
											@ModelAttribute("pagingDTO") PagingUtil pagingUtil, 
											HttpServletRequest request,  
											Model model, 
											@PathVariable String page
									) throws SQLException {
		
		Map<String, Object> param = new HashMap<String, Object>();   // DB 조회 시 사용할 파라미터 MAP
		
		
		//파라미터 저장
		String searchVal = request.getParameter("searchVal");
		
		String searchValTagYn = "N";	// 검색어 해시Tag 여부
		if( searchVal != null && searchVal.startsWith("#")  ){
			searchValTagYn = "Y"; 
		}
		
		param.put("sarchWord", searchVal);	// 검색어
		param.put("searchWordTagYn", searchValTagYn);	// 검색어 Tag여부
		logger.debug("검색어 : " + searchVal );	
		logger.debug("검색어 Tag여부 : " + searchValTagYn );
		
		// 페이징 요소 셋팅
		pagingUtil.setPageSize(5); 																		// 한 페이지에 보일 게시글 수
		pagingUtil.setPageNo(1); 																		// 현재 페이지 번호(Default)
		if(page != null){ pagingUtil.setPageNo(Integer.parseInt(page)); }				// 현재 페이지 번호(Parameter)
		pagingUtil.setBlockSize(10);																		// 페이징 블럭사이즈
		pagingUtil.setTotalCount( blogService.getBlogListTotalCount(param) ); 				// 게시물 총 개수(makePaging()이 실행된다)
		
		
		// 파라미터( DB 조회용 파라미터 생성 )
    	param.put("totalCount",pagingUtil.getTotalCount() );	// 전체건수
    	param.put("pageSize", pagingUtil.getPageSize() );	// 페이지사이즈
    	param.put("currentPageNo", pagingUtil.getPageNo4MySql() );	// mysql 쿼리용 현재페이지 번호
    	
    		
    	
    	// 결과셋팅
    	model.addAttribute("paging", pagingUtil);
    	model.addAttribute("blogList" , blogService.getBlogList( param ) );
    	model.addAttribute("tagsList", blogService.getBlogTagsAllList());
    	model.addAttribute("sarchWord", searchVal);
    	model.addAttribute("blogListTotalCount",pagingUtil.getTotalCount() );	// 전체건수
		
		return "blog/list";
	}
	
	
	
	@RequestMapping(value = "/blog/{blog_seq}")
	public String blogView(HttpServletRequest request,  Model model, @PathVariable String blog_seq) throws SQLException {
		
		Map<String, String> param = new HashMap<String, String>();
    	param.put("blog_seq",blog_seq);
		
		Map<String, String> resultMap = blogService.getBlogView(param);
		model.addAttribute("blogMap" , resultMap );
		model.addAttribute("blog_seq" , blog_seq );
		model.addAttribute("pageNo", request.getParameter("pageNo") );
		
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
		model.addAttribute("pageNo", request.getParameter("pageNo") );
		
		return "blog/write";
	}
	
	@RequestMapping(value = "/blog/edit/{blog_seq}", method = RequestMethod.POST )
	public String blogEditProcess(HttpServletRequest request,  Model model, @PathVariable String blog_seq) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		String tags 		= request.getParameter("blog_tag");
		String pageNo = request.getParameter("pageNo");
		
		logger.debug("pageNo : " + pageNo);
		
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
		
		return "redirect:/blog/list/" + pageNo;
		
	}
	
	
	/*
	@RequestMapping(value = "/blog/testFileUpload", method = RequestMethod.POST)
	 public String fileUpload(Model model, MultipartRequest multipartRequest, HttpServletRequest request) throws IOException{

		Calendar cal = Calendar.getInstance();
		
		MultipartFile imgfile = multipartRequest.getFile("Filedata");     //input file의 name
	  
		String fileName = imgfile.getOriginalFilename();													// 원본파일명
		String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());	// 확장자
		String replaceName = cal.getTimeInMillis() + fileType;  										// 저장파일명(중복방지를 위해 시간을 기준으로 파일명 부여)
		String path = request.getSession().getServletContext().getRealPath("/")+File.separator+"resources/upload"; //파일이 저장 경로 
		
		FileUpload.fileUpload(imgfile, path, replaceName);		// 파일업로드
		
		  
		//파라미터
		model.addAttribute("path", path);                         // 파일업로드 경로
		model.addAttribute("filename", replaceName);       // 저장파일명
		
		return "file_upload";

	 }
	 */

	
	
	//에디터 단일파일업로드
	@RequestMapping("/blog/imageFileUpload")
	public String photoUpload(HttpServletRequest request, PhotoVo vo){
	    
		String callback = vo.getCallback();
	    String callback_func = vo.getCallback_func();
	    String file_result = "";
	    String subDirectory = DateUtil.getCurrentDate();
	    
	    try {
	    	
	        if( vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("") ) { //파일이 존재하면
	            
		            String original_name = vo.getFiledata().getOriginalFilename();													//파일명
		            String ext = original_name.substring(original_name.lastIndexOf(".")+1);										//파일확장자
		            String defaultPath = request.getSession().getServletContext().getRealPath("/");								//파일 기본경로
		            String path = defaultPath + "resources" + File.separator + "photo_upload" + File.separator + subDirectory + File.separator ;   	//파일 기본경로 _ 상세경로           
		            
		            File file = new File(path);
		            
		            logger.debug("파일경로 path : "+path);
		            
		            if(!file.exists()) {	//디렉토리 존재하지 않을경우 디렉토리 생성
		            	boolean resultMakeDir = file.mkdirs();
		                logger.debug("디렉토리 생성 => " + resultMakeDir );
		            }
		            
		            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
		            String realname = UUID.randomUUID().toString() + "." + ext;

		            ///////////////// 서버에 파일쓰기 ///////////////// 
		            vo.getFiledata().transferTo(new File(path+realname));
		            file_result += "&bNewLine=true&sFileName="+original_name+"&sFileURL=/photo_upload/"+ subDirectory + "/"  + realname;
		            
	        } else {
	            file_result += "&errstr=error";
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    logger.debug("파일업로드 후 최종URL => " + file_result );
	    
	    return "redirect:" + callback + "?callback_func="+callback_func+file_result;
	}


	
	
	
	//에디터 다중파일업로드
	@RequestMapping("/blog/multiImageFileUpload")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
	    
		try {   
				 String subDirectory = DateUtil.getCurrentDate();																															//서브디렉토리
		         String sFileInfo = "";																																									//파일정보
		         String filename = request.getHeader("file-name");																														//파일명을 받는다 - 일반 원본파일명
		         String filename_ext = filename.substring(filename.lastIndexOf(".")+1).toLowerCase();																			//파일 확장자(확장자를소문자로 변경)
		         String dftFilePath = request.getSession().getServletContext().getRealPath("/");																					//파일 기본경로
		         String filePath = dftFilePath + "resources" + File.separator + "photo_upload" + File.separator + subDirectory + File.separator;		//파일 기본경로 _ 상세경로
		         String realFileNm = "";																																								// 실제파일명
		         
		         
		         
		         File file = new File(filePath);
		         if(!file.exists()) {
		            file.mkdirs();
		         }
		         
		         realFileNm = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
		         String rlFileNm = filePath + realFileNm;
		         
		         logger.debug("다중업로드 realFileNm => " + realFileNm );
		         
		         ///////////////// 서버에 파일쓰기 ///////////////// 
		         InputStream is = request.getInputStream();
		         OutputStream os=new FileOutputStream(rlFileNm);
		         
		         int numRead;
		         byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
		         while((numRead = is.read(b,0,b.length)) != -1){
		            os.write(b,0,numRead);
		         }
		         
		         if(is != null) {
		            is.close();
		         }
		         os.flush();
		         os.close();
		         
		         ///////////////// 서버에 파일쓰기 /////////////////
		         
		         sFileInfo += "&bNewLine=true";	// 정보 출력
		         sFileInfo += "&sFileName="+ filename;;	// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
		         sFileInfo += "&sFileURL="+"/photo_upload/" + subDirectory + "/" +realFileNm;
		         
		         logger.debug("다중업로드 sFileInfo => " + sFileInfo );
		         
		         PrintWriter print = response.getWriter();
		         print.print(sFileInfo);
		         print.flush();
		         
		         print.close();
	         
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
	}


	
	
	
}
