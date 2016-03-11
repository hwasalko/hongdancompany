package com.hongdan.auto.sample.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongdan.auto.sample.dao.SampleDao;

@Service
public class SampleServiceImpl implements SampleService {
    
	private static final Logger logger = LoggerFactory.getLogger(SampleServiceImpl.class);
	
	@Autowired
    private SampleDao sampleDao;
 
	
    @Override
    @Transactional
    public void saveTest() throws SQLException {
        //String tmp = "글 등록테스트!";
        String tmp2 = "write test";
        
    	//logger.info("[테스트] tmp : " + tmp );
    	logger.info("[테스트] tmp2 : " + tmp2 );
    	
    	//sampleDao.insertTest(tmp);
    	sampleDao.insertTest(tmp2);
        sampleDao.insertTest(null);        
    }
    
    
    @Override 
    public List<Map<String, String>> getUsers() throws SQLException {
        return sampleDao.getUsers();
    }
    

    
    
}
