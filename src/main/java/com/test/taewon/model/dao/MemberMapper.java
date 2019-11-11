package com.test.taewon.model.dao;

import com.test.taewon.model.dto.Boardmember;

public interface MemberMapper {
	
	Boardmember checkMember(Boardmember member);
	void registerMember(Boardmember member);
}
