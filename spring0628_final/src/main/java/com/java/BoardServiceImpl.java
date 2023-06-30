package com.java;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.mapper.BoardMapper;

/**
 * BoardService
 */
@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardMapper boardMapper;

    @Override // 게시글 전체 가져오기
    ArrayList<BoardDto> selectBoardAll() {
        ArrayList<BoardDto> list = boardMapper.selectBoardAll();
        return list;
    }

}
