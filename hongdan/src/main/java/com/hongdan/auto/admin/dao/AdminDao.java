package com.hongdan.auto.admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface AdminDao {
	
	public Map<String, String> getUserInfo(Map<String, String> param) throws SQLException ;
	

}
