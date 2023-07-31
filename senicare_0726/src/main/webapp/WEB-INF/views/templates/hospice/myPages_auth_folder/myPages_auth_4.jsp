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
		<title>내 정보_내가 쓴 글</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/personal.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
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
	<link rel="stylesheet" href="../css/responsive.css">
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
			background-color: #f6f6f6;
		}
		.container {
			display: flex;
			/* height: 100vh; */
		}
		.left-side, .right-side {
			padding: 1em;
			overflow-y: auto;
		}
		.left-side {
			flex: 1;
			border-right: 1px solid #ddd;
		}
		.right-side {
			flex: 2;
		}
		.message-box {
			border: 1px solid #ddd;
			margin: 1em 0;
			padding: 1em;
			border-radius: 5px;
			background-color: #fff;
		}
		.message-box h2 {
			margin: 0;
		}
		.message-box p {
			color: #777;
		}
		.message {
			padding: 1em;
			border-bottom: 1px solid #ddd;
			background-color: #fff;
			height: 500px;
		}
		.message .sender {
			font-weight: bold;
		}
		.message .time {
			color: #777;
			font-size: 0.8em;
		}
		.message .text {
			margin-top: 0.5em;
		}
		.message-composer textarea {
			width: 80%;
			padding: 1em;
			border: 1px solid #ddd;
			border-radius: 5px;
			resize: none;
			margin-left: 10%;
		margin-top: 1%;
		}
		.message-composer button {
			display: block;
			width: 100%;
			padding: 1em;
			background-color: #007bff;
			color: #fff;
			border: none;
			border-radius: 5px;
			margin-top: 1em;
			cursor: pointer;
		}
		.myPage_2_2_div{
			display: flex;
		}
		.myPage_2_2_p{
			margin-left: 60%;
		}
	
		.myPage_2_2_job2{
			border: 1px solid #000;
		}
	 
		</style>
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
							<section id="banner">
								<div class="content">
									<header>
										<h1 style="font-size: 100px; font-family: 'Nanum Gothin', sans-serif; margin-bottom: -50px;">면접 (채팅)</h1>											
									</header>							
								</div>
								
							</section>

							<!-- Section -->
	
								  <!--  -->
								  <section>

									<div class="container">
										<div class="left-side">
											<div class="message-box">
												<div class="myPage_2_2_div"><h2>회원명</h2><p class="myPage_2_2_p">날짜</p></div>
												<p>마지막 대화 내용...</p>
											</div>
										</div>
										<div class="right-side">
											<div class="myPage_2_2_job2"> 
											<div class="message">
												<div class="sender">회원</div>
												<div class="time">10:12</div>
												<div class="text">지원했습니다.</div>
											</div>
											<div class="message-composer">
												<textarea placeholder="메시지 작성"></textarea>
												<button>보내기</button>
												
											</div>
										</div>
										</div>
									</div>
								  </section>
								  
								  <!--  -->
						
						<!-- Sidebar -->
						<div id="sidebar"></div>
			

						</div>
					</div>
					

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							
							<!-- Menu -->
							<nav id="menu">							
								<ul>
									<li></li>
									<li><a href="../myPages_auth_folder/myPages_auth_1">회원정보 수정</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_2">지원자 정보 수정</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_3">내가 쓴 글</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_4">면접(채팅)</a></li>
									<li><a href="../myPages_auth_folder/myPages_auth_5">내가 지원한 회사</a></li>
									<!-- <li><a href="../myPages_auth_folder/myPages_auth_6">자가테스트 기록</a></li> -->
									<li><a href="../myPages_auth_folder/myPages_auth_7">회원탈퇴</a></li>
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

	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/page_jiin.js"></script>
	<script src="../js/myPage_auth_goeun.js"></script>
	<script src="../js/custom.js"></script>
	<script src="../js/page_jiin_header_footer.js"></script>
	<script src="../js/"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>



	</body>
</html>