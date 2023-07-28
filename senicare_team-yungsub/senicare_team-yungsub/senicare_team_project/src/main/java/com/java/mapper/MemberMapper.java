package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {
	
	// 로그인 회원 정보 가져오기
	MemberDto selectOne(String id, String pw);

}
