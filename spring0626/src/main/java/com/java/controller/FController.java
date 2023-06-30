package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

/**
 * FController
 */
public class FController {

    @Autowired
    MemberService memberService;

    @Autowired
    HttpSession session;

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "logout";
    }

    @RequestMapping("/doLogin")
    public String doLogin(String id, String pw, Model model) {

        MemberDto memberDto = memberService.selectLogin(id, pw);
        if (memberDto != null) {
            model.addAttribute("1_Result", 1);
            session.setAttribute("sessionId", memberDto.getId());
            session.setAttribute("sessionName", memberDto.getName());

        } else {
            model.addAttribute("1_Result", 0);
        }
        return "loginCheck";

    }

}