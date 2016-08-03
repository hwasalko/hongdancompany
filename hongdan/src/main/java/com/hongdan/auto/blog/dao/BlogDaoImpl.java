package com.hongdan.auto.blog.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hongdan.auto.common.vo.FileInfoVO;


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
    public List<Map<String, String>> getBlogList(Map<String, Object> param) throws SQLException {
        return query.selectList("com.hongdan.auto.blog.getBlogList", param);
    }
    
    @Override
    public int getBlogListTotalCount(Map<String, Object> param) throws SQLException {
        return query.selectOne("com.hongdan.auto.blog.getBlogListTotalCount", param);
    }
    
    @Override
    public Map<String, String> getBlogView(Map<String, String> param) throws SQLException {
    	return query.selectOne("com.hongdan.auto.blog.getBlogView", param);
    }
    
    @Override
    public int deleteBlog(Map<String, String> param) throws SQLException {
        return query.update("com.hongdan.auto.blog.deleteBlog",param);
    }
    
    @Override
    public int updateBlog(Map<String, String> param) throws SQLException {
        return query.update("com.hongdan.auto.blog.updateBlog",param);
    }
    
    @Override
    public List<Map<String, String>> getBlogTagsAll() throws SQLException {
    	return query.selectList("com.hongdan.auto.blog.getBlogTagsAll");
    }
    
    @Override
    public List<Map<String, String>> getBlogCategoryList() throws SQLException {
        return query.selectList("com.hongdan.auto.blog.getBlogCategoryList");
    }
    
    @Override
    public int insertBlogAttachFileInfo(Map<String, Object> param) throws SQLException {
        return query.insert("com.hongdan.auto.blog.insertBlogAttachFileInfo",param);
    }
    
    @Override
    public int updateBlogViewCount(Map<String, String> param) throws SQLException {
        return query.update("com.hongdan.auto.blog.updateBlogViewCount",param);
    }
    
    @Override
    public Map<String, String> getBlogAttachFileInfo(Map<String, Object> param) throws SQLException{
        return query.selectOne("com.hongdan.auto.blog.getBlogAttachFileInfo", param);
    }
    
    @Override
    public int deleteBlogAttachFileInfo(Map<String, Object> param) throws SQLException {
        return query.delete("com.hongdan.auto.blog.deleteBlogAttachFileInfo",param);
    }
    
}

