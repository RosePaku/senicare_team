package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MadangDto;

@Mapper
public interface MpAuthMapper {
	
	// 게시글 전체 가져오기
	ArrayList<MadangDto> selectAll(String auth_id);
	
	// 게시글 삭제하기
	void deleteOne(String bno);

}
