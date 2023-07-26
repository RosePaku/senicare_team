package com.java.service;

import java.util.ArrayList;

import com.java.dto.HosDto;
import com.java.dto.PageDto;

public interface HosService {
	
	// 전체 데이터 가져오기
	ArrayList<HosDto> selectAll(PageDto pageDto);

	// 병원 데이터만 가져오기
	ArrayList<HosDto> selectHos();
	
	// 약국 데이터만 가져오기
	ArrayList<HosDto> selectPharm();

	// 요양병원 데이터만 가져오기
	ArrayList<HosDto> selectNurs();

	// 데이터 1개 가져오기
	ArrayList<HosDto> selectOne(int hno);
	
	// 검색 데이터 가져오기
	ArrayList<HosDto> searchData(HosDto hosDto);

}
