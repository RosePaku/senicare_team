package com.java.service;

import java.util.ArrayList;

import com.java.dto.HealthDto;

public interface HealthService {
	
	// 점수 저장
	void insertOne(HealthDto healthDto);
	
	// 점수 가져오기
	ArrayList<HealthDto> selectAll(HealthDto healthDto);
	

}
