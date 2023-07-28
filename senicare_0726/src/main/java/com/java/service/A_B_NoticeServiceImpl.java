package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.java.dto.A_B_Notice;
import com.java.mapper.A_B_NoticeMapper;

@Primary
@Service
public class A_B_NoticeServiceImpl implements A_B_NoticeService {

    @Autowired
    private A_B_NoticeMapper A_B_NoticeMapper;

    @Override
    public List<A_B_Notice> getAllA_B_Notice() {
        List<A_B_Notice> list = A_B_NoticeMapper.getAllA_B_Notice();
        System.out.println("A_B_NoticeServiceImpl list : " + list.size());

        for (int i = 0; i < list.size(); i++) {
            System.out.println("회사이름 : " + list.get(i).getAuth_business_id());
        }
        System.out.println("회사이름 : " + list.get(0));

        return A_B_NoticeMapper.getAllA_B_Notice();
    }

    @Override
    public A_B_Notice getA_B_NoticeById(String auth_Business_Wn) {
        return A_B_NoticeMapper.getA_B_NoticeById(auth_Business_Wn);
    }

    // 기업 정보 추가,수정,
    // 삭제 등의
    // 서비스 메서드 구현...
}

// @Service
// public class A_B_NoticeService {
// private final A_B_NoticeMapper a_b_noticeMapper;

// @Autowired
// public A_B_NoticeService(A_B_NoticeMapper a_b_noticeMapper) {
// this.a_b_noticeMapper = a_b_noticeMapper;
// }

// public List<A_B_Notice> getAll() {
// return a_b_noticeMapper.getAll();
// }

// public A_B_Notice getByNo(Long auth_business_work_no) {
// return a_b_noticeMapper.getByNo(auth_business_work_no);
// }

// public void insert(A_B_Notice a_b_notice) {
// a_b_noticeMapper.insert(a_b_notice);
// }

// public void update(A_B_Notice a_b_notice) {
// a_b_noticeMapper.update(a_b_notice);
// }

// public void delete(Long auth_business_work_no) {
// a_b_noticeMapper.delete(auth_business_work_no);
// }
// }
