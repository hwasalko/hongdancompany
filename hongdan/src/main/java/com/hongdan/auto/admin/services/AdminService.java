package com.hongdan.auto.admin.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface AdminService {
	
	public Map<String, String> getUserInfo(Map<String, String> param) throws SQLException ;
	
	public List<Map<String, String>> getBlogCategoryList() throws SQLException;
	
	public int updateBlogCategory(Map<String, String> param) throws SQLException;
	
	public int deleteBlogCategory(Map<String, String> param) throws SQLException;
		
}
