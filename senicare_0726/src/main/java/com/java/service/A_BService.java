package com.java.service;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import com.java.dto.A_B;

@Service
public interface A_BService {

    // 사용자 등록 메서드
    @Mapper
    public void insert(A_B a_b);

    @Mapper
    public String select(A_B a_b);

}
