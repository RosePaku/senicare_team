package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.HosDto;
import com.java.dto.PageDto;

@Mapper
public interface HosMapper {
	
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
	
	// 페이징(미완성)
	static int selectListCount(PageDto pageDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 검색 데이터 가져오기
	ArrayList<HosDto> searchData(HosDto hosDto);
	
}
