<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	0712_1934 작업사항
	1) 헤더, 푸터 작업 완료
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
 -->

<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
	<link rel="icon" href="../img/favicon.png" type="../image/png">
	<title>Hospice Medical</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../vendors/linericon/style.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="../vendors/animate-css/animate.css">
	<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="../css/style_jiin_job.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/responsive.css">
	<link rel="stylesheet" href="../css/style_jiin_job_t_4.css">
</head>

<body>



	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>바로 구직</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="../jobs_folder/job_1.jsp">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>

		<!--================End Banner Area =================-->

		<!-- Start Offered Services Area -->
		<body class="job_2_2_2_body">
			<div class="info-container_job_1">
				
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
		</body>
		<!--====게시판====-->

		<!-- End Offered Services Area -->

		<!-- start footer Area -->
		<%@ include file="../senicare_main_footer.jsp" %>
		<!-- End footer Area -->



		<!-- Optional JavaScript -->
	<!-- 스크립트 라이브러리 -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/page_jiin.js"></script>
	<script src="../js/custom.js"></script>
	<script src="../js/page_jiin_header_footer.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>


</body>

</html>