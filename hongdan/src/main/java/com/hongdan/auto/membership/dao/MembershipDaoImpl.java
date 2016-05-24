package com.hongdan.auto.membership.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MembershipDaoImpl implements MembershipDao {
    
    @Autowired
    private SqlSessionTemplate query;

    @Override
    public int insertMembershipApply(Map<String, String> param) throws SQLException{
    	return query.insert("com.hongdan.auto.membership.insertMembershipApply",param);
    }
    
    @Override
    public List<Map<String, String>> getMembershipApplyList() throws SQLException{
    	return query.selectList("com.hongdan.auto.membership.getMembershipApplyList");
    }
           
}

