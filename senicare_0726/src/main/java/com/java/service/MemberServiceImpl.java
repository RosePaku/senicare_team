package com.java.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired MemberMapper memberMapper;
	@Autowired HttpSession session;
	
	// 로그인 회원 정보 가져오기
	@Override
	public String selectOne(String id, String pw) {
		MemberDto mdto = memberMapper.selectOne(id, pw);
		System.out.println(mdto);
		String result = "";
		if (mdto != null) {
			session.setAttribute("sessionId", mdto.getAuth_id());
			session.setAttribute("sessionName", mdto.getAuth_name());
			session.setAttribute("sessionNickName", mdto.getAuth_nickname());
			
			result = "success";
		} else {
			result = "fail";
		}
		return result;
	}
	
	// 로그아웃하기
	@Override
	public String logout() {
		session.invalidate();
		return "logout";
	}
	

}
