package com.hongdan.auto.sample.dao;

import java.sql.SQLException;

public interface SampleDao {
	public String test() throws SQLException;
	
	public void insertTest(String value) throws SQLException;
}
