package com.hongdan.auto.blog.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hongdan.auto.blog.services.BlogService;
import com.hongdan.auto.blog.vo.PhotoVo;
import com.hongdan.auto.common.DateUtil;
import com.hongdan.auto.common.FileUtil;
import com.hongdan.auto.common.PagingUtil;
import com.hongdan.auto.common.vo.FileInfoVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BlogController {
	
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	private BlogService blogService;
	
	/* 프로퍼티 로드 */
	@Value("${BLOG_ATTACH_FILE_UPLOAD_PATH}") 
	private String BLOG_ATTACH_FILE_UPLOAD_PATH;
	
	/* 프로퍼티 로드 */
	@Value("${BLOG_ATTACH_FILE_UPLOAD_PATH_WINDOW}")
	private String BLOG_ATTACH_FILE_UPLOAD_PATH_WINDOW;
	
	
	/**
	 * 블로그 목록 호출 시 첫번째 페이지 호출하도록 redirect
	 * @return
	 */
	@RequestMapping(value = "/blog", method = RequestMethod.GET )
	public String blogGoFirst(){
	    return "redirect:/blog/list/1";
	}
	
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
		String searchCategory = request.getParameter("searchCategory");
		
		
		String searchValTagYn = "N";	// 검색어 해시Tag 여부
		if( searchVal != null && searchVal.startsWith("#")  ){
			searchValTagYn = "Y"; 
		}
		
		param.put("sarchWord", searchVal);	// 검색어
		param.put("searchWordTagYn", searchValTagYn);	// 검색어 Tag여부
		param.put("searchCategory", searchCategory);	// 카테고리 코드
		
		logger.debug("검색어 : " + searchVal );	
		logger.debug("검색어 Tag여부 : " + searchValTagYn );
		logger.debug("카테고리코드 : " + searchCategory );
		
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
    	model.addAttribute("searchCategory", searchCategory);
    	model.addAttribute("blogListTotalCount",pagingUtil.getTotalCount() );	// 전체건수
    	model.addAttribute("categoryList" , blogService.getBlogCategoryList() );	// 블로그 카테고리 리스트 
		
		return "blog/list";
	}
	
	
	
	@RequestMapping(value = "/blog/{blog_seq}")
	public String blogView(HttpServletRequest request,  Model model, @PathVariable String blog_seq) throws SQLException, IOException {
		
		Map<String, String> param = new HashMap<String, String>();
		Map<String, Object> param2 = new HashMap<String, Object>();
		
		param.put("blog_seq",blog_seq);
		param2.put("blog_seq",blog_seq);
		
		//조회수 증가
		blogService.updateBlogViewCount(param);
		
		//블로그 내용
		Map<String, String> resultMap = blogService.getBlogView(param);
		model.addAttribute("blogMap" , resultMap );
		model.addAttribute("blog_seq" , blog_seq );
		model.addAttribute("pageNo", request.getParameter("pageNo") );
		model.addAttribute("tagsList", blogService.getBlogTagsAllList());
		model.addAttribute("categoryList" , blogService.getBlogCategoryList() );	// 블로그 카테고리 리스트
		model.addAttribute("attachFileList" , blogService.getBlogAttachFileInfoList(param2) );	// 블로그 첨부파일 리스트
		
		return "blog/view";
	}
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.GET )
	public String blogWrite(HttpServletRequest request,  Model model) throws SQLException {		
		
		// 블로그 카테고리 리스트 
		model.addAttribute("categoryList" , blogService.getBlogCategoryList() );
		
		return "blog/write";
	}	
	
	
	@RequestMapping(value = "/blog/write", method = RequestMethod.POST )
	public String blogWrite(HttpServletRequest request,  Model model, HttpSession session) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		String tags 		= request.getParameter("blog_tag");
		String ctg_cd 		= request.getParameter("blog_ctg");
		String writer_id	= (String) session.getAttribute("usr_id");	// 로그인 사용자 ID
		String attach_file_seq	= request.getParameter("attachFileSeq");	// 첨부파일 FILE_SEQ 목록( ','를 구분자로 사용)
		long insertedBlogSeq = 0;		// 인서트 후 BLOG_SEQ
		
		logger.info("제목 : " + title  );
		logger.info("태그 : " + tags  );
		logger.info("카테고리 : " + ctg_cd  );
		logger.info("내용 : " + contents  );
		logger.info("작성자 : " + writer_id  );
		logger.info("첨부파일 SEQ : " + attach_file_seq  );
		
		
		// ① 블로그 글 등록
    	Map<String, Object> param = new HashMap<String, Object>();		// Main 파라미터
    	
    	param.put("title",title);
    	param.put("tags", tags);
    	param.put("ctg_cd", ctg_cd);
    	param.put("contents", contents);
    	param.put("register_id", writer_id);
		
    	try {
			insertedBlogSeq = blogService.insertBlog( param );
			logger.info("블로그 등록 처리후 BLOG_SEQ : " + insertedBlogSeq);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("[블로그 등록처리 에러]" + e.toString());
		}
		
    	
    	// ② 블로그 첨부파일 등록(Update)
    	Map<String, Object> param2 = new HashMap<String, Object>();		// 첨부파일 UPDATE 용 파라미터
		List<String> list_file_seq = new ArrayList<String>();						// 첨부파일 FILE_SEQ 목록 저장을 위한 LIST
		
		// 파일SEQ List 변수에 저장
		for(String val : attach_file_seq.split(",") ){
			list_file_seq.add(val);
		}
		
    	param2.put("file_seq", list_file_seq );
		param2.put("blog_seq", insertedBlogSeq);
		
		try {
			int result = blogService.updateBlogAttachFileSeq(param2);
			logger.info("블로그 첨부파일 등록(UPDATE) 처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("[블로그 첨부파일 등록(UPDATE) 처리 에러]" + e.toString());
		}
		
		
		return "redirect:/blog/" + insertedBlogSeq;		// 등록 후 상세보기 화면으로 이동
		
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
		model.addAttribute("categoryList" , blogService.getBlogCategoryList() );	// 블로그 카테고리 리스트
		
		return "blog/write";
	}
	
	@RequestMapping(value = "/blog/edit/{blog_seq}", method = RequestMethod.POST )
	public String blogEditProcess(HttpServletRequest request,  Model model, @PathVariable String blog_seq) {		
		
		String title 			= request.getParameter("blog_title");
		String contents 	= request.getParameter("blog_content");
		String tags 		= request.getParameter("blog_tag");
		String pageNo = request.getParameter("pageNo");
		String ctg_cd 		= request.getParameter("blog_ctg");
		String attach_file_seq	= request.getParameter("attachFileSeq");	// 첨부파일 FILE_SEQ 목록( ','를 구분자로 사용)
		
		logger.debug("pageNo : " + pageNo);
		
		
		
		// ① 블로그 수정처리
		Map<String, String> param = new HashMap<String, String>();
    	
    	param.put("blog_seq",blog_seq);
    	param.put("title",title);
    	param.put("ctg_cd",ctg_cd);
    	param.put("contents", contents);
    	param.put("tags", tags);
    	
		
		try {
			int result = blogService.updateBlog( param );
			logger.info("처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error(e.toString());
		}
		
		
		
		// ② 블로그 첨부파일 등록(Update)
    	Map<String, Object> param2 = new HashMap<String, Object>();		// 첨부파일 UPDATE 용 파라미터
		List<String> list_file_seq = new ArrayList<String>();						// 첨부파일 FILE_SEQ 목록 저장을 위한 LIST
		
		// 파일SEQ List 변수에 저장
		for(String val : attach_file_seq.split(",") ){
			list_file_seq.add(val);
		}
		
    	param2.put("file_seq", list_file_seq );
		param2.put("blog_seq", blog_seq);
		
		try {
			int result = blogService.updateBlogAttachFileSeq(param2);
			logger.info("블로그 첨부파일 등록(UPDATE) 처리결과 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
			logger.error("[블로그 첨부파일 등록(UPDATE) 처리 에러]" + e.toString());
		}
		
		
		return "redirect:/blog/" + blog_seq;
		
	}

	
	
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

	
	/**
	 * 블로그 파일업로드 컨트롤러
	 * Map방식을 이용한 JSON API
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping(value = "/blog/attachfile/upload", method = RequestMethod.POST )
	public @ResponseBody Map<String, Object> uploadBlogAttachfile( 
							@RequestParam(value = "files[]", required = false) MultipartFile[] files ,
							HttpServletRequest request 
					) throws IllegalStateException, IOException, SQLException  {
		
		// json 생성용 변수 
		Map<String, Object> fileInfoMap = new HashMap<String, Object>();
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		List<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();
		
		String uploadPath;
		long insertedFileSeq = 0;
		
		// 윈도우 서버일 경우
		if( FileUtil.isWindowServer() ){
			uploadPath = BLOG_ATTACH_FILE_UPLOAD_PATH_WINDOW;
		}else{ // 윈도우 서버가 아닐 경우 
			uploadPath = BLOG_ATTACH_FILE_UPLOAD_PATH;
		}
		
		logger.info("파일업로드 경로 : " + uploadPath);
		
		FileInfoVO fileInfoVO = null;
		
		// 첨부파일 업로드
		for (MultipartFile file : files) { 
			    logger.debug("[첨부파일정보] " + file.getOriginalFilename() + " / " + file.getSize() + " byte");
			    
			    // 파일업로드 수행
			    fileInfoVO = FileUtil.fileUpload(file, uploadPath ); 
			    
			    // 파일업로드 정보 DB에 저장
			    insertedFileSeq = blogService.insertBlogAttachFileInfo(fileInfoVO);
			    logger.info("[첨부파일DB저장] return FILE_SEQ : " + insertedFileSeq );
			    
			    // json 리턴용
			    fileInfoMap.put("name", fileInfoVO.getOriginalFileName());
			    fileInfoMap.put("size", fileInfoVO.getFileSize() );
			    fileInfoMap.put("fileSeq", insertedFileSeq);
			    fileInfoMap.put("deleteUrl", "/blog/attachfile/delete/" + insertedFileSeq);
			    fileInfoMap.put("deleteType", "DELETE");			    	// RequestMethod 방법 결정 (GET, POST, DELETE, PUT, PATCH)
			    fileInfoMap.put("fileContentsType", fileInfoVO.getFileContentsType());
			    jsonList.add(fileInfoMap);
		} 
		
		// 처리결과
		logger.debug("업로드 결과 : " + fileInfoVO.toString() );
		
		jsonObject.put("files", jsonList);
		
		
		return jsonObject;
	}	

	
	/**
	 * 블로그 첨부파일삭제 컨트롤러
	 * Map방식을 이용한 JSON API
	 * @return
	 * @throws SQLException 
	 * @throws IOException 
	 */
	@RequestMapping(value = "/blog/attachfile/delete/{file_seq}", method = RequestMethod.DELETE )
	public @ResponseBody Map<String, Object> deleteBlogAttachfile(HttpServletRequest request,  @PathVariable String file_seq) throws SQLException, IOException  {
		
		logger.info("[삭제대상 첨부파일] FILE_SEQ : " + file_seq );
		
		Map<String, Object> param = new HashMap<String, Object>();   // DB 조회 시 사용할 파라미터 MAP
		boolean deleteFileResult = false;
		
		// json 생성용 변수 
		Map<String, Object> fileInfoMap = new HashMap<String, Object>();
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();
		
		
		//첨부파일 정보 획득
		param.put("file_seq", file_seq);
		Map<String, String> resultMap = blogService.getBlogAttachFileInfo(param);
		logger.info("[삭제대상 첨부파일] FILE_FULL_PATH : " + resultMap.get("FILE_FULL_PATH"));
		
		// 첨부파일 삭제
		logger.info("[삭제대상 첨부파일] DB 삭제결과 : " + blogService.deleteBlogAttachFileInfo(param));
		deleteFileResult = FileUtil.deleteFile(resultMap.get("FILE_FULL_PATH"));
		logger.info("[삭제대상 첨부파일] FILE 삭제결과 : " +  deleteFileResult );
		
		// JSON 객체 생성
		fileInfoMap.put( resultMap.get("FILE_ORIGINAL_NM") , deleteFileResult);		    
	    jsonList.add(fileInfoMap);
	    jsonObject.put("files", jsonList);
	    
	    return jsonObject;
		
	}	
	
	
	/**
	 * 블로그 파일업로드 컨트롤러
	 * Map방식을 이용한 JSON API
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping(value = "/blog/attachfile/upload/{blog_seq}", method = RequestMethod.GET )
	public @ResponseBody Map<String, Object> selectBlogAttachfile( HttpServletRequest request,  @PathVariable String blog_seq) throws SQLException {
		
		logger.info("[첨부파일 목록 호출] BLOG_SEQ : " + blog_seq );
		
		Map<String, Object> param = new HashMap<String, Object>();   // DB 조회 시 사용할 파라미터 MAP
		List<Map<String, String>> resultList = new ArrayList<Map<String, String>>();	// DB 조회결과
		
		// json 생성용 변수
		ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		
		
		
		//첨부파일 목록 획득
		param.put("blog_seq", blog_seq);		
		resultList= blogService.getBlogAttachFileInfoList(param);
		
		// JSON 객체 생성
		for(Map resultMap : resultList){
			Map<String, Object> fileInfoMap = new HashMap<String, Object>();
			
			fileInfoMap.put("name", 		resultMap.get("FILE_ORIGINAL_NM") );		    
			fileInfoMap.put("size", 			resultMap.get("FILE_SIZE") );
			fileInfoMap.put("deleteUrl", 	"/blog/attachfile/delete/" + resultMap.get("FILE_SEQ") );
			fileInfoMap.put("deleteType", "DELETE" );
			
			jsonList.add(fileInfoMap);
		}
		
		jsonObject.put("files", jsonList);
	    
	    return jsonObject;		
	}
	
	
	@RequestMapping(value = "/blog/attachfile/download/{file_seq}", method = RequestMethod.GET )
	 public ModelAndView blogAttachFileDownload(HttpServletRequest request, @PathVariable String file_seq) throws SQLException{
		
		Map<String, Object> param = new HashMap<String, Object>();   // DB 조회 시 사용할 파라미터 MAP
		
		//첨부파일 정보 획득
		param.put("file_seq", file_seq);
		Map<String, String> mapBlogAttachFileInfo = blogService.getBlogAttachFileInfo(param);
		logger.debug("[첨부파일 정보] : " + mapBlogAttachFileInfo.toString() );
		
		 File file = new File(mapBlogAttachFileInfo.get("FILE_FULL_PATH"));						// 실제 서버에 위치한 파일경로 및 파일명
		 request.setAttribute("fileName", mapBlogAttachFileInfo.get("FILE_ORIGINAL_NM"));	// 다운로드 받을 파일명

		 return new ModelAndView("fileDownloadView","fileDownload", file);
		 
	 }


	
	
}
