package com.java.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;

@Mapper
public interface WelMapper {
	
	// 일반회원 게시글 전체
	ArrayList<MadangDto> selectAll(PageDto pageDto);
	// 게시글 전체 개수
	int selectListCount(PageDto pageDto);
	
	// 게시글 1개 가져오기
	MadangDto selectOne(int bno);
	// 이전글 가져오기
	MadangDto selectPrevOne(@Param("pdto")PageDto pageDto, int bno);
	// 다음글 가져오기
	MadangDto selectNextOne(@Param("pdto")PageDto pageDto, int bno);
	// 조회수 1증가
	void updateBView(int bno);
	
	// 댓글 가져오기
	ArrayList<CommentDto> selectComAll(int bno);
	
	// 게시글 저장하기
	void insertOne(MadangDto mdto);
	
	// 댓글 저장하기
	void insertComOne(CommentDto aCdto);
	// 댓글 1개 가져오기
	CommentDto selectComOne(CommentDto aCdto);
	
	// 댓글 1개 삭제하기
	void deleteOne(int cno);
	
	// 댓글 수정 저장
	void updateComOne(CommentDto aCdto);
	
	// 이미지 배열로 가져오기
	String loadImage(int bno);
	
	// 게시글 1개 삭제하기
	void deleteBrdOne(int bno);
	
	// 게시글 수정 후 저장하기
	void updateOne(MadangDto mdto);
	
	

}
