package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.HealthDto;
import com.java.service.HealthService;

@Controller
public class HealthController {

	@Autowired
	HealthService healthService;

	// 자가진단-첫번째 화면
	@GetMapping("/healths_folder/health_1")
	public String health_1() {
		return "healths_folder/health_1";
	}

	// DB에 점수 저장하기
	@RequestMapping("/health/insertOne")
	@ResponseBody // ***** AJAX와 짝짜꿍 !!!!!
	public void insertOne(HealthDto healthDto) {
		System.out.println(healthDto);
		healthService.insertOne(healthDto);
	}

	// 사용자 점수 가져오기
	@RequestMapping("/healths_folder/health_2")
	public String selectAll(HealthDto healthDto, Model model) {
		ArrayList<HealthDto> list = healthService.selectAll(healthDto);
		model.addAttribute("list", list);

		return "healths_folder/health_2";
	}

	// 각 점수를 리스트로 가져오기
	@PostMapping("/health/testList")
	@ResponseBody
	public HashMap<String, Object> testList(HealthDto healthDto) {
		HashMap<String, Object> map = new HashMap<>();
		ArrayList<HealthDto> list = healthService.selectAll(healthDto);

		ArrayList<Integer> demenList = new ArrayList<>();
		ArrayList<Integer> arthList = new ArrayList<>();
		ArrayList<Integer> hyperList = new ArrayList<>();
		ArrayList<Integer> diabetList = new ArrayList<>();
		ArrayList<Integer> cerebroList = new ArrayList<>();

		ArrayList<String> demenDateList = new ArrayList<>();
		ArrayList<String> arthDateList = new ArrayList<>();
		ArrayList<String> hyperDateList = new ArrayList<>();
		ArrayList<String> diabetDateList = new ArrayList<>();
		ArrayList<String> cerebroDateList = new ArrayList<>();
		
		
			for (int i=0; i < list.size(); i++) {
				if (list.get(i).getDemen() != null) {
					demenList.add(Integer.parseInt(list.get(i).getDemen())); // null 아닌(=테스트 결과 있는) 결과 파싱해서 리스트에 넣기
					demenDateList.add((list.get(i).getTest_date().toString().substring(0, 10))); // null 아닌(=테스트 결과 있는) 데이터 잘라서 넣기
				}
					
				if (list.get(i).getArth() != null) {
					arthList.add(Integer.parseInt(list.get(i).getArth()));
					arthDateList.add((list.get(i).getTest_date().toString().substring(0, 10)));
				}
				if (list.get(i).getHyper() != null) {
					hyperList.add(Integer.parseInt(list.get(i).getHyper()));
					hyperDateList.add((list.get(i).getTest_date().toString().substring(0, 10)));
				}
				if (list.get(i).getDiabet() != null) {
					diabetList.add(Integer.parseInt(list.get(i).getDiabet()));
					diabetDateList.add((list.get(i).getTest_date().toString().substring(0, 10)));
				}
				if (list.get(i).getCerebro() != null) {
					cerebroList.add(Integer.parseInt(list.get(i).getCerebro()));
					cerebroDateList.add((list.get(i).getTest_date().toString().substring(0, 10)));
				}

			}

		map.put("demenList", demenList);
		map.put("arthList", arthList);
		map.put("hyperList", hyperList);
		map.put("diabetList", diabetList);
		map.put("cerebroList", cerebroList);

		map.put("demenDateList", demenDateList);
		map.put("arthDateList", arthDateList);
		map.put("hyperDateList", hyperDateList);
		map.put("diabetDateList", diabetDateList);
		map.put("cerebroDateList", cerebroDateList);

		return map;
	}
}