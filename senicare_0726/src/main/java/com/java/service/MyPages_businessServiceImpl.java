package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.java.dto.A_B;
import com.java.dto.A_B_Notice;
import com.java.mapper.MyPages_businessMapper;

@Primary
@Service
public class MyPages_businessServiceImpl implements MyPages_businessService {

    @Autowired
    private MyPages_businessMapper mypages_businessmapper;

    // 정보조회
    @Override
    public List<A_B> getAllA_B() {
        List<A_B> list = mypages_businessmapper.getAllA_B();
        System.out.println("A_BServiceImpl list : " + list.size());

        for (int i = 0; i < list.size(); i++) {
            System.out.println("회사이름 : " + list.get(i).getAuth_business_id());
        }
        System.out.println("회사이름 : " + list.get(0));

        return mypages_businessmapper.getAllA_B();
    }

    // 정보 수정
    @Override
    public void updateA_B(A_B a_b) {
        // List<A_B> list = mypages_businessmapper.getAllA_B();
        // System.out.println("A_BServiceImpl list : " + list.size());

        // for (int i = 0; i < list.size(); i++) {
        // System.out.println("회사이름 : " + list.get(i).getAuth_business_email());
        // }
        // System.out.println("회사이름fail : " + list.get(0));

        // 회원정보를 수정합니다.
        System.out.println("서비스impl 회원정보 수정 완료 : " + a_b.getAuth_business_email());
        mypages_businessmapper.updateA_B(a_b);
    }

    // 채용공고 등록
    @Override
    public void insert(A_B_Notice a_b_notice) {

        // a_b.setAuth_business_join_dt(now);
        // a_b.setAuth_business_user_status("활동멤버");
        mypages_businessmapper.insert(a_b_notice);
    }

    // 채용공고 조회
    @Override
    public List<A_B_Notice> getAllA_B_Notice() {
        List<A_B_Notice> list = mypages_businessmapper.getAllA_B_Notice();
        System.out.println("A_B_NoticeServiceImpl list : " + list.size());

        for (int i = 0; i < list.size(); i++) {
            System.out.println("회사이름 : " + list.get(i).getAuth_business_id());
        }
        System.out.println("회사이름 : " + list.get(0));

        return mypages_businessmapper.getAllA_B_Notice();
    }

    // 채용공고 조회
    // @Override
    // public A_B getA_BById(String auth_Business_Wn) {
    // return mypages_businessmapper.getA_BById(auth_Business_Wn);
    // }

    // // 지원자 수 증가
    // @Override
    // public A_B increaseApplicantCount(A_B a_b) {
    // return A_BMapper.increaseApplicantCount(a_b);
    // }
    // 기업 정보 추가,수정,
    // 삭제 등의
    // 서비스 메서드 구현...

    // 회원 정보 삭제
    @Override
    public void deleteA_B_Notice(A_B_Notice a_b_notice) {

        System.out.println("서비스impl 회원정보 삭제 완료 : " + a_b_notice.getAuth_Business_Key());
        mypages_businessmapper.deleteA_B_Notice(a_b_notice);
    }

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
