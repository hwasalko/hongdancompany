package com.hongdan.auto.admin.services;

import java.sql.SQLException;
import java.util.Map;

public interface AdminService {
	
	public void saveFileToBlob(Map<String, Object> hmap) throws SQLException;
	
}
