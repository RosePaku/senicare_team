package com.java.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {

    @Autowired
    BoardService boardService;

    @RequestMapping("/board/boardList")
    public String boardList(Model model) {
        // 게시글 전체가져오기
        ArrayList<BoardDto> list = boardService.selectAll();
        model.addAttribute("list", list);
        return "board/boardList";
    }// boardList

    @RequestMapping("/board/boardView")
    public String boardView(@RequestParam(defaultValue = "1") int bno, Model model) {
        System.out.println("boardView : " + bno);
        // 게시글 1개 가져오기
        BoardDto bdto = boardService.selectOne(bno);
        model.addAttribute("bdto", bdto);

        return "board/boardView";
    }

    // public String doboardWrite() {
    // 게시글 1개저장
    // return "board/boardWrite";
    // }

    @GetMapping("/board/boardWrite")
    public String doBoardWrite() {
        return "board/boardWrite";
    }

    @PostMapping("/board/boardWrite")
    public String doBoardWrite(BoardDto bdto, @RequestPart MultipartFile file, Model model) throws Exception {
        // 게시글 1개 저장
        String fileName = "";

        // 파일이 있을 경우 파일 저장
        if (!file.isEmpty()) {
            // 실제파일이름
            String ori_fileName = file.getOriginalFilename();
            UUID uuid = UUID.randomUUID(); // 랜덤 숫자 생성
            fileName = uuid + "_" + ori_fileName; // 변경파일이름 - 중복방지
            String uploadUrl = "c:/upload/"; // 파일업로드 위치 // 꼭 마지막에 / 넣어줘야 함

            File f = new File(uploadUrl + fileName);
            file.transferTo(f); // 파일 저장 시킴
        }
        System.out.println("doBoardWrite bfile : " + fileName);
        bdto.setBfile(fileName);
        boardService.insertOne(bdto);
        return "board/boardWrite";
    }

}