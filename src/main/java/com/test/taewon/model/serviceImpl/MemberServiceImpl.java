package com.test.taewon.model.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.taewon.model.dao.MemberMapper;
import com.test.taewon.model.dto.Boardmember;
import com.test.taewon.model.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public boolean checkMember(Boardmember member) {
		return memberMapper.checkMember(member) != null;
	}

	@Override
	public void registerMember(Boardmember member) {
		memberMapper.registerMember(member);
	}
	
}
