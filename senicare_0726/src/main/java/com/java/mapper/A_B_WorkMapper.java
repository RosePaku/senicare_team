package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.A_B_Work;

@Mapper
public interface A_B_WorkMapper {
    public List<A_B_Work> getAll();
    public A_B_Work getByNo(Long auth_business_work_no);
    public void insert(A_B_Work a_b_work);
    public void update(A_B_Work a_b_work);
    public void delete(Long auth_business_work_no);
}
