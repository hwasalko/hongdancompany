package com.hongdan.auto.blog.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongdan.auto.blog.dao.BlogDao;

@Service
public class BlogServiceImpl implements BlogService {
    
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
    
}
