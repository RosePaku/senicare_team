package com.java.service;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.Auth;
import com.java.mapper.AuthMapper;

@Service
public interface AuthService {
	

    // 사용자 등록 메서드
    @Mapper
    public void insert(Auth auth);

    @Mapper
    public String select(Auth auth);
    

	

}
