package com.hongdan.auto.blog.dao;

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
public class BlogDaoImpl implements BlogDao {
    
    @Autowired
    private SqlSessionTemplate query;

    @Override
    public int insertBlog(Map<String, String> param) throws SQLException {
        return query.insert("com.hongdan.auto.blog.insertBlog",param);
    }
    
    @Override
    public void saveFileToBlob(Map<String, Object> hmap) throws SQLException {
        query.insert("com.hongdan.auto.blog.saveImage",hmap);
    }

    @Override
    public List<Map<String, String>> getBlogList(Map<String, Integer> param) throws SQLException {
        return query.selectList("com.hongdan.auto.blog.getBlogList", param);
    }
    
    @Override
    public int getBlogListTotalCount() throws SQLException {
        return query.selectOne("com.hongdan.auto.blog.getBlogListTotalCount");
    }
    
    @Override
    public Map<String, String> getBlogView(Map<String, String> param) throws SQLException {
    	return query.selectOne("com.hongdan.auto.blog.getBlogView", param);
    }
    
}

