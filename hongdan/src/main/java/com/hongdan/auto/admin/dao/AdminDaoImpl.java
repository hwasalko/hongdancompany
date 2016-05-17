package com.hongdan.auto.admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdminDaoImpl implements AdminDao {
    
    @Autowired
    private SqlSessionTemplate query;

    @Override
    public Map<String, String> getUserInfo(Map<String, String> param) throws SQLException {
    	return query.selectOne("com.hongdan.auto.admin.getUserInfo", param);
    }
    
    @Override
    public List<Map<String, String>> getBlogCategoryList() throws SQLException {
    	return query.selectList("com.hongdan.auto.admin.getBlogCategoryList");
    }
    
    @Override
    public int updateBlogCategory(Map<String, String> param) throws SQLException{
    	return query.update("com.hongdan.auto.admin.updateBlogCategory",param);
    }
    
    @Override
    public int deleteBlogCategory(Map<String, String> param) throws SQLException{
    	return query.delete("com.hongdan.auto.admin.deleteBlogCategory",param);
    }
    
    @Override
    public int insertBlogCategory(Map<String, String> param) throws SQLException{
    	return query.insert("com.hongdan.auto.admin.insertBlogCategory",param);
    }
           
}

