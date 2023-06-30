package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public MemberDto selectLogin(String id,String pw) {
		
		
		//mapper호출
		MemberDto memberDto = memberMapper.selectLogin(id,pw);
		
		return memberDto;
	}

}
