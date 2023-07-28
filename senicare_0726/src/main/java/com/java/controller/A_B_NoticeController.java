package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.A_B_Notice;
import com.java.service.A_B_NoticeService;

@RestController
@RequestMapping("/a_b_notice")
public class A_B_NoticeController {
    private final A_B_NoticeService a_b_noticeService;

    @Autowired
    public A_B_NoticeController(A_B_NoticeService a_b_noticeService) {
        this.a_b_noticeService = a_b_noticeService;
    }

    @GetMapping
    public List<A_B_Notice> getAll() {
        return a_b_noticeService.getAll();
    }

    @GetMapping("/{auth_business_work_no}")
    public A_B_Notice getByNo(@PathVariable Long auth_business_work_no) {
        return a_b_noticeService.getByNo(auth_business_work_no);
    }

    @PostMapping
    public void insert(@RequestBody A_B_Notice a_b_notice) {
        a_b_noticeService.insert(a_b_notice);
    }

    @PutMapping
    public void update(@RequestBody A_B_Notice a_b_notice) {
        a_b_noticeService.update(a_b_notice);
    }

    @DeleteMapping("/{auth_business_work_no}")
    public void delete(@PathVariable Long auth_business_work_no) {
        a_b_noticeService.delete(auth_business_work_no);
    }
}
