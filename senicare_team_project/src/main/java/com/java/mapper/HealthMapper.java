package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.HealthDto;

@Mapper
public interface HealthMapper {
	
	// DB에 점수 저장하기
	void insertOne(HealthDto healthDto);
	
	// 사용자 점수 가져오기
	ArrayList<HealthDto> selectAll(HealthDto healthDto);

}
