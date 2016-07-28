package com.hongdan.auto.blog.services;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.hongdan.auto.blog.dao.BlogDao;
import com.hongdan.auto.common.FileUpload;
import com.hongdan.auto.common.vo.FileInfoVO;
import com.hongdan.auto.sample.service.SampleServiceImpl;

@Service
public class BlogServiceImpl implements BlogService {
    
	private static final Logger logger = LoggerFactory.getLogger(BlogServiceImpl.class);
	
	@Autowired
    private BlogDao blogDao;
	
	
    @Override
    @Transactional
    public void saveFileToBlob(Map<String, Object> hmap) throws SQLException {
    	blogDao.saveFileToBlob(hmap);        
    }
    
    
    @Override
    @Transactional
    public int insertBlog(Map<String, String> param) throws SQLException{
    	return blogDao.insertBlog(param);
    }

    
    @Override 
    public List<Map<String, String>> getBlogList(Map<String, Object> param) throws SQLException {
    	return blogDao.getBlogList(param);
    }
    
    @Override 
    public int getBlogListTotalCount(Map<String, Object> param) throws SQLException {
        return blogDao.getBlogListTotalCount(param);
    }
    
    @Override 
    public Map<String, String> getBlogView(Map<String, String> param) throws SQLException {
        return blogDao.getBlogView(param);
    }

    @Override
    @Transactional
    public int deleteBlog(Map<String, String> param) throws SQLException{
    	return blogDao.deleteBlog(param);
    }
    
    @Override
    @Transactional
    public int updateBlog(Map<String, String> param) throws SQLException{
    	return blogDao.updateBlog(param);
    }
    
    @Override 
    public List<String> getBlogTagsAllList() throws SQLException {
    	List<Map<String, String>> tagsList = blogDao.getBlogTagsAll();
    	List<String> resultList = new ArrayList<String>();
    	
    	for(Map<String, String> map : tagsList){
    		String[] tmpStr = map.get("TAGS").toString().split(",");
    		
    		for(String tag : tmpStr){
    			if(!resultList.contains(tag)){	// 중복제거
    				resultList.add(tag);
    			}
    		}
    		
    	}
    	
    	return resultList;
    }
    
    
    @Override
    public List<Map<String, String>> getBlogCategoryList()  throws SQLException{
    	return blogDao.getBlogCategoryList();
    }
    
    @Override
    public List<String> saveBlogAttachFile(MultipartFile[] files) throws SQLException, IOException{
    	
    	String upload_root_path = "C:/blogAttachFiles";
    	FileInfoVO fileInfoVO = null;	// 파일정보 VO
    	
    	List<String> listAttachFileID = new ArrayList<String>();	// 파일정보 DB Insert 결과를 저장 할 변수(첨부파일 ID를 저장함)
    	
    	// 첨부파일 업로드
		for (MultipartFile file : files) { 
			    fileInfoVO = FileUpload.fileUpload(file, upload_root_path);
			    
			    Map<String, String> param = new HashMap<String, String>();
			    param.put("originalFileName", fileInfoVO.getOriginalFileName());
		    	param.put("saveFileName", fileInfoVO.getSaveFileName());
		    	param.put("saveFileFullPath", fileInfoVO.getSaveFileFullPath());
		    	param.put("fileSize", String.valueOf(fileInfoVO.getFileSize()) );
			    
			    blogDao.insertBlogAttachFileInfo(param);
		} 
    	
    	return listAttachFileID;
    }

    
    @Override
    @Transactional
    public int updateBlogViewCount(Map<String, String> param) throws SQLException{
    	return blogDao.updateBlogViewCount(param);
    }
    
}
