package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.java.dto.HealthDto;
import com.java.service.HealthService;

@Controller
public class HealthController {
	
	@Autowired
	HealthService healthService;
	
	//  자가진단-첫번째 화면
	@GetMapping("/healths_folder/health_1")
	public String health_1() {
		return "healths_folder/health_1";
	}
	
	// 자가진단 검사결과-두번째 화면
	@GetMapping("/healths_folder/health_2")
	public String health_2() {
		return "healths_folder/health_2";
	}
	
	// 점수 저장하고 그래프 그리기
	@PostMapping("/healths_folder/health_2")
	public String health_2 (HealthDto healthDto) {
		System.out.println(healthDto);
		healthService.insertOne(healthDto);
		ArrayList<HealthDto> list = healthService.selectAll(healthDto);
		
		return "healths_folder/health_2";
	}

}
