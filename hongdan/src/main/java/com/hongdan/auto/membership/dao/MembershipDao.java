package com.hongdan.auto.membership.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface MembershipDao {

	public int insertMembershipApply(Map<String, String> param) throws SQLException;

}
