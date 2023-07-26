package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MadangDto {
	
	private int board_no;
	private String auth_id;
	private String auth_nickname;
	private String board_category;
	private String board_title;
	private String board_contents;
	private Timestamp board_created;
	private Timestamp board_modified;
	private String board_file; // 하나로 저장하기
	private String[] board_files; // 배열로 받기
	private int board_view;
	private int board_like;
	private String meet_loc;
	
	private int bno; // 게시판 카테고리별 순차 번호 추가!!
	private int ccnt; // 게시판 댓글 수 추가!!
	
}
