package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {

	@RequestMapping("/test")
	public String senicare_main(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {

		return "/test";

	}

}
