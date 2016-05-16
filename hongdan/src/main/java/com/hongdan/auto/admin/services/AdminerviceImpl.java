package com.hongdan.auto.admin.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongdan.auto.admin.dao.AdminDao;

@Service
public class AdminerviceImpl implements AdminService {
    
	@Autowired
    private AdminDao adminDao;
	
	
	@Override 
    public Map<String, String> getUserInfo(Map<String, String> param) throws SQLException {
    	return ( Map<String, String> ) adminDao.getUserInfo(param);
    }
	
	
	@Override
	public List<Map<String, String>> getBlogCategoryList() throws SQLException{
		return adminDao.getBlogCategoryList();
	}
	
	@Override
	public int updateBlogCategory(Map<String, String> param) throws SQLException{
		return adminDao.updateBlogCategory(param);
	}
	
	@Override
	public int deleteBlogCategory(Map<String, String> param) throws SQLException{
		return adminDao.deleteBlogCategory(param);
	}
	
}
