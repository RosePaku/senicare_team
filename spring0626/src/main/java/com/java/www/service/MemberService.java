package com.java.www.service;

import java.util.ArrayList;

import com.java.www.dto.BoardDto;

public interface BoardService {

    // 게시글 전체 가져오기

    // 게시글 1개 가져오기
    BoardDto selectOne(int bno);

    void insertOne(BoardDto bdto);

    ArrayList<BoardDto> selectAll();

    // 게시글 1개 저장하기

}