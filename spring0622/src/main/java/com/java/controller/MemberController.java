// 파일이름: MemberController.java
// 날짜: 2023-06-23
// 이름: 박지인
// 파일 설명 요약: 이 코드는 스프링 MVC에서 회원 관련 기능을 처리하는 MemberController 클래스입니다.

package com.java.controller;

import javax.servlet.http.HttpServletRequest;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.MemberDto;

@Controller
@RequestMapping("/member")
public class MemberController {

    @RequestMapping("/member1")
    public String member1() {
        return "member/member1"; // "member/member1" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/mForm")
    public String mForm() {
        return "member/mForm"; // "member/mForm" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/doMForm")
    public String doMForm(MemberDto mdto, String[] hobbys, Model model) {
        // 선택된 취미를 문자열로 합치는 로직입니다.
        String hobby = "";
        for (int i = 0; i < hobbys.length; i++) {
            if (i == 0)
                hobby += hobbys[i];
            else
                hobby += "," + hobbys[i];
        }

        // game,golf,run
        System.out.println("hobby : " + hobby);
        mdto.setHobby(hobby);
        // mdto객체 저장
        model.addAttribute("mdto", mdto);

        return "member/doMForm"; // "member/doMForm" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/updateMForm")
    // 수정하기
    public String updateMForm(MemberDto mdto, Model model) {
        model.addAttribute("mdto", mdto);

        return "member/updateMForm"; // "member/updateMForm" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/login")
    public String login() {
        return "member/login"; // "member/login" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/doLogin")
    public String doLogin(@RequestParam(required = false, defaultValue = "aaa") String id, String pw, Model model) {
        model.addAttribute("id", id); // 모델에 "id" 속성과 전달받은 id 값을 추가합니다.
        model.addAttribute("pw", pw); // 모델에 "pw" 속성과 전달받은 pw 값을 추가합니다.

        return "member/doLogin"; // "member/doLogin" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/memberForm")
    public String memberForm() {
        return "member/memberForm"; // "member/memberForm" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }

    @RequestMapping("/doMemberForm")
    public String doMemberForm(MemberDto mdto, Model model, HttpServletRequest request) {
        model.addAttribute("mdto", mdto); // 모델에 "mdto" 속성과 전달받은 mdto 객체를 추가합니다.
        return "member/doMemberForm"; // "member/doMemberForm" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }
}
