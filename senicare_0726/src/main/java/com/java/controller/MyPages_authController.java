package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.java.dto.MadangDto;
import com.java.service.MpAuthService;


@Controller
public class MyPages_authController {
	
	@Autowired
	MpAuthService mpAuthService;
	
	@GetMapping("/myPages_auth_folder/myPages_auth_1")
	public String MyPages_authController_1(String auth_id, Model model) {
		return "myPages_auth_folder/myPages_auth_1";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_2")
	public String MyPages_authController_2(Model model) {
		return "myPages_auth_folder/myPages_auth_2";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_2")
	public String gMyPages_authController_2(Model model) {
		return "myPages_auth_folder/myPages_auth_2";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_2_2")
	public String MyPages_authController_2_2(Model model) {
		return "myPages_auth_folder/myPages_auth_2_2";

	}
	
	// 게시글 삭제하기
	@PostMapping("/myPages_auth_folder/myPages_auth_3")
	public void MyPages_authController_3(String bno) {
		mpAuthService.deleteOne(bno);
		
	}
	
	// 게시글 전체 가져오기
	@GetMapping("/myPages_auth_folder/myPages_auth_3")
	public String gMyPages_authController_3(String auth_id, Model model) {
		ArrayList<MadangDto> list = mpAuthService.selectAll(auth_id);
		model.addAttribute("list", list);
		return "myPages_auth_folder/myPages_auth_3";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_4")
	public String MyPages_authController_4(Model model) {
		return "myPages_auth_folder/myPages_auth_4";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_4")
	public String gMyPages_authController_4(Model model) {
		return "myPages_auth_folder/myPages_auth_4";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_5")
	public String MyPages_authController_5(Model model) {
		return "myPages_auth_folder/myPages_auth_5";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_5")
	public String gMyPages_authController_5(Model model) {
		return "myPages_auth_folder/myPages_auth_5";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_6")
	public String MyPages_authController_6(Model model) {
		return "myPages_auth_folder/myPages_auth_6";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_6")
	public String gMyPages_authController_6(Model model) {
		return "myPages_auth_folder/myPages_auth_6";

	}

	@PostMapping("/myPages_auth_folder/myPages_auth_7")
	public String MyPages_authController_7(Model model) {
		return "myPages_auth_folder/myPages_auth_7";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_7")
	public String gMyPages_authController_7(Model model) {
		return "myPages_auth_folder/myPages_auth_7";

	}

}
