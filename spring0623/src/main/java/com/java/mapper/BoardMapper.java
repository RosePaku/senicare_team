package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper // mybatis가 있어야 함
public interface BoardMapper {

    // 회원 전체가져오기
    ArrayList<MemberDto> memberSelectAll();

    // 회원 1명가져오기
    MemberDto memberSelectOne(String id);

}
