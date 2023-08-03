package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PageDto {
   
	private int page=1;
	private int listCount;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	private int rowPerPage=10;
	private int numberingPerPage=10;

	// *** 검색옵션과 검색어 + 지역도 추가함!!!
	private String s_opt;
	private String s_word;
	private String[] s_loc;
	private String locString = "전체"; // 버티컬바 구분 // 기본값은 전체 검색
	private String locString2 = "전체"; // 쉼표 구분 // 기본값은 전체 검색
}