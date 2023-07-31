<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>내 정보_내가 지원한 회사</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
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
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style_DH2.css">
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/responsive.css">
	<link rel="stylesheet" href="../assets/css/personal.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="../css/kge_mypage1.css">
	
	<link href="../favicon.ico?ver=2" rel="favicon">
	</head>
	<body>

	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Banner -->
		

							<!-- Section -->
							<section>
								<head>
									<title>내가 지원한 회사 확인/지원취소 페이지</title>	
																	
									
								  </head>
								  <body>
									<h1 style="font-size: 60px; font-family: 'Nanum Gothin', sans-serif; font-weight: 500; margin-top: -30px; margin-bottom: 70px;">내가 지원한 회사</h1>
									<h2 style="color: gray; text-align: center; font-family: 'Nanum Gothic';"> * 채용정보를 누르시면 채용공고 내용을 확인할 수 있습니다 *</h2>
									<div class="table-container">
										<table>
										  <thead>
											<tr style="height: 60px; vertical-align: middle; font-size: 30px; margin-top: 100px;">
											  <th style="width:50%;">채용정보</th>
											  <th style="width:20%;">날짜</th>
											  <th style="width:12%;">열람확인</th>
											  <th style="width:13%;">지원취소</th>
											</tr>
										  </thead>
										  <tbody style="height: 40px; vertical-align: middle; font-size: 20px; margin-top: 100px;">
											<!-- 이 부분은 실제 데이터를 받아와서 동적으로 생성될 예정입니다. -->
										  </tbody>
										</table>
									  </div>
														
								  </body>
								  </section>
						
						<!-- Sidebar -->
						<div id="sidebar"></div>
			
					<!-- Scripts -->
					<script src="../assets/js/jquery.min.js"></script>
					<script src="../assets/js/skel.min.js"></script>
					<script src="../assets/js/util.js"></script>
					<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
					<script src="../assets/js/main.js"></script>							

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							
							<!-- Menu -->
							<nav id="menu">							
								<ul>
									<li></li>
									<li><a href="../myPages_auth_folder/myPages_auth_1?auth_id=${sessionScope.id}">회원정보 수정</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_2?auth_id=${sessionScope.id}">지원자 정보 수정</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_3?auth_id=${sessionScope.id}">내가 쓴 글</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_4?auth_id=${sessionScope.id}">면접(채팅)</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_5?auth_id=${sessionScope.id}">내가 지원한 회사</a></li>
									<!-- <li><a href="../myPages_auth_folder/myPages_auth_6">자가테스트 기록</a></li> -->
									<li><a href="../myPages_auth_folder/myPages_auth_7?auth_id=${sessionScope.id}">회원탈퇴</a></li>
									<li></li>
								</ul>
							</nav>
						</div>
					</div>
			</div>

<!-- start footer Area -->
<%@ include file="../senicare_main_footer.jsp" %>
<!-- End footer Area -->



<!-- 스크립트 라이브러리 -->
<!-- Scripts -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/skel.min.js"></script>
<script src="../assets/js/util.js"></script>
<!--[if lte IE 8]><script src="/assets/js/ie/respond.min.js"></script><![endif]-->
<script src="../assets/js/main.js"></script>

<!-- 스크립트 라인 -->
<script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>


<!-- <script type="text/javascript" src="../../../static/js/page_jiin_info.js"></script> -->
<!-- 스크립트 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="../text/javascript" src="../js/page_jiin_info_VOL.js"></script>
<script type="../text/javascript" src="../js/page_jiin.js"></script>
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

<!-- 스크립트 라인 -->

	</body>
</html>