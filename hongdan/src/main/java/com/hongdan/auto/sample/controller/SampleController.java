package com.hongdan.auto.sample.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hongdan.auto.sample.dao.SampleDao;
import com.hongdan.auto.sample.service.SampleService;
//import com.hongdan.auto.sample.service.SampleService;
import com.hongdan.auto.sample.vo.FileVo;
import com.hongdan.auto.sample.vo.ListVo;
import com.hongdan.auto.sample.vo.ObjectVo;
import com.hongdan.auto.sample.vo.ImageFileVo;


/**
 * Handles requests for the application home page.
 */
@Controller
public class SampleController {
	
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	
	@Autowired
	private SampleDao sampleDao;;

	@Autowired
	private SampleService sampleService;

		
	
	@RequestMapping(value = "/sample/submit")
	public String submit( HttpServletRequest request, Model model ) {		
		
		model.addAttribute("text", request.getParameter("text") );
		return "sample/submit";
	}
	
	/**
	 * 파일등록화면
	 * @return
	 */
	@RequestMapping(value = "/sample/form", method = RequestMethod.GET)
	public String form( HttpServletRequest request ) {		
		
		return "sample/form";
	}
	
	     
	/**
	 * form submit 파일결과 받기
	 * @param file
	 */
	@RequestMapping("/sample/getFile")
	public void getFile(FileVo file){
		
	    logger.info("첨부파일명" + file.getFile().getOriginalFilename());
	    logger.info("첨부사이즈" + file.getFile().getSize() );
	}

	
	
	/**
	 * Map방식을 이용한 JSON API 컨트롤러
	 * @return
	 */
	@RequestMapping(value="/sample/getJsonByMap")
	public @ResponseBody Map<String , Object> getJsonByMap() {
		
	    Map<String, Object> jsonObject = new HashMap<String, Object>();
	    Map<String, Object> jsonSubObject = null;
	    ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();
	         
	    //1번째 데이터
	    jsonSubObject = new HashMap<String, Object>();
	    jsonSubObject.put("idx", 1);
	    jsonSubObject.put("title", "제목입니다");
	    jsonSubObject.put("create_date", new Date());
	    jsonList.add(jsonSubObject);
	    //2번째 데이터
	    jsonSubObject = new HashMap<String, Object>();
	    jsonSubObject.put("idx", 2);
	    jsonSubObject.put("title", "두번째제목입니다");
	    jsonSubObject.put("create_date", new Date());
	    jsonList.add(jsonSubObject);
	         
	    jsonObject.put("success", true);
	    jsonObject.put("total_count", 10);
	    jsonObject.put("result_list", jsonList);
	         
	    return jsonObject;
	    
	}
	
	/**
	 * VO방식을 이용한 JSON API 컨트롤러
	 * @return
	 */
	@RequestMapping(value="/sample/getJsonByVO")
	public @ResponseBody ObjectVo getJsonByVO() {
	    Calendar cal = Calendar.getInstance( );
	    ArrayList<ListVo> list = new ArrayList<ListVo>();
	    ListVo vo = null;
	    ObjectVo objectVO = new ObjectVo();
	    //1번째 데이터
	    vo = new ListVo();
	    vo.setIdx(1);
	    vo.setTitle("VO방식의 제목입니다");
	    vo.setCreate_date(cal.get(Calendar.YEAR)+"-"+(cal.get(Calendar.MONTH) + 1)+"-"+cal.get(Calendar.DAY_OF_MONTH));
	    list.add(vo);
	    //2번째 데이터
	    vo = new ListVo();
	    vo.setIdx(1);
	    vo.setTitle("VO방식의 제목입니다2");
	    vo.setCreate_date(cal.get(Calendar.YEAR)+"-"+(cal.get(Calendar.MONTH) + 1)+"-"+cal.get(Calendar.DAY_OF_MONTH));
	    list.add(vo);
	         
	    objectVO.setList(list);
	    objectVO.setSuccess(true);
	    objectVO.setTotal_count(10);
	    return objectVO; 
	}

	
	
	/**
	 * Pathvariable 예제
	 * @return
	 */
	@RequestMapping("/sample/page/{var}")
	public String page(@PathVariable String var){
	    String returnUrl = "";
	    if(var.equals("one")) {
	        returnUrl = "sample/page1";
	    } else if(var.equals("two")) {
	        returnUrl = "sample/page2";
	    }
	    return returnUrl;
	}
	
	
	/**
	 * GET방식 컨트롤러
	 * @param key1
	 * @param key2
	 */
	@RequestMapping("/sample/resultByGet")
	public void resultByGet(String key1, String key2){
	    logger.info("key1::"+key1);
	    logger.info("key2::"+key2);  
	}
	     
	/**
	 * Pathvariable방식 컨트롤러
	 * @param key1
	 * @param key2
	 */
	@RequestMapping("/sample/resultByPath/{key1}/{key2}")
	public void resultByPath(@PathVariable String key1, @PathVariable String key2){
		logger.info("key1::"+key1);
	    logger.info("key2::"+key2);  
	}

	
	
	/**
	 * redirect페이지로 넘기기 위한 컨트롤러
	 * @return
	 */
	@RequestMapping("/sample/redirectpage")
	public String redirectpage(){
	    return "redirect:/sample/herepage?key1=value1&key2=value2";
	}
	     
	/**
	 * redirect되는 컨트롤러
	 * @return
	 */
	@RequestMapping("/sample/herepage")
	public String herepage(){
	    return "sample/herepage";
	}

	/**
	 * redirect 신규페이지로 넘기기 위한 컨트롤러
	 * @return
	 */
	@RequestMapping("/sample/redirectnewpage")
	public String redirectnewpage(RedirectAttributes redirectAttributes){
	    Map<String, Object> map = new HashMap<String,Object>();
	    map.put("key1", "value1");
	    map.put("key2", "value2");
	    redirectAttributes.addFlashAttribute("vo", map);
	    return "redirect:/sample/herepage";
	}

	
	/**
	 * Dao 직접 호출 테스트
	 * @return
	 */
	@RequestMapping("/sample/dbtest")
	public String dbTest( Model model ){
		String result = "";
			
	    try {
	    	result = sampleDao.test();
	        logger.debug("DB TEST 결과 : " + result );    
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    model.addAttribute("dbresult", result);
	    
	    return "sample/dbTest";
	}

	
	/**
	 * 트랜젝션 테스트
	 * @return
	 */
	
	@RequestMapping("/sample/insertTest")
	public void insertTest(){
	    try {
	        sampleService.insertTest();    
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	
	
	/**
	 * 파일태그를 위한 폼태그
	 * @return
	 */
	@RequestMapping(value="/sample/formFile")
	public String formFile() {
	    return "sample/formFile";
	}

	/**
	 * 파일처리 컨트롤러
	 * @param vo
	 * @return
	 */
	@RequestMapping(value="/sample/saveImage")
	public String saveImage(ImageFileVo vo) {
	    try {
	        Map<String, Object> hmap = new HashMap<String, Object>();
	        hmap.put("img", vo.getImgFile().getBytes());
	        sampleDao.saveImage(hmap);    
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "redirect:/sample/formFile";
	}

	/**
	 * 임의의 뷰페이지
	 * @return
	 */
	@RequestMapping(value="/sample/view")
	public String view() {
	    return "sample/view";
	}
	
	/**
	 * 이미지태그의 src 컨트롤러
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping(value="/sample/getByteImage")
	public ResponseEntity<byte[]> getByteImage() throws Exception {
	    Map<String, Object> map;
	    map = sampleDao.getByteImage();
		byte[] imageContent = (byte[]) map.get("img");
		final HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_PNG);
		    
		return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	       
	}

		
	/**
	 * 멀티row DB테스트
	 * @return
	 * @throws SQLException 
	 */
	@RequestMapping(value="/sample/getUsers")
    public String getUsers(Model model) throws SQLException{
        model.addAttribute("interests", sampleService.getUsers());
        
        return "sample/getUsers";
    }



	
}
