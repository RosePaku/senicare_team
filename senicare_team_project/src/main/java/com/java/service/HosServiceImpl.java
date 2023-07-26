package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.HosDto;
import com.java.dto.PageDto;
import com.java.mapper.HosMapper;

@Service
public class HosServiceImpl implements HosService {

	@Autowired
	HosMapper hosMapper;
	
	// 전체 데이터 가져오기
	@Override
	public ArrayList<HosDto> selectAll(PageDto pageDto) {
		// 페이지 메소드
		pageDto = pageMethod(pageDto);
		// 전체 데이터
		ArrayList<HosDto> list = hosMapper.selectAll(pageDto); 
		
		
		return list;
	}
	
	// 페이지 메소드
	public PageDto pageMethod(PageDto pageDto) {
		// 전체게시글 수 저장
		pageDto.setListCount(HosMapper.selectListCount(pageDto));
		// 최대 넘버링페이지
		pageDto.setMaxPage((int) Math.ceil((double) pageDto.getListCount() / 10));
		// 시작 넘버링페이지
		pageDto.setStartPage((int) ((pageDto.getPage() - 1) / 10) * 10 + 1);
		// 끝 넘버링페이지
		pageDto.setEndPage(pageDto.getStartPage() + 10 - 1);
		// 시작번호
		pageDto.setStartRow((pageDto.getPage() - 1) * 10 + 1);
		// 끝나는번호
		pageDto.setEndRow(pageDto.getStartRow() + 10 - 1);

		// ***검색 옵션과 검색어도 pageDto에 추가함!!!

		return pageDto;
	}
	
	
	// 병원 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectHos() {
		ArrayList<HosDto> list = hosMapper.selectHos();
		return list;
	}
	
	// 약국 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectPharm() {
		ArrayList<HosDto> list = hosMapper.selectPharm();
		return list;
	}
	
	// 요양병원 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectNurs() {
		ArrayList<HosDto> list = hosMapper.selectNurs();
		return list;
	}
	
	// 데이터 1개 가져오기
	@Override
	public ArrayList<HosDto> selectOne(int hno) {
		ArrayList<HosDto> list = hosMapper.selectOne(hno); 
		return list;
	}
	
	// 검색 데이터 가져오기
	@Override
	public ArrayList<HosDto> searchData(HosDto hosDto) {
		ArrayList<HosDto> list = hosMapper.searchData(hosDto);
		return list;
	}

}
