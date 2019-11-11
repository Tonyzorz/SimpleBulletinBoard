package com.test.taewon.model.service;

import com.test.taewon.model.dto.Boardmember;

public interface MemberService {
	boolean checkMember(Boardmember member);
	void registerMember(Boardmember member);
}
