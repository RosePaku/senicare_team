package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
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
	
	@RequestMapping("/doLogin")  //로그인 확인
	public String doLogin(String id,String pw,Model model) {
		
		MemberDto memberDto = memberService.selectLogin(id,pw);  //id,pw -> 회원검색
		if(memberDto!=null) {  // 데이터가 있으면
			model.addAttribute("l_Result",1); //성공 : 1
			session.setAttribute("sessionId", memberDto.getId()); //섹션추가
			session.setAttribute("sessionName", memberDto.getName());
		}else {
			model.addAttribute("l_Result",0);
		}
		return "loginCheck";
	}
	
}
