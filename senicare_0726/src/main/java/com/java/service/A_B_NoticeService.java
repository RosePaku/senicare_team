package com.java.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.java.dto.A_B_Notice;

@Service
public interface A_B_NoticeService {

    List<A_B_Notice> getAllA_B_Notice();

    // A_B_Notice getA_B_NoticeById(String auth_Business_Wn);

    // 지원자 수 증가
    A_B_Notice increaseApplicantCount(A_B_Notice a_b_Notice);

    // int increaseAuthBusinessVol(int auth_Business_Vol);

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
