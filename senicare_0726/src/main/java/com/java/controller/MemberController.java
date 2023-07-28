package com.java.controller;

import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired MemberService memberService;
	
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}
	
	// 로그인 회원 정보 가져오기
	@PostMapping("/member/login")
	public String login(String id, String pw, Model model) {
		String result = memberService.selectOne(id, pw);
		String resultPage = "";
		
		model.addAttribute("result", result);
		
		if (result == "success") {
			resultPage = "/index";
		} else {
			resultPage = "/member/login";
		}
		return resultPage;
	}
	
	@RequestMapping("/member/logout")
	public String logout(Model model) {
		String logout = memberService.logout();
		model.addAttribute("logout", logout);
		return "/index";
	}

}
