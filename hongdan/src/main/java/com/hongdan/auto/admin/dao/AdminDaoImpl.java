package com.hongdan.auto.admin.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdminDaoImpl implements AdminDao {
         
	private static final Logger logger = LoggerFactory.getLogger(AdminDaoImpl.class);
	
    @Autowired
    private SqlSessionTemplate query;

    @Override
    public int insertBlog(Map<String, String> param) throws SQLException {
        return query.insert("com.hongdan.auto.admin.insertBlog",param);
    }
    
    @Override
    public void saveFileToBlob(Map<String, Object> hmap) throws SQLException {
        query.insert("com.hongdan.auto.admin.saveImage",hmap);
    }

    @Override
    public List<Map<String, String>> getBlogList() throws SQLException {
        return query.selectList("com.hongdan.auto.admin.getBlogList");
    }
    
}

