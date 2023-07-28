package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.HealthDto;
import com.java.mapper.HealthMapper;

@Service
public class HealthServiceImpl implements HealthService {
	
	@Autowired
	HealthMapper healthMapper;

	// 점수 저장
	@Override
	public void insertOne(HealthDto healthDto) {
		healthMapper.insertOne(healthDto);
	}

	// 점수 가져오기
	@Override
	public ArrayList<HealthDto> selectAll(HealthDto healthDto) {
		ArrayList<HealthDto> list = healthMapper.selectAll(healthDto);
		
		return list;
	}
	

}
