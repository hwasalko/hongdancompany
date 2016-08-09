package com.hongdan.auto.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;


// 파일다운로드를 위한 클래스
// fileDownloadView 라는 이름으로 view를 호출한다.
@Component(value="fileDownloadView")
public class FileDownloadView extends AbstractView {	

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		File file = (File) model.get("fileDownload");
		
		String userAgent = request.getHeader("User-Agent");
		String rename = (String) request.getAttribute("fileName");		// 다운로드용 파일명
		String fileName = rename == null ? file.getName() : rename;
		
		
		// response 셋팅
		response.setContentType("application/download; utf-8");
		response.setContentLength((int) file.length());
		
		
		// 한글파일명의 경우 깨짐 방지 처리를 위해 브라우저 별 조치
		if (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1) { //IE 브라우저
			  
			fileName = URLEncoder.encode(fileName,"utf-8");
			
			response.setHeader("Content-Disposition", "attachment; filename=" + fileName.replaceAll("\\+", "\\ ") + ";");
			  
		 }else {	//다른 브라우저 
		
			try { 
				  
				byte[] fileNameBytes = fileName.getBytes("UTF-8");			
				String dispositionFileName = "";			
				for (byte b: fileNameBytes) dispositionFileName += (char)(b & 0xff);			
				String disposition = "attachment; filename=\"" + dispositionFileName + "\"";			
				
				response.setHeader("Content-disposition", disposition);
				    
			  }catch(UnsupportedEncodingException ence) {
				  ence.printStackTrace();
			  }
		
		 }
		
		 response.setHeader("Content-Transfer-Encoding", "binary");	
		 OutputStream out = response.getOutputStream();	
		 FileInputStream fis = null;
		
		 try {
			  fis = new FileInputStream(file);
			  FileCopyUtils.copy(fis, out);
		 } catch (Exception e) {
			 e.printStackTrace();
		 } finally {
			  if (fis != null) {
			     try {
			    	 	fis.close();
				   } catch (Exception e) {
					    e.printStackTrace();  
				   }
			  }
		 }
		
		 out.flush();
		
		}

}





