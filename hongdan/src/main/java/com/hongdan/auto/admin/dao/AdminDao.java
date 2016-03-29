package com.hongdan.auto.admin.dao;

import java.sql.SQLException;
import java.util.Map;

public interface AdminDao {
	
	public int insertBlog(Map<String, String> param) throws SQLException;
	
	public void saveFileToBlob(Map<String, Object> hmap) throws SQLException;
	
}
