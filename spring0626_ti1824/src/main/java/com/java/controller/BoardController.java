package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/boardList")
	public String boardList(Model model) {
		//게시글 전체가져오기
		ArrayList<BoardDto> list = boardService.selectAll();
		model.addAttribute("list",list);
		return "board/boardList";
	}//boardList
	
	@RequestMapping("/board/boardView")
	public String boardView(@RequestParam(defaultValue = "1") int bno,Model model) {
		System.out.println("boardView  bno : "+bno);
		//게시글 1개 가져오기
		BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto",bdto);
		return "board/boardView";
	}
	
	@GetMapping("/board/boardWrite")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@PostMapping("/board/boardWrite")
	public String doBoardWrite() {
		// 게시글 1개저장
		
		return "board/boardWrite";
	}

}
