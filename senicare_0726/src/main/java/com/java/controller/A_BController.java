//package com.java.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.java.dto.A_B;
//import com.java.service.A_BService;
//
//@RestController
//@RequestMapping("/a_b")
//public class A_BController {
//    private final A_BService a_bService;
//
//    @Autowired
//    public A_BController(A_BService a_bService) {
//        this.a_bService = a_bService;
//    }
//
//    @GetMapping
//    public List<A_B> getAll() {
//        return a_bService.getAll();
//    }
//
//    @GetMapping("/{auth_business_id}")
//    public A_B getById(@PathVariable String auth_business_id) {
//        return a_bService.getById(auth_business_id);
//    }
//
//    @PostMapping
//    public void insert(@RequestBody A_B a_b) {
//        a_bService.insert(a_b);
//    }
//
//    @PutMapping
//    public void update(@RequestBody A_B a_b) {
//        a_bService.update(a_b);
//    }
//
//    @DeleteMapping("/{auth_business_id}")
//    public void delete(@PathVariable String auth_business_id) {
//        a_bService.delete(auth_business_id);
//    }
//}
