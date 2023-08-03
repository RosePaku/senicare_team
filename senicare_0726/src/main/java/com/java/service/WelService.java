package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;

public interface WelService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(PageDto pageDto, String s_opt);

	// 게시글 1개 가져오기
	HashMap<String, Object> selectOne(PageDto pageDto, int bno);
	
	// 댓글 가져오기
	ArrayList<CommentDto> selectComAll(int bno);
	
	// 게시글 저장하기
	void insertOne(MadangDto mdto, List<MultipartFile> files);
	
	// 댓글 저장하기
	CommentDto insertComOne(CommentDto aCdto);
	
	// 댓글 1개 삭제하기
	void deleteOne(int cno);
	
	// 댓글 수정 저장
	CommentDto updateComOne(CommentDto aCdto);
	
	// 이미지 배열로 가져오기
	String[] loadImage(int bno);
	
	// 게시글 1개 삭제하기
	void deleteBrdOne(int bno);

	// 게시글 수정 후 저장하기
	void updateOne(MadangDto mdto, List<MultipartFile> files);

}
