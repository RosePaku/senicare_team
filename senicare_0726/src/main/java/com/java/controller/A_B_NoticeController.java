package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.A_B_Notice;
import com.java.service.A_B_NoticeService;

@Controller
public class A_B_NoticeController {

    @Autowired
    private A_B_NoticeService A_B_NoticeService;

    // @PostMapping("/getData")
    // public String asd(Model model) {

    // String resultData = "서버에서 보내는 데이터입니다."; // 예시 데이터
    // return resultData;
    // }

    @GetMapping("/getJobData")
    @ResponseBody
    public String getJobData() {
        // 여기에서 데이터 처리 로직을 구현하고 JSON 형식의 데이터를 반환합니다.
        // 이 예제에서는 간단하게 문자열로 데이터를 반환합니다.
        return "{'jobTitle': '웹 개발자', 'company': 'ABC 기업'}";
    }

    // 지원자 수 업데이트문
    @PostMapping("/jobs_folder/job_1_2_1/increaseAuthBusinessVol")
    public String increaseAuthBusinessVol(A_B_Notice a_b_Notice, Model model) {
        System.out.println(a_b_Notice.getAuth_Business_Vol());
        A_B_NoticeService.increaseApplicantCount(a_b_Notice);
        System.out.println(a_b_Notice.getAuth_Business_Wn());
        // A_B_NoticeService.increaseApplicantCount(a_b_Notice);
        // A_B_NoticeService.increaseApplicantCount(a_b_Notice);
        // A_B_NoticeService.increaseApplicantCount(auth_Business_Vol);
        return "jobs_folder/job_1_2_1";
    }

    @PostMapping("/jobs_folder/job_1_2_1")
    public String pjob_1_2_1(Model model) {

        List<A_B_Notice> A_B_NoticeList = A_B_NoticeService.getAllA_B_Notice();
        System.out.println("A_B_NoticeController A_B_NoticeList : " +
                A_B_NoticeList.size());
        System.out.println(A_B_NoticeList.get(0).getAuth_Business_App());
        for (int i = 0; i < 10; i++) {
            System.out.println(A_B_NoticeList.get(i).getAuth_Business_App());
        }

        model.addAttribute("A_B_NoticeList", A_B_NoticeList);
        return "jobs_folder/job_1_2_1";
    }

    // 기업 정보를 보여주는 페이지의 매핑
    @GetMapping("/jobs_folder/job_1_2_1")
    public String showA_B_NoticeList(Model model) {
        List<A_B_Notice> A_B_NoticeList = A_B_NoticeService.getAllA_B_Notice();
        System.out.println("A_B_NoticeController A_B_NoticeList : " +
                A_B_NoticeList.size());
        System.out.println(A_B_NoticeList.get(0).getAuth_Business_App());
        for (int i = 0; i < 10; i++) {
            System.out.println(A_B_NoticeList.get(i).getAuth_Business_App());
        }

        model.addAttribute("A_B_NoticeList", A_B_NoticeList);
        return "jobs_folder/job_1_2_1";
    }

    // 상세 지원하기
    @PostMapping("/jobs_folder/job_1_2_2")
    public String job_1_2_2Controller(@RequestParam(defaultValue = "none") String resultCode, Model model) {
        model.addAttribute("resultCode", resultCode);
        model.addAttribute("header", "senicare_main_header.jsp");
        model.addAttribute("footer", "senicare_main_footer.jsp");
        return "jobs_folder/job_1_2_2";

    }
    // @GetMapping("/jobs_folder/job_1_2_1")
    // public String showA_B_NoticeList(Model model) {
    // return "jobs_folder/job_1_2_1";
    // }

    // 기업 상세 정보를 보여주는 페이지의 매핑
    // @GetMapping("/{auth_Business_Wn}")
    // public String showA_B_NoticeDetails(@PathVariable String auth_Business_Wn,
    // Model model) {
    // A_B_Notice selectedA_B_Notice =
    // A_B_NoticeService.getA_B_NoticeById(auth_Business_Wn);
    // model.addAttribute("selectedA_B_Notice", selectedA_B_Notice);
    // return "A_B_Notice_details";
    // }

    // // 기업 정보에 간편 지원하기 기능을 구현한 매핑
    // @PostMapping("/apply/{auth_Business_Wn}")
    // public String applyJob(@PathVariable String auth_Business_Wn) {
    // // 구직 신청 로직 구현
    // // ...
    // return "redirect:/jobs_folder"; // 채용 사이트 페이지로 리다이렉트
    // }

    // // 기업 정보에 상세 지원하기 기능을 구현한 매핑
    // @PostMapping("/apply/{auth_Business_Wn}/detail")
    // public String applyJobInDetail(@PathVariable String auth_Business_Wn) {
    // // 상세 구직 신청 로직 구현
    // // ...
    // return "redirect:/jobs_folder"; // 채용 사이트 페이지로 리다이렉트
    // }

}

// public class A_B_NoticeController {

// @Autowired
// @Qualifier("a_B_NoticeServiceImpl") // 프라이머리 키
// private A_B_NoticeService a_b_noticeService;

// @Autowired
// public A_B_NoticeController(A_B_NoticeService a_B_NoticeService) {
// this.a_b_noticeService = a_B_NoticeService;
// }

// // 기업 리스트 페이지 보기
// @GetMapping("/jobs")
// public String showA_BNoitceList(Model model) {
// // 기업 정보 리스트를 가져와서 모델에 담습니다.
// model.addAttribute("companyList", a_b_noticeService.getAllCompanies());
// return "jobs";
// }

// // 특정 기업 상세 정보 보기
// @GetMapping("/company/{companyId}")
// public String showCompanyDetails(@PathVariable("companyId") long companyId,
// Model model) {
// // companyId를 기준으로 해당 기업의 상세 정보를 가져와서 모델에 담습니다.
// A_B_Notice selectedCompany = a_b_noticeService.getCompanyById(companyId);
// model.addAttribute("selectedCompany", selectedCompany);
// return "jobs";
// }

// // 간편 지원하기 기능
// @PostMapping("/apply/{companyId}")
// public String applyJob(@PathVariable("companyId") long companyId) {
// // 지원 로직을 수행하고 결과를 처리합니다.
// // 이 부분은 필요한 실제 로직에 따라 작성되어야 합니다.
// return "redirect:/jobs_folder/job_1_2_1/jobs";
// }

// // 상세 지원하기 기능
// @PostMapping("/apply/{companyId}/detail")
// public String applyJobWithDetails(@PathVariable("companyId") long companyId)
// {
// // 상세 지원 로직을 수행하고 결과를 처리합니다.
// // 이 부분은 필요한 실제 로직에 따라 작성되어야 합니다.
// return "redirect:/jobs_folder/job_1_2_1/jobs";
// }
// }
