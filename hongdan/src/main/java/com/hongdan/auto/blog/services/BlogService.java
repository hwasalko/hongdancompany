package com.hongdan.auto.blog.services;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public interface BlogService {
	
	public void saveFileToBlob(Map<String, Object> hmap) throws SQLException;
	
	public int insertBlog(Map<String, String> param) throws SQLException;
	
	public List<Map<String, String>> getBlogList(Map<String, Object> param) throws SQLException;
	
    public int getBlogListTotalCount(Map<String, Object> param) throws SQLException;
	
	public Map<String, String> getBlogView(Map<String, String> param) throws SQLException;
	
	public int deleteBlog(Map<String, String> param) throws SQLException;
	
	public int updateBlog(Map<String, String> param) throws SQLException;

	public List<String> getBlogTagsAllList() throws SQLException;
	
	public List<Map<String, String>> getBlogCategoryList() throws SQLException;
	
	public List<String> saveBlogAttachFile(MultipartFile[] files) throws SQLException, IOException;
	
	public int updateBlogViewCount(Map<String, String> param) throws SQLException;
}
