package com.hongdan.auto.admin.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongdan.auto.admin.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService {
    
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
    private AdminDao adminDao;
 
	
    @Override
    @Transactional
    public void saveFileToBlob(Map<String, Object> hmap) throws SQLException {
    	adminDao.saveFileToBlob(hmap);        
    }
    
    
    @Override
    @Transactional
    public int insertBlog(Map<String, String> param) throws SQLException{
    	return adminDao.insertBlog(param);
    }

    
    @Override 
    public List<Map<String, String>> getBlogList() throws SQLException {
        return adminDao.getBlogList();
    }
    
    @Override 
    public Map<String, String> getBlogView(Map<String, String> param) throws SQLException {
        return adminDao.getBlogView(param);
    }
    
    
}
