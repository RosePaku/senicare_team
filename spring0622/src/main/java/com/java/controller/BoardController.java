// 파일이름 : BoardController.java
// 날짜: 2023-06-23
// 이름: 박지인
// 파일 설명 요약: 이 코드는 스프링 MVC에서 게시판 컨트롤러를 나타내는 BoardController 클래스입니다.

package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
    @RequestMapping("/board/board1")
    public String board1() {
        return "board/board1"; // "board/board1" 뷰의 이름을 반환하여 클라이언트에게 전달합니다.
    }
}
