package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.A_B;

@Mapper
public interface A_BMapper {

    void insert(A_B a_b);

    // 로그인 기능 구현
    A_B select(A_B a_b);

}
