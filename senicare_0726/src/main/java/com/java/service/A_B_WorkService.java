package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.A_B_Work;
import com.java.mapper.A_B_WorkMapper;

@Service
public class A_B_WorkService {
    private final A_B_WorkMapper a_b_workMapper;

    @Autowired
    public A_B_WorkService(A_B_WorkMapper a_b_workMapper) {
        this.a_b_workMapper = a_b_workMapper;
    }

    public List<A_B_Work> getAll() {
        return a_b_workMapper.getAll();
    }

    public A_B_Work getByNo(Long auth_business_work_no) {
        return a_b_workMapper.getByNo(auth_business_work_no);
    }

    public void insert(A_B_Work a_b_work) {
        a_b_workMapper.insert(a_b_work);
    }

    public void update(A_B_Work a_b_work) {
        a_b_workMapper.update(a_b_work);
    }

    public void delete(Long auth_business_work_no) {
        a_b_workMapper.delete(auth_business_work_no);
    }
}
