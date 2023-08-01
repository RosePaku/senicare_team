package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.A_B;
import com.java.dto.A_B_Notice;

@Mapper
public interface MyPages_businessMapper {

    // 회사 정보 가져오기
    List<A_B> getAllA_B();

    void updateA_B(A_B a_b);

    void deleteA_B_Notice(A_B_Notice a_b_notice);

    void insert(A_B_Notice a_b_notice);

    // 채용 공고 조회
    List<A_B_Notice> getAllA_B_Notice();

    // // 채용공고 조회
    // A_B_Notice getA_B_NoticeById(String auth_Business_Wn);

    // // 조회자 수 증가
    // A_B_Notice increaseApplicantCount(A_B_Notice a_b_Notice);

    // 기업 정보 추가, 수정, 삭제 등의 메서드 정의
    // ...

}

// @Mapper
// public interface A_B_NoticeMapper {
// void insertA_B_Notice(A_B_Notice a_b_notice);

// A_B_Notice selectA_B_Notice(int authBusinessWn);

// void updateA_B_Notice(A_B_Notice a_b_notice);

// void deleteA_B_Notice(int authBusinessWn);
// }
