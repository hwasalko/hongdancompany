package com.hongdan.auto.sample.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface SampleService {
	
	public void saveTest() throws SQLException;
	
	public List<Map<String, String>> getUsers() throws SQLException;
	
}
