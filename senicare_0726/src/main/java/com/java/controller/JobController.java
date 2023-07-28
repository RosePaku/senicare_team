package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class JobController {

	@RequestMapping("/jobs_folder/job_1")
	public String job_1Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {

		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "jobs_folder/job_1";

	}

	@RequestMapping("/jobs_folder/job_2")
	public String job_2Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "jobs_folder/job_2";

	}

	// @RequestMapping("/jobs_folder/job_1_2_1")
	// public String job_1_2_1Controller(@RequestParam(defaultValue = "none") String
	// resultCode,
	// Model model) {
	// model.addAttribute("resultCode", resultCode);
	// model.addAttribute("header", "senicare_main_header.jsp");
	// model.addAttribute("footer", "senicare_main_footer.jsp");
	// return "jobs_folder/job_1_2_1";

	// }

	// @PostMapping("/jobs_folder/job_1_2_1")
	// public String job_1_2_1pController(@RequestParam(defaultValue = "none")
	// String resultCode,
	// Model model) {
	// model.addAttribute("resultCode", resultCode);
	// model.addAttribute("header", "senicare_main_header.jsp");
	// model.addAttribute("footer", "senicare_main_footer.jsp");
	// return "jobs_folder/job_1_2_1";

	// }

	@PostMapping("/jobs_folder/job_1_2_2")
	public String job_1_2_2Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "jobs_folder/job_1_2_2";

	}

}
