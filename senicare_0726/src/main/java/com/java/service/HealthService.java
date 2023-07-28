package com.java.service;

import java.util.ArrayList;

import com.java.dto.HealthDto;

public interface HealthService {
	
	// DB에 점수 저장하기
	void insertOne(HealthDto healthDto);
	
	// 사용자 점수 가져오기
	ArrayList<HealthDto> selectAll(HealthDto healthDto);

	

}
