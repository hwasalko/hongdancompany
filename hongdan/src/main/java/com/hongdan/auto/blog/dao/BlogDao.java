package com.hongdan.auto.blog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.hongdan.auto.common.vo.FileInfoVO;

public interface BlogDao {
	
	public int insertBlog(Map<String, Object> param) throws SQLException;
	
	public void saveFileToBlob(Map<String, Object> hmap) throws SQLException;
	
	public List<Map<String, String>> getBlogList(Map<String, Object> param) throws SQLException;
	
	public int getBlogListTotalCount(Map<String, Object> param) throws SQLException;
	
	public Map<String, String> getBlogView(Map<String, String> param) throws SQLException;
	
	public int deleteBlog(Map<String, String> param) throws SQLException;
	
	public int updateBlog(Map<String, String> param) throws SQLException;

	public List<Map<String, String>> getBlogTagsAll() throws SQLException;
	
	public List<Map<String, String>> getBlogCategoryList() throws SQLException;
	
	public int insertBlogAttachFileInfo(Map<String, Object> param) throws SQLException;
	
	public int updateBlogViewCount(Map<String, String> param) throws SQLException;
	
	public Map<String, String> getBlogAttachFileInfo(Map<String, Object> param) throws SQLException;
	
	public int deleteBlogAttachFileInfo(Map<String, Object> param) throws SQLException;
	
	public List<Map<String, String>> getBlogAttachFileInfoList(Map<String, Object> param) throws SQLException;
	
	public int updateBlogAttachFileSeq(Map<String, Object> param) throws SQLException;
	
}
