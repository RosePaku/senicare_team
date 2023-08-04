package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.Auth;
import com.java.dto.MadangDto;

@Mapper
public interface MpAuthMapper {
	
	// 게시글 전체 가져오기
	ArrayList<MadangDto> selectAll(String auth_id);
	
	// 게시글 삭제하기
	void deleteOne(String bno);
	
	// 회원정보 가져오기
	Auth selectOne(String auth_id);
	
	// 회원정보 수정하기
	void updateOne(Auth auth);
	
	// 회원 탈퇴하기
	void deleteUser(Auth auth);

}
