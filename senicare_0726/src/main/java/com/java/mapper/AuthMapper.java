package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.Auth;

@Mapper
public interface AuthMapper {

    void insert(Auth auth);

    // 로그인 기능 구현
    Auth select(Auth auth);
}
