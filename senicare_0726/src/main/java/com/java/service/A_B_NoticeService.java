package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.A_B_Notice;
import com.java.dto.Auth;
import com.java.dto.Auth_Vol;
import com.java.mapper.A_B_NoticeMapper;
import com.java.mapper.AuthMapper;
import com.java.mapper.Auth_VolMapper;

@Service
public class A_B_NoticeService {
    private final A_B_NoticeMapper a_b_noticeMapper;

    @Autowired
    public A_B_NoticeService(A_B_NoticeMapper a_b_noticeMapper) {
        this.a_b_noticeMapper = a_b_noticeMapper;
    }

    public List<A_B_Notice> getAll() {
        return a_b_noticeMapper.getAll();
    }

    public A_B_Notice getByNo(Long auth_business_work_no) {
        return a_b_noticeMapper.getByNo(auth_business_work_no);
    }

    public void insert(A_B_Notice a_b_notice) {
        a_b_noticeMapper.insert(a_b_notice);
    }

    public void update(A_B_Notice a_b_notice) {
        a_b_noticeMapper.update(a_b_notice);
    }

    public void delete(Long auth_business_work_no) {
        a_b_noticeMapper.delete(auth_business_work_no);
    }
}
