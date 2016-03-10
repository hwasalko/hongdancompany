package com.hongdan.auto.sample.dao;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hongdan.auto.sample.service.SampleServiceImpl;

@Repository
public class SampleDaoImpl implements SampleDao {
         
	private static final Logger logger = LoggerFactory.getLogger(SampleDaoImpl.class);
	
    @Autowired
    private SqlSessionTemplate query;
    
    @Override
    public String test() throws SQLException {
        return query.selectOne("com.hongdan.auto.sample.getUserId");
    }
    
    @Override
    public void insertTest(String value) throws SQLException {
    	logger.info("[DAO] 파라미터 : " + value );
        query.insert("com.hongdan.auto.sample.insertTest",value);
    }

    
}

