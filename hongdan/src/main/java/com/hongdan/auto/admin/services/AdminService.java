package com.hongdan.auto.admin.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface AdminService {
	
	public void saveFileToBlob(Map<String, Object> hmap) throws SQLException;
	
	public int insertBlog(Map<String, String> param) throws SQLException;
	
	public List<Map<String, String>> getBlogList() throws SQLException;
	
}
