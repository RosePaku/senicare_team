package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.java.service.AuthServiceImpl;

@Controller
public class AuthController {

    private AuthServiceImpl authServiceimpl;

    @Autowired
    public void LoginController(AuthServiceImpl authServiceimpl) {
        this.authServiceimpl = authServiceimpl;
    }

    // // 개인회원 로그인
    // @PostMapping("/login")
    // public String login(@RequestParam("auth_id") String authId,
    // @RequestParam("auth_password") String authPassword,
    // Model model) {
    // // 사용자가 입력한 아이디와 비밀번호를 가져와서 로그인 처리
    // Auth auth = new Auth();
    // auth.setAuth_id(authId);
    // auth.setAuth_password(authPassword);
    // // 조회해서 회원 정보를 가져와서 로그인을 하는 기능 구현
    // Auth selectedAuth = authServiceimpl.select(Auth);

    // if (selectedAuth != null) {
    // // 로그인 성공
    // model.addAttribute("auth", selectedAuth);
    // return "redirect:/main"; // 로그인 성공 시 메인 페이지로 이동
    // } else {
    // // 로그인 실패
    // model.addAttribute("error", "아이디 또는 비밀번호가 잘못되었습니다.");
    // return "loginForm"; // 로그인 폼을 다시 보여줌 (에러 메시지와 함께)
    // }

    // return "redirect:/";

    // }

    // @RequestMapping("/members_folder/member_1")
    // public String members_1Controller(@RequestParam(defaultValue = "none") String
    // resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_1";

    // }

    // @GetMapping("/members_folder/member_1_1")
    // public String createForm(Model model) {
    // model.addAttribute("header", "senicare_sub_header.jsp");
    // model.addAttribute("footer", "senicare_sub_footer.jsp");
    // return "members_folder/member_1_1"; // 회원가입
    // }

    // @PostMapping("/members_folder/member_1_1")
    // public ResponseEntity<String> create(Auth auth) {
    // auth.setAuth_clause_yn("Y"); // 또는 "N"으로 설정
    // auth.setAuth_personal_yn("Y"); // 또는 "N"으로 설정
    // authServiceimpl.insert(auth);
    // return ResponseEntity.ok("회원 정보가 성공적으로 저장되었습니다.");

    // }

    // // 회원가입 요청 처리 (기업)
    // @GetMapping("/members_folder/member_1_2_1")
    // public String createB(Model model) {
    // model.addAttribute("header", "senicare_sub_header.jsp");
    // model.addAttribute("footer", "senicare_sub_footer.jsp");
    // return "members_folder/member_1_2_1"; // 회원가입
    // }

    // @PostMapping("/members_folder/member_1_2_1")
    // public String createBForm1(@ModelAttribute("a_b") A_B a_b, HttpSession
    // session) {
    // session.setAttribute("a_b", a_b);
    // // 기업 회원가입 페이지 1에서 입력된 데이터를 세션에 저장
    // a_b.setAuth_business_clause_yn_1("Y"); // 또는 "N"으로 설정
    // a_b.setAuth_business_personal_yn("Y"); // 또는 "N"으로 설정

    // // 저장값 확인 (주소값으로만 나옴)
    // System.out.println("회원가입 페이지 1에서 세션에 저장된 데이터: " + a_b.toString());

    // // 세션에 대한 값으로 나옴
    // System.out.println("사업자 등록 번호: " + a_b.getAuth_business_no_1());
    // System.out.println("사업자 이미지: " + a_b.getAuth_business_img_1());
    // System.out.println("정보보유기간: " + a_b.getAuth_info_storage_1());
    // // 기업 회원가입 페이지 2로 이동
    // return "redirect:/members_folder/member_1_2_2";
    // }

    // @PostMapping("/members_folder/member_1_2_2")
    // public ResponseEntity<String> createBForm2(@ModelAttribute("a_b") A_B a_b,
    // HttpSession session) {

    // a_bServiceimpl.insert(a_b);
    // // 저장값 확인
    // System.out.println("회원가입 페이지 1에서 세션에 저장된 데이터: " + a_b);

    // return ResponseEntity.ok("회원 정보가 성공적으로 저장되었습니다.");
    // }

    // @RequestMapping("/members_folder/member_1_2_1")

    // public String members_1_2_1Controller(@RequestParam(defaultValue = "none")
    // String resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_1_2_1";

    // }

    // @RequestMapping("/members_folder/member_1_2_2")
    // public String members_1_2_2Controller(@RequestParam(defaultValue = "none")
    // String resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_1_2_2";

    // }

    // @RequestMapping("/members_folder/member_2")
    // public String members_2Controller(@RequestParam(defaultValue = "none") String
    // resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_2";

    // }

    // @RequestMapping("/members_folder/member_3")
    // public String members_3Controller(@RequestParam(defaultValue = "none") String
    // resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_3";

    // }

    // @RequestMapping("/members_folder/member_4_1")
    // public String members_4_1Controller(@RequestParam(defaultValue = "none")
    // String resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_4_1";

    // }

    // @RequestMapping("/members_folder/member_4_2")
    // public String members_4_2Controller(@RequestParam(defaultValue = "none")
    // String resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_4_2";

    // }

    // @RequestMapping("/members_folder/member_4_3")
    // public String members_4_3Controller(@RequestParam(defaultValue = "none")
    // String resultCode,
    // Model model) {
    // model.addAttribute("resultCode", resultCode);
    // model.addAttribute("header", "senicare_main_header.jsp");
    // model.addAttribute("footer", "senicare_main_footer.jsp");
    // return "members_folder/member_4_3";

    // }

}
