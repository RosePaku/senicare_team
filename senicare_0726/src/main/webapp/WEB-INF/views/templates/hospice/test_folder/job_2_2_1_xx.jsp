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
		<body class="job_t_3_body">
			<div class="info-container">
			  <!-- 왼쪽 영역: 구직자 정보 입력란 -->
			  <div class="applicant-info">
				<!-- 이전 페이지로 이동 -->
				  <button class="btn-stop">중단하기</button>
				  <!-- 게이지 바와 중단하기 버튼 -->
				  <div class="progress-container">
					<div class="progress-bar">
					  <div class="progress" style="width: 50%;"></div>
					</div>
				  </div>
		  
				  <h2 class="job_t_3_h2">구직자 정보 입력</h2>
				  <form>
					<label class="job_label_2" for="name">이름:</label>
					<input type="text" id="name" name="name" required>
		  
					<label class="job_label_2" for="email">이메일:</label>
					<input type="email" id="email" name="email" required>
		  
					<label class="job_label_2" for="phone">전화번호:</label>
					<input type="tel" id="phone" name="phone" required>
		  
					<!-- 성별 라벨과 체크 박스 -->
					<div>
					  <label class="job_label_2" for="gender">성별:</label>
					  <input type="radio" id="male" name="gender" value="남성" required>
					  <label class="job_label_2" for="male">남성</label>
					  <input type="radio" id="female" name="gender" value="여성" required>
					  <label class="job_label_2" for="female">여성</label>
					</div>
		  
					<!-- 생년월일 입력 -->
					<label class="job_label_2" for="birthdate">생년월일:</label>
					<input type="date" id="birthdate" name="birthdate" required>
					<!-- 다음으로 넘어가기 -->
					<!-- 회원가입 안했을 경우 회원가입창으로 넘기기!! -->
					<input type="submit" value="저장하고 다음으로 이동">
				  </form>
				</div>
		  
				<!-- 오른쪽 영역: 구직자 신청 회사 정보 -->
				<div class="company-info">
				  <h2 class="job_t_3_h2">신청한 회사 정보</h2>
				  <div>
					<div class="company-info">
					  <h3>회사 A</h3>
					  <p>산업: IT 서비스</p>
					  <p>위치: 서울시 강남구</p>
					  <p>담당자: 홍길동</p>
					  <p>연락처: 010-1234-5678</p>
					</div>
					<div class="company-info">
					  <h3>회사 B</h3>
					  <p>산업: 금융</p>
					  <p>위치: 서울시 중구</p>
					  <p>담당자: 이영희</p>
					  <p>연락처: 010-9876-5432</p>
					</div>
					<!-- 추가 회사 정보 박스들 -->
				  </div>
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