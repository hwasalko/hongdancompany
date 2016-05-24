package com.hongdan.auto.membership.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface MembershipService {
	
	public int insertMembershipApply(Map<String, String> param) throws SQLException;
	
	public List<Map<String, String>> getMembershipApplyList() throws SQLException;
		
}
