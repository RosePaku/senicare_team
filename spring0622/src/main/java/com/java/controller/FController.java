//1) 포트 번호 확인 : 어플리케이션 프로퍼티에 있음
//2) 컨트롤러 확인 : 매핑하는 주소 확인
//3) 주소창 입력 : 컨트롤러에서 매핑하는거 주소창에 입력하면 됨 (포트번호+매핑주소)

package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BService;
import com.java.service.BServiceImpl;
import com.java.service.BServiceImpl2;

@Controller
public class FController {

	@Autowired
	BService bService;
	
	@GetMapping("/index")
	public String index() {
		System.out.println("s(15) : "+bService.add());
		return "index";
	}
	
	
	
	
	
	
	
	
}