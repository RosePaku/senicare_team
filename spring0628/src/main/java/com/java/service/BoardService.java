package com.java.service;

import java.util.HashMap;

import com.java.dto.BoardDto;

public interface BoardService {

    // 게시글 전체 가져오기
    HashMap<String, Object> selectAll(int page, String category, String s_word);

    // 게시글 1개가져오기
    BoardDto selectOne(int bno);

    // 게시글 1개저장
    void insertOne(BoardDto bdto);

    // 게시글 1개 삭제
    void deleteOne(int bno);

    // 게시글 1개수정
    void updateOne(BoardDto bdto);

    // 게시글 답변달기
    void insertReplyOne(BoardDto bdto);

}
