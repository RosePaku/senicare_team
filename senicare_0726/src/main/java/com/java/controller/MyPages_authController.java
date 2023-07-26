package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MyPages_authController {

	@PostMapping("/myPages_auth_folder/myPages_auth_1")
	public String MyPages_authController_1(Model model) {
		return "myPages_auth_folder/myPages_auth_1";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_1")
	public String gMyPages_authController_1(Model model) {
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

	@PostMapping("/myPages_auth_folder/myPages_auth_3")
	public String MyPages_authController_3(Model model) {
		return "myPages_auth_folder/myPages_auth_3";

	}

	@GetMapping("/myPages_auth_folder/myPages_auth_3")
	public String gMyPages_authController_3(Model model) {
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
