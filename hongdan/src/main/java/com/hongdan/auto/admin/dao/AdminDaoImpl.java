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
       
}

