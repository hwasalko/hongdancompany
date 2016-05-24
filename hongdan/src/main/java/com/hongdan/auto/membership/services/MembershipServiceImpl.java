package com.hongdan.auto.membership.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongdan.auto.admin.dao.AdminDao;
import com.hongdan.auto.membership.dao.MembershipDao;

@Service
public class MembershipServiceImpl implements MembershipService {
    
	@Autowired
    private MembershipDao membershipDao;
	
	
	@Override
	public int insertMembershipApply(Map<String, String> param) throws SQLException{
		return membershipDao.insertMembershipApply(param);
	}
	
	@Override
	public List<Map<String, String>> getMembershipApplyList() throws SQLException{
		return membershipDao.getMembershipApplyList();
	}
	
}
