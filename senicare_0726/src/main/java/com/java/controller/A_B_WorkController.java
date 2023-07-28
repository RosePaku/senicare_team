package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.A_B_Work;
import com.java.service.A_B_WorkService;

@RestController
public class A_B_WorkController {
    private final A_B_WorkService a_b_workService;

    @Autowired
    public A_B_WorkController(A_B_WorkService a_b_workService) {
        this.a_b_workService = a_b_workService;
    }

    @RequestMapping(value = "/a_b_work", method = RequestMethod.GET)
    public List<A_B_Work> getAll() {
        return a_b_workService.getAll();
    }

    // 나머지 메소드 추가
    // ...
}
