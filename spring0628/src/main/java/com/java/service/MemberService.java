package com.java.service;

import com.java.dto.MemberDto;

/**
 * MemberService
 */
public interface MemberService {

	// 로그인 확인
	MemberDto selectLogin(String id, String pw);

}