package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@RequestMapping("/")
	public String senicare_main(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "senicare_main";

	}

}
