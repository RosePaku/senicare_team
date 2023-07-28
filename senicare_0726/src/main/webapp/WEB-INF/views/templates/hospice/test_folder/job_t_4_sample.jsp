<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!DOCTYPE html>
<html>
<head>
    <title>지원 내용 확인 페이지</title>
    <link rel="stylesheet" href="../css/style_jiin_job_t_4.css">
</head>
<body class="job_2_2_2_body">
    <!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

    <div class="info-container">
        
        <button class="btn-stop">중단하기</button>
        <!-- 게이지 바와 중단하기 버튼 -->
        <div class="progress-container">
          <div class="progress-bar">
            <div class="progress" style="width: 100%;"></div>
          </div>
        </div>
        <h2 class="job_t_3_h2">지원 내용 확인</h2>

        <!-- 구직자 정보 -->
        <div class="applicant-info">
            <h3>구직자 정보</h3>
            <p><strong>이름:</strong> 홍길동</p>
            <p><strong>이메일:</strong> hong@example.com</p>
            <p><strong>전화번호:</strong> 010-1234-5678</p>
            <p><strong>성별:</strong> 남성</p>
            <p><strong>생년월일:</strong> 1990-01-01</p>
        </div>

        <!-- 지원한 회사 정보 -->
        <div class="company-info">
            <h3>신청한 회사 정보</h3>
            <p><strong>회사:</strong> 회사 A</p>
            <p><strong>산업:</strong> IT 서비스</p>
            <p><strong>위치:</strong> 서울시 강남구</p>
            <p><strong>담당자:</strong> 홍길동</p>
            <p><strong>연락처:</strong> 010-1234-5678</p>
        </div>


        <!-- 확인 및 수정 버튼 -->
        <div class="buttons">
            <!-- 뒤로가기 기능 -->
            <input type="button" value="수정하기">
            <input type="button" value="이 내용으로 구직 신청하기">
        </div>
    </div>

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->

</body>
</html>
