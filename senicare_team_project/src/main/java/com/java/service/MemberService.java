package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {

	// 로그인 회원 정보 가져오기
	String selectOne(String id, String pw);
	
	// 로그아웃하기
	String logout();

}
