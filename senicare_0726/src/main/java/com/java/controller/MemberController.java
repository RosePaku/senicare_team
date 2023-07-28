package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.java.dto.A_B;
import com.java.dto.Auth;
import com.java.service.A_BServiceImpl;
import com.java.service.AuthServiceImpl;

@Controller
@SessionAttributes("a_b") // 세션값 자동저장
public class MemberController {

	@Autowired
	HttpSession session;

	private AuthServiceImpl authServiceimpl;
	private A_BServiceImpl a_bServiceimpl;

	@Autowired
	public MemberController(AuthServiceImpl authServiceimpl) {
		this.authServiceimpl = authServiceimpl;
	}

	@Autowired
	public void ABController(A_BServiceImpl a_bServiceimpl) {
		this.a_bServiceimpl = a_bServiceimpl;
	}

	@ModelAttribute("a_b")
	public A_B createA_B() {
		return new A_B();
	}

	@RequestMapping("/members_folder/member_1")
	public String members_1Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_1";

	}

	// 회원가입 요청 처리 (개인)

	@GetMapping("/members_folder/member_1_1")
	public String createForm(Model model) {
		model.addAttribute("header", "senicare_sub_header.jsp");
		model.addAttribute("footer", "senicare_sub_footer.jsp");
		return "members_folder/member_1_1"; // 회원가입
	}

	@PostMapping("/members_folder/member_1_1")
	public ResponseEntity<String> create(Auth auth) {
		auth.setAuth_clause_yn("Y"); // 또는 "N"으로 설정
		auth.setAuth_personal_yn("Y"); // 또는 "N"으로 설정
		authServiceimpl.insert(auth);
		return ResponseEntity.ok("회원 정보가 성공적으로 저장되었습니다.");

	}

	// 회원가입 요청 처리 (기업)
	@GetMapping("/members_folder/member_1_2_1")
	public String createB(Model model) {
		model.addAttribute("header", "senicare_sub_header.jsp");
		model.addAttribute("footer", "senicare_sub_footer.jsp");
		return "members_folder/member_1_2_1"; // 회원가입
	}

	@PostMapping("/members_folder/member_1_2_1")
	public String createBForm1(A_B a_b, HttpSession session) {

		// a_b.getAuth_business_no_1() ,, a_b.getAuth_business_img_1() ,,
		// a_b.getAuth_info_storage_1()
		// 세션 정보를 저장해서 다음 페이지로 넘기기
		session.setAttribute("a_b_session", a_b);

		// 세션에 대한 값으로 나옴
		System.out.println("사업자 등록 번호: " + a_b.getAuth_business_no_1());
		System.out.println("사업자 이미지: " + a_b.getAuth_business_img_1());
		System.out.println("정보보유기간: " + a_b.getAuth_info_storage_1());

		// 기업 회원가입 페이지 2로 이동
		return "redirect:/members_folder/member_1_2_2";
	}

	// 기업회원가입 2
	@GetMapping("/members_folder/member_1_2_2")
	public String createB2(Model model, HttpSession session) {

		// 세션에서 A_B 객체를 가져옴
		A_B a_b1 = (A_B) session.getAttribute("a_b_session");

		// 가져온 정보를 모델에 담아서 2페이지로 전달
		model.addAttribute("a_b", a_b1);

		System.out.println(a_b1.getAuth_business_no_1());
		System.out.println(a_b1.getAuth_business_img_1());

		model.addAttribute("a_b", a_b1); // 가져온 정보를 다시 모델에 담아서 2페이지로 전달
		model.addAttribute("header", "senicare_sub_header.jsp");
		model.addAttribute("footer", "senicare_sub_footer.jsp");
		return "members_folder/member_1_2_2"; // 회원가입
	}

	@PostMapping("/members_folder/member_1_2_2")
	public ResponseEntity<String> createBForm2(A_B a_b, HttpSession session, Model model) {
		// 세션에서 A_B 객체를 가져옴
		A_B a_b1 = (A_B) session.getAttribute("a_b_session");
		a_b.setAuth_business_no_1(a_b1.getAuth_business_no_1());
		a_b.setAuth_business_img_1(a_b1.getAuth_business_img_1());
		a_b.setAuth_info_storage_1(a_b1.getAuth_info_storage_1());

		// 가져온 정보를 모델에 담아서 2페이지로 전달
		model.addAttribute("a_b", a_b1);

		// 기업 회원가입 페이지 1에서 입력된 데이터를 세션에 저장
		a_b.setAuth_business_clause_yn_1("Y"); // 또는 "N"으로 설정
		a_b.setAuth_business_personal_yn("Y"); // 또는 "N"으로 설정

		System.out.println(a_b.getAuth_business_no_1());
		System.out.println(a_b.getAuth_business_img_1());
		System.out.println(a_b.getAuth_business_id());

		// @ModelAttribute("a_b")는 삭제
		a_bServiceimpl.insert(a_b);

		// 저장값 확인
		System.out.println("회원가입 페이지 1에서 세션에 저장된 데이터: " + a_b);

		return ResponseEntity.ok("회원 정보가 성공적으로 저장되었습니다.");
	}

	// 로그인 인증
	@PostMapping("/login")
	public String login(Auth auth, Model model, HttpSession session) {
		System.out.println(auth.getAuth_id());
		System.out.println(auth.getAuth_password());
		System.out.println(auth.getAuth_name());

		String resultCode = authServiceimpl.select(auth);
		if (resultCode.equals("s_login")) {
			// 세션에 id값 담아서 저장
			session.setAttribute("login", 1);
			session.setAttribute("id", auth.getAuth_id());
			return "redirect:/?resultCode=" + resultCode;

		} else {
			System.out.println("controller resultCode2 : " + resultCode);
			model.addAttribute("resultCode", resultCode); // f_login
			return "redirect:/fail";
		}

	}

	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		// 세션을 만료시켜 로그아웃 처리
		session.invalidate();
		return "redirect:/";
	}

	// 로그인 인증
	@PostMapping("/a_blogin")
	public String a_blogin(A_B a_b, Model model, HttpSession session) {
		System.out.println(a_b.getAuth_business_id());
		System.out.println(a_b.getAuth_business_password());
		System.out.println(a_b.getAuth_business_ceo_name_2());

		String resultCode = a_bServiceimpl.select(a_b);
		if (resultCode.equals("a_b_s_login")) {
			// 로그인이 성공했을 때, 헤더 값을 변경하고 메인 페이지로 리다이렉트
			session.setAttribute("login", 1);
			session.setAttribute("a_bid", a_b.getAuth_business_id());
			return "redirect:/?resultCode=" + resultCode;

		} else {
			model.addAttribute("resultCode", resultCode); // f_login
			System.out.println("controller resultCode2 : " + resultCode);
			return "redirect:/fail";
		}
	}

	@RequestMapping("/members_folder/member_2")
	public String members_2Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_2";

	}

	@RequestMapping("/members_folder/member_3")
	public String members_3Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_3";

	}

	@RequestMapping("/members_folder/member_4_1")
	public String members_4_1Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_4_1";

	}

	@RequestMapping("/members_folder/member_4_2")
	public String members_4_2Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_4_2";

	}

	@RequestMapping("/members_folder/member_4_3")
	public String members_4_3Controller(@RequestParam(defaultValue = "none") String resultCode,
			Model model) {
		model.addAttribute("resultCode", resultCode);
		model.addAttribute("header", "senicare_main_header.jsp");
		model.addAttribute("footer", "senicare_main_footer.jsp");
		return "members_folder/member_4_3";

	}

}
