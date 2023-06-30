package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;

@Controller
public class FController {

	@Autowired
	BoardService = boardService;

	@RequestMapping
	public String index() {
		return "index";
	}

	@RequestMapping
	public String main() {
		return "main";
	}

	@RequestMapping
	public String notice(Model model) {
		ArrayList<BoardDto> list = boardService.selectBoardAll();
		model.addAttribute("", list);
		

		return "notice";
	}

	@RequestMapping
	public String noticeView(int bno,Model, model) {
		// 뷰 가져오는 것 해보기
		return "noticeView";
	}

}
