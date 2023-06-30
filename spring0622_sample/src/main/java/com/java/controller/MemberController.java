package com.java.controller;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.MemberDto;

@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping("/member1")  //   /member/member1
	public String member1() {
		return "member/member1";
	}
	
	@RequestMapping("/mForm")  //  
	public String mForm() {
		return "member/mForm";
	}
	@RequestMapping("/doMForm")  //  
	public String doMForm(MemberDto mdto,String[] hobbys,Model model ) {
		
		String hobby="";
		for(int i=0;i<hobbys.length;i++) {
			if(i==0) hobby += hobbys[i];
			else hobby +=","+hobbys[i];  //game,golf,run
		}
		System.out.println("hobby : "+hobby);
		mdto.setHobby(hobby); //mdto객체 저장
		model.addAttribute("mdto",mdto);
		
		return "member/doMForm";
	}
	
	@RequestMapping("/updateMForm") //수정하기
	public String updateMForm(MemberDto mdto,Model model) {
		model.addAttribute("mdto",mdto);
		
		return "member/updateMForm";
	}
	
	
	
	@RequestMapping("/login")  //  
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/doLogin")  //  
	public String doLogin(@RequestParam(required = false,defaultValue = "aaa") String id,String pw,
			Model model) {
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		return "member/doLogin";
	}
	
	
	@RequestMapping("/memberForm")
	public String memberForm() {
		return "member/memberForm";
	}
	
	@RequestMapping("/doMemberForm")
	public String doMemberForm(MemberDto mdto,Model model,
			HttpServletRequest request) {
		
		model.addAttribute("mdto", mdto);
		
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
//		String name = request.getParameter("name");
//		String gender = request.getParameter("gender");
		
//		model.addAttribute("id",id);
//		model.addAttribute("pw",pw);
//		model.addAttribute("name",name);
//		model.addAttribute("gender",gender);
		
		return "member/doMemberForm";
	}
	
	
	
	
}
