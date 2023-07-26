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
    <title>구직 신청 완료</title>
    <style>
  
    </style>
        <link rel="stylesheet" href="../css/style_jiin_job_t_4.css">
</head>
<body class="bb">
    <!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

    <div class="completed-container">
        <h2 class="completed-title">구직 신청이 완료되었습니다!</h2>
        <p class="completed-success">축하합니다!</p>
        <p class="completed-message">구직 신청이 성공적으로 완료되었습니다.</p>
        <p class="completed-message">저희와 함께 한 노력이 큰 도움이 되기를 기대합니다.</p>
        <button class="completed-btn-home" onclick="window.location.href='홈페이지 주소'">홈으로 이동</button>
    </div>

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->

</body>
</html>
