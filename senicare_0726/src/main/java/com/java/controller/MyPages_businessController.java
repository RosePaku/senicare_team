package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MyPages_businessController {

	@PostMapping("/myPages_business_folder/myPages_business_1")
	public String MyPages_businessController_1(Model model) {
		return "myPages_business_folder/myPages_business_1";

	}

	@GetMapping("/myPages_business_folder/myPages_business_1")
	public String gMyPages_businessController_1(Model model) {
		return "myPages_business_folder/myPages_business_1";

	}

	@PostMapping("/myPages_business_folder/myPages_business_2_1")
	public String MyPages_businessController_2_1(Model model) {

		return "myPages_business_folder/myPages_business_2_1";

	}

	@GetMapping("/myPages_business_folder/myPages_business_2_1")
	public String gMyPages_businessController_2_1(Model model) {
		return "myPages_business_folder/myPages_business_2_1";

	}

	@PostMapping("/myPages_business_folder/myPages_business_2_2")
	public String MyPages_businessController_2_2(Model model) {

		return "myPages_business_folder/myPages_business_2_2";

	}

	@PostMapping("/myPages_business_folder/myPages_business_3")
	public String MyPages_businessController_3(Model model) {
		return "myPages_business_folder/myPages_business_3";

	}

	@GetMapping("/myPages_business_folder/myPages_business_3")
	public String gMyPages_businessController_3(Model model) {
		return "myPages_business_folder/myPages_business_3";

	}

	@PostMapping("/myPages_business_folder/myPages_business_4")
	public String MyPages_businessController_4(Model model) {
		return "myPages_business_folder/myPages_business_4";

	}

	@GetMapping("/myPages_business_folder/myPages_business_4")
	public String gMyPages_businessController_4(Model model) {
		return "myPages_business_folder/myPages_business_4";

	}

	@PostMapping("/myPages_business_folder/myPages_business_5")
	public String MyPages_businessController_5(Model model) {
		return "myPages_business_folder/myPages_business_5";

	}

	@GetMapping("/myPages_business_folder/myPages_business_5")
	public String gMyPages_businessController_5(Model model) {
		return "myPages_business_folder/myPages_business_5";

	}

	@PostMapping("/myPages_business_folder/myPages_business_6")
	public String MyPages_businessController_6(Model model) {
		return "myPages_business_folder/myPages_business_6";

	}

	@GetMapping("/myPages_business_folder/myPages_business_6")
	public String gMyPages_businessController_6(Model model) {
		return "myPages_business_folder/myPages_business_6";

	}

}
