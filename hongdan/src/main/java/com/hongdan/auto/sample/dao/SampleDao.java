package com.hongdan.auto.sample.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface SampleDao {
	public String test() throws SQLException;
	
	public void insertTest(String value) throws SQLException;
	
	public void saveImage(Map<String, Object> hmap) throws SQLException;
	
	public Map<String, Object> getByteImage() throws SQLException;
	
	public List<Map<String, String>> getUsers() throws SQLException;
	
}
