package com.java.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;
import com.java.service.FreeService;

@Controller
public class FreeController {
	
	@Autowired
	@Qualifier("freeServiceImpl")
	FreeService freeService;
	
	// 오늘 날짜 구하기
	Date date = new Date();
	//System.out.print("date: " + date);
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String today = dateFormat.format(date);
	
	// 게시글 전체 가져오기
	@RequestMapping("/madangs_folder/madang_1_1")
	public String madang_1_1(PageDto pageDto, @RequestParam(defaultValue = "10") String rowPP, Model model) {
		HashMap<String, Object> map = freeService.selectAll(pageDto, rowPP);
		
		model.addAttribute("list", map.get("list")); // 일반회원
		model.addAttribute("notice", map.get("notice")); // 관리자 공지
		model.addAttribute("pageDto", map.get("pageDto"));
		model.addAttribute("s_opt", map.get("s_opt"));
		model.addAttribute("s_word", map.get("s_word"));
		model.addAttribute("rowPP", rowPP);
		model.addAttribute("today", today);
		
		return "madangs_folder/madang_1_1";
	}
	
	// 게시글 1개 + 댓글 가져오기
	@RequestMapping("/madangs_folder/madang_1_2")
	public String madang_1_2(int bno, Model model) {
		// 게시글 1개(+이전글 다음글)
		HashMap<String, Object> map = freeService.selectOne(bno);
		// 댓글 가져오기
		ArrayList<CommentDto> list = freeService.selectComAll(bno);
		
		model.addAttribute("mdto", map.get("mdto"));
		model.addAttribute("prevMdto", map.get("prevMdto"));
		model.addAttribute("nextMdto", map.get("nextMdto"));
		model.addAttribute("list", list);
		
		return "madangs_folder/madang_1_2";
	}
	
	// 게시글 쓰기
	@GetMapping("/madangs_folder/madang_1_3")
	public String madang_1_3() {
		return "madangs_folder/madang_1_3";
	}
	
	// 게시글 저장하기
	@PostMapping("/madangs_folder/madang_1_3")
	public String madang_1_3(MadangDto mdto, List<MultipartFile> files) {
		String result = "";
		
		freeService.insertOne(mdto, files);
		
		return "redirect:/madangs_folder/madang_1_1?result="+result;
	}
	
	// 댓글 저장하기 + 댓글 가져오기
	@PostMapping("/free/insertComOne")
	@ResponseBody // ***AJAX와 짝짜꿍!!!!
	public CommentDto insertComOne(CommentDto aCdto) {
		// 댓글 저장하기
		CommentDto cdto = freeService.insertComOne(aCdto);
		
		return cdto;
	}
	
	// 댓글 삭제
	@PostMapping("/free/deleteComOne")
	@ResponseBody // ***AJAX와 짝짜꿍!!!!
	public void deleteComOne(int cno) {
		System.out.println("ajax에서 온 데이터:" +cno);
		freeService.deleteOne(cno);
		
	}
	
	// 댓글 수정 저장
	@PostMapping("/free/updateComOne")
	@ResponseBody
	public CommentDto updateComOne(CommentDto aCdto) {
		// 댓글 수정하고 저장하기
		CommentDto cdto = freeService.updateComOne(aCdto);
		System.out.println(aCdto);
		
		return cdto;
	}
	
	// 이미지 배열로 가져오기
	@PostMapping("/free/loadImage")
	@ResponseBody
	public String[] loadImage(int bno) {
		System.out.println(bno);
		String[] arrImg = freeService.loadImage(bno); 
		
		return arrImg;
	}
	
	// 게시글 1개 삭제하기
	@PostMapping("/free/deleteBrdOne")
	@ResponseBody
	public String deleteBrd(int bno) {
		freeService.deleteBrdOne(bno);
		
		return "deleted";
	}
	
	// 게시글 수정하기
	@GetMapping("/madangs_folder/madang_1_4")
	public String updateBrdOne(int bno, Model model) {
		// 게시글 1개(+이전글 다음글) -- 수정페이지에서는 이전글,다음글 필요없지만 메소드 이미 만들었으니 사용하기! 
		HashMap<String, Object> map = freeService.selectOne(bno);

		// 이미지 배열로 가져오기
		String[] arrImg = freeService.loadImage(bno); 
		
		model.addAttribute("mdto", map.get("mdto"));
		model.addAttribute("arrImg", arrImg);
		
		return "madangs_folder/madang_1_4";
	}
	
	// 게시글 수정 후 저장하기
	@PostMapping("/madangs_folder/madang_1_4")
	public String madang_1_4(MadangDto mdto, List<MultipartFile> files) {
		
		freeService.updateOne(mdto, files);
			
		return "redirect:/madangs_folder/madang_1_1";
	}
}
