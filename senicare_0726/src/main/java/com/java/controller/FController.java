package com.java.controller; 
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping; 
 
@Controller 
public class FController { 
   
//  @GetMapping("/index") 
//  public String index() { 
//    return "index"; 
//  }
//  
//  @RequestMapping("/senicare_sub_header") 
//  public String senicare_sub_header() { 
//	  return "senicare_sub_header"; 
//  } 
//  @RequestMapping("/senicare_sub_footer") 
//  public String senicare_sub_footer() { 
//	  return "senicare_sub_footer"; 
//  } 
  
	// 네비게이션바
	@RequestMapping("/madangs_folder/madang_list")
	public String madang_list() {
		
		return "madangs_folder/madang_list";
	}
}