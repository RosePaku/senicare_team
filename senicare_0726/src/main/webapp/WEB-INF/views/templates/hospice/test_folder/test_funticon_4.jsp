<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 지원자 정보 기능 테스트 -->
<!-- 이력서,경력사항,자기소개서,자격증,포트폴리오, 근무가능일, 기타 참고사항 -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>지원자 정보 입력 페이지</title>
    <link rel="stylesheet" href="../css/styles.css"> <!-- CSS 파일 연결 -->
</head>
<body>
    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->

<!-- 지원자 정보 입력 페이지 -->
<div id="application_form">
    <!-- 이력서 등록 여부 체크 -->
    <script>
        // 이력서 등록 여부를 체크하는 함수 (임시로 true로 설정)
        function checkResumeExists() {
            return true;
        }

        // 이력서 등록 여부에 따라 폼을 전환하는 함수
        function toggleResumeForm() {
            const resumeForm = document.getElementById("resume_form");
            const simpleResumeForm = document.getElementById("simple_resume_form");
            const resumeExists = checkResumeExists();

            if (resumeExists) {
                resumeForm.style.display = "block";
                simpleResumeForm.style.display = "none";
            } else {
                resumeForm.style.display = "none";
                simpleResumeForm.style.display = "block";
            }
        }

        // 페이지 로드 시 폼 전환 함수 호출
        toggleResumeForm();
    </script>

    <!-- 이력서 등록 폼 -->
    <div id="resume_form" style="display: none;">
        <!-- 이력서 등록 폼 내용 -->
        <!-- ... -->
    </div>

    <!-- 간편 이력서 등록 폼 -->
    <div id="simple_resume_form" style="display: none;">
        <!-- 간편 이력서 등록 폼 내용 -->
        <!-- ... -->
    </div>
</div>
    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->

</body>
</html>