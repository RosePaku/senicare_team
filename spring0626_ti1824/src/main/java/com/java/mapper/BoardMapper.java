package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardMapper {

	//게시글 전체가져오기
	ArrayList<BoardDto> selectAll();

	//게시글 1개가져오기
	BoardDto selectOne(int bno);

}
