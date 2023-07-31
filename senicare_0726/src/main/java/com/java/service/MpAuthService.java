package com.java.service;

import java.util.ArrayList;

import com.java.dto.MadangDto;

public interface MpAuthService {
	
	// 게시글 전체 가져오기
	ArrayList<MadangDto> selectAll(String auth_id);
	
	// 게시글 삭제하기
	void deleteOne(String bno);

}
