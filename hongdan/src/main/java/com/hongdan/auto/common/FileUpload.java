package com.hongdan.auto.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.hongdan.auto.sample.controller.SampleController;

public class FileUpload { 

	
		private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	 

		public static void fileUpload(MultipartFile fileData, String path, String fileName) throws IOException {
		
		  String originalFileName = fileData.getOriginalFilename();		// 원래 파일명		
		  String contentType = fileData.getContentType();					// 컨텐츠타입
		  long fileSize = fileData.getSize();										// 파일사이즈
		
		  logger.debug("====================== Upload File Info START =======================");
		  logger.debug("fileName " + fileName);
		  logger.debug("originalFileName :" + originalFileName);
		  logger.debug("contentType :" + contentType);
		  logger.debug("fileSize :" + fileSize);
		  logger.debug("====================== Upload File Info END =========================");
		
		  InputStream is = null;
		  OutputStream out = null;
		
		  try {
		
			   if (fileSize > 0) {
			
					    is = fileData.getInputStream();					
					    File realUploadDir = new File(path);
					
					    if (!realUploadDir.exists()) {             //경로에 폴더가 존재하지 않으면 생성합니다.
					    	realUploadDir.mkdirs();
					    }
					
					    out = new FileOutputStream(path +"/"+ fileName);
					
					    FileCopyUtils.copy(is, out);            //InputStream에서 온 파일을 outputStream으로 복사
			
			   }else{
				   	new IOException("잘못된 파일을 업로드 하셨습니다.");
			   }
		
		  } catch (IOException e) {
		
			  e.printStackTrace();
			  new IOException("파일 업로드에 실패하였습니다.");
		
		  }finally{
			   if(out != null){out.close();}
			   if(is != null){is.close();}
		  }
		
		 }

}