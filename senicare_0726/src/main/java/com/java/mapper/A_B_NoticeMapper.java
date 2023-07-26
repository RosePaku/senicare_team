package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.A_B_Notice;

@Mapper
public interface A_B_NoticeMapper {
    public List<A_B_Notice> getAll();
    public A_B_Notice getByNo(Long auth_business_work_no);
    public void insert(A_B_Notice a_b_notice);
    public void update(A_B_Notice a_b_notice);
    public void delete(Long auth_business_work_no);
}
