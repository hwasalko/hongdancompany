package com.hongdan.auto.sample.dao;

import java.sql.SQLException;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


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

    @Override
    public void saveImage(Map<String, Object> hmap) throws SQLException {
        query.insert("com.hongdan.auto.sample.saveImage",hmap);
    }
    
    @Override
    public Map<String, Object> getByteImage() throws SQLException {
        return query.selectOne("com.hongdan.auto.sample.getByteImage");
    }


    
}

