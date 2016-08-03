package com.hongdan.auto.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.hongdan.auto.common.vo.FileInfoVO;


@Service
public class FileUtil { 

	
		private static final Logger logger = LoggerFactory.getLogger(FileUtil.class);


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
		
		
		/**
		 * 파일업로드 공통 컴포넌트
		 * @param fileData		(파일)
		 * @param path			(경로)
		 * @return Map<String, String>
		 * @throws IOException
		 */
		public static FileInfoVO fileUpload(MultipartFile fileData, String base_path) throws IOException {
			  
			  // ① 파일분석
			  String originalFileName = fileData.getOriginalFilename();														// 원래 파일명		
			  String contentType = fileData.getContentType();																	// 컨텐츠타입
			  long fileSize = fileData.getSize();																						// 파일사이즈
			  String fileName = UUID.randomUUID() + getFileExt(originalFileName);							// 신규파일명(파일명중복을 피하기 위해 랜덤파일명 생성)
			  String fullPath = base_path + File.separator + DateUtil.getCurrentDate() + File.separator;	//	풀패스(파일명 제외) 
			
			  logger.info("====================== Upload File Info START =======================");
			  logger.info("originalFileName :" + originalFileName);
			  logger.info("fileName : " + fileName);
			  logger.info("FullPath " + fullPath + fileName );
			  logger.info("contentType :" + contentType);
			  logger.info("fileSize :" + fileSize + " bytes (약 " + (fileSize/1024/1024) + " MB)" );
			  logger.info("====================== Upload File Info END =========================");
			
			  
			  // ② 파일업로드
			  File dest = new File(fullPath);
			  
			  boolean isExistDir = dest.exists();
			  logger.info( "디렉토리 존재유무 검사결과 : " + isExistDir);
			  
			  if( !isExistDir ){
				  logger.info("폴더생성 : " + dest.mkdir() );
			  }else{
				  logger.info("폴더가 이미 존재합니다." );
			  }
			  
			  fileData.transferTo(new File(fullPath + fileName));		// 파일저장
			  
			  
			  // ③ 파일정보 리턴
			  return new FileInfoVO(originalFileName, fileName, fullPath + fileName, contentType, fileSize);
		 }
		
		
		/**
		 * 확장자 리턴
		 * @param fileName
		 */
		public static String getFileExt(String fileName){
			int pos = fileName.lastIndexOf(".");
			return fileName.substring(pos);
		}

		/**
		 * 윈도우 서버 여부 
		 */
		public static boolean isWindowServer(){
			// 윈도우 서버일 경우
			if( System.getProperty("os.name").toUpperCase().indexOf("WINDOW") > -1  ){
				return true;
			}else{
				return false;
			}
		}
		
		
		/**
		 * 파일삭제
		 * @param file_full_path			(경로)
		 * @return boolean
		 * @throws IOException
		 */
		public static boolean deleteFile(String file_full_path) throws IOException {
			File delFile = new File(file_full_path);			
			return delFile.delete();
		}

}