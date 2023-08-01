package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.A_B;
import com.java.dto.A_B_Notice;
import com.java.service.A_B_NoticeService;
import com.java.service.MyPages_businessService;
import com.java.service.MyPages_businessServiceImpl;

@Controller
@RequestMapping("/myPages_business_folder")
public class MyPages_businessController {

	@Autowired
	HttpSession session;

	@Autowired
	private MyPages_businessService mypages_businessservice;

	@Autowired
	private MyPages_businessServiceImpl mypages_businessserviceimpl;

	private A_B_NoticeService A_B_NoticeService;

	// 회원 정보 가져오기
	@PostMapping("/myPages_business_1")
	public String MyPages_businessController_1(Model model) {
		List<A_B> A_BList = mypages_businessservice.getAllA_B();
		System.out.println("A_BController A_BList : " +
				A_BList.size());
		System.out.println(A_BList.get(0).getAuth_business_id());
		for (int i = 0; i < 10; i++) {
			System.out.println(A_BList.get(i).getAuth_business_no_1());
		}

		model.addAttribute("A_BList", A_BList);
		return "myPages_business_folder/myPages_business_1";

	}

	// 회원정보 가져오기
	@GetMapping("/myPages_business_1")
	public String gMyPages_businessController_1(Model model) {
		List<A_B> A_BList = mypages_businessservice.getAllA_B();
		System.out.println("A_BController A_BList : " +
				A_BList.size());
		System.out.println(A_BList.get(0).getAuth_business_id());
		for (int i = 0; i < 10; i++) {
			System.out.println(A_BList.get(i).getAuth_business_no_1());
		}

		model.addAttribute("A_BList", A_BList);
		return "myPages_business_folder/myPages_business_1";

	}

	// 회원 정보 업데이트
	@PostMapping("/myPages_business_1/update")
	public String updateMyPages_businessController_1(
			A_B a_b, Model model) {

		System.out.println("회원정보 수정 완료 : " + a_b.getAuth_business_email());
		mypages_businessserviceimpl.updateA_B(a_b);

		return "redirect:/myPages_business_folder/myPages_business_1";
		// 전화번호 하나의 문자열로 합치기
		// String fullPhoneNumber = phoneNumber + phoneNumber2 + phoneNumber3;

		// 합친 전화번호 집어 넣기
		// A_BList.get(0).setAuth_business_phone_number(fullPhoneNumber);

		// 회원정보 업데이트하기 (비밀번호, 전화번호, 이메일)
		// mypages_businessservice.updateA_B(A_BList.get(0));
		// mypages_businessservice.updateA_B(A_BList.get(0).getAuth_business_password());
		// mypages_businessservice.updateA_B(A_BList.get(0).getAuth_business_phone_number());
		// mypages_businessservice.updateA_B(A_BList.get(0).getAuth_business_email());

		// mypages_businessservice.updateA_B(a_b);

		// model.addAttribute("A_BList", updatedA_BList);

		// System.out.println("회원정보 수정 완료 : " +
		// A_BList.get(0).getAuth_business_email());

	}

	// 회원정보 가져오기
	// @GetMapping("/myPages_business_1={update}")
	// public String ugMyPages_businessController_1(Model model) {
	// List<A_B> A_BList = mypages_businessservice.getAllA_B();
	// System.out.println("A_BController A_BList : " +
	// A_BList.size());
	// System.out.println(A_BList.get(0).getAuth_business_id());
	// for (int i = 0; i < 10; i++) {
	// System.out.println(A_BList.get(i).getAuth_business_no_1());
	// }

	// model.addAttribute("A_BList", A_BList);
	// return "myPages_business_folder/myPages_business_1";

	// }

	// 가져오기 일단은
	// @GetMapping("/myPages_business_1")
	// public String gMyPages_businessController_1(@RequestParam("id") int
	// AUTH_BUSINESS_ID, Model model) {
	// A_B a_b = mypages_businessservice.getMemberById(AUTH_BUSINESS_ID);
	// model.addAttribute("A_B", a_b);
	// return "/myPages_business_1";

	// }

	// @PostMapping("/myPages_business_1/edit")
	// public A_B MyPages_businessController_1(Model model, A_B a_b) {
	// A_B a_b = MyPages_businessService.updateComOne(a_b);
	//
	// return "/myPages_business_1";
	//
	// }

	// 채용 공고 정보 작성 (1)
	@PostMapping("/myPages_business_2_1")
	public String MyPages_businessController_2_1(Model model, HttpSession session, A_B_Notice a_b_notice) {

		session.setAttribute("a_b_notice_session", a_b_notice);

		System.out.println(a_b_notice.getAuth_Business_Ko());
		System.out.println(a_b_notice.getAuth_Business_Po());

		return "redirect:/myPages_business_folder/myPages_business_2_2";

	}

	@GetMapping("/myPages_business_2_1")
	public String gMyPages_businessController_2_1(Model model) {
		return "myPages_business_folder/myPages_business_2_1";

	}

	// 채용공고 정보 (2)
	@GetMapping("/myPages_business_2_2")
	public String gMyPages_businessController_2_2(Model model, A_B_Notice a_b_notice, HttpSession session) {

		A_B_Notice a_b_notice1 = (A_B_Notice) session.getAttribute("a_b_notice_session");

		model.addAttribute("a_b_notice_session", a_b_notice1);

		System.out.println(a_b_notice1.getAuth_Business_Ko());
		System.out.println(a_b_notice1.getAuth_Business_Po());

		model.addAttribute("a_b_notice_session", a_b_notice1);

		return "myPages_business_folder/myPages_business_2_2";

	}

	// 채용공고 정보 (2) 저장
	@PostMapping("/myPages_business_2_2")
	public String MyPages_businessController_2_2(Model model, A_B_Notice a_b_notice, HttpSession session) {

		A_B_Notice a_b_notice1 = (A_B_Notice) session.getAttribute("a_b_notice_session");
		a_b_notice.setAuth_Business_Key("워라밸 복지 빵빵");
		a_b_notice.setAuth_Business_Que("인생에서 제일 중요하게 생각하는 것은 무엇입니까. 이유와 함께 같이 작성하세요.");

		// 정보 저장
		a_b_notice.setAuth_Business_Ko(a_b_notice1.getAuth_Business_Ko());
		a_b_notice.setAuth_Business_Em(a_b_notice1.getAuth_Business_Em());
		a_b_notice.setAuth_Business_W_Si(a_b_notice1.getAuth_Business_W_Si());
		a_b_notice.setAuth_Business_W_Gu(a_b_notice1.getAuth_Business_W_Gu());
		a_b_notice.setAuth_Business_W_Loc(a_b_notice1.getAuth_Business_W_Loc());
		a_b_notice.setAuth_Business_Po(a_b_notice1.getAuth_Business_Po());

		System.out.println(a_b_notice1.getAuth_Business_Ko());
		System.out.println(a_b_notice1.getAuth_Business_Po());

		model.addAttribute("a_b_notice_session", a_b_notice1);

		System.out.println(a_b_notice1.getAuth_Business_Ko());
		System.out.println(a_b_notice1.getAuth_Business_Po());

		mypages_businessserviceimpl.insert(a_b_notice);

		return "myPages_business_folder/myPages_business_3";

	}

	@PostMapping("/myPages_business_3")
	public String MyPages_businessController_3(Model model) {
		List<A_B_Notice> A_B_NoticeList = A_B_NoticeService.getAllA_B_Notice();
		System.out.println("A_B_NoticeController A_B_NoticeList : " +
				A_B_NoticeList.size());
		System.out.println(A_B_NoticeList.get(0).getAuth_Business_App());
		for (int i = 0; i < 10; i++) {
			System.out.println(A_B_NoticeList.get(i).getAuth_Business_App());
		}

		model.addAttribute("A_B_NoticeList", A_B_NoticeList);

		return "myPages_business_folder/myPages_business_3";

	}

	@GetMapping("/myPages_business_3")
	public String gMyPages_businessController_3(Model model) {

		List<A_B_Notice> A_B_NoticeList = mypages_businessservice.getAllA_B_Notice();
		System.out.println("A_B_NoticeController A_B_NoticeList : " +
				A_B_NoticeList.size());

		System.out.println("지원 : " + A_B_NoticeList.get(0).getAuth_Business_App());
		// System.out.println(A_B_NoticeList.get(0).getAuth_Business_App());
		// for (int i = 0; i < 10; i++) {
		// System.out.println(A_B_NoticeList.get(i).getAuth_Business_App());
		// }

		model.addAttribute("A_B_NoticeList", A_B_NoticeList);

		return "myPages_business_folder/myPages_business_3";

	}

	// 삭제
	@PostMapping("/myPages_business_3/delate")
	public String dMyPages_businessController_3(Model model, A_B_Notice a_b_notice) {

		mypages_businessserviceimpl.deleteA_B_Notice(a_b_notice);
		// System.out.println("회원정보 수정 완료 : " + a_b_notice.getAuth_business_email());

		return "redirect:/myPages_business_folder/myPages_business_3";

	}

	@PostMapping("/myPages_business_4")
	public String MyPages_businessController_4(Model model) {
		return "myPages_business_folder/myPages_business_4";

	}

	@GetMapping("/myPages_business_4")
	public String gMyPages_businessController_4(Model model) {
		return "myPages_business_folder/myPages_business_4";

	}

	@PostMapping("/myPages_business_5")
	public String MyPages_businessController_5(Model model) {
		return "myPages_business_folder/myPages_business_5";

	}

	@GetMapping("/myPages_business_5")
	public String gMyPages_businessController_5(Model model) {
		return "myPages_business_folder/myPages_business_5";

	}

	@PostMapping("/myPages_business_6")
	public String MyPages_businessController_6(Model model) {
		return "myPages_business_folder/myPages_business_6";

	}

	@GetMapping("/myPages_business_6")
	public String gMyPages_businessController_6(Model model) {
		return "myPages_business_folder/myPages_business_6";

	}

}
