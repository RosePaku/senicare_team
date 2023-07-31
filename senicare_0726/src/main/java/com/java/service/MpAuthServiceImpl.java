package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MadangDto;
import com.java.mapper.MpAuthMapper;

@Service
public class MpAuthServiceImpl implements MpAuthService {
	
	@Autowired
	MpAuthMapper mpAuthMapper;
	
	// 게시글 전체 가져오기
	@Override
	public ArrayList<MadangDto> selectAll(String auth_id) {
		ArrayList<MadangDto> list = mpAuthMapper.selectAll(auth_id);
		System.out.println(list);
		return list;
	}
	
	// 게시글 삭제하기
	@Override
	public void deleteOne(String bno) {
		mpAuthMapper.deleteOne(bno);
		
	}

}
