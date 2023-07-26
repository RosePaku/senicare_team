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
	<title>기업회원 페이지_회원탈퇴</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets_business/css/main.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
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
</head>

<body>
	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

	<!-- Wrapper -->
	<div style="margin-top: 100px;"></div>
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<strong>회원탈퇴</strong>
				</header>

				<body>
					<style>
						label {
							font-size: 27px;
						}

						/* 원하는 글꼴 크기로 변경 */
						input {
							font-size: 20px;
						}

						input[type="radio"]:not(:checked)+label:before {
							border: 1px solid gray;
							border-radius: 50%;
						}
					</style>

<div style="display: flex; margin-top: 40px;">
    <label for="password">비밀번호 확인:</label>
    <div style="display: inline-block; vertical-align: top;">
        <input type="password" style="width: 400px;" id="password" placeholder="비밀번호를 입력하세요">
    </div>
</div>
					<br>
					<br>
					<label for="unregister-reason">회원탈퇴 사유:</label>
					<input type="radio" name="unregister-reason" id="no-service" value="원하는 서비스가 없어서" checked>
					<label for="no-service" style="font-size: 20px; color:black; font-weight: 600;">원하는 서비스가 없어서</label>
					<br>
					<input type="radio" name="unregister-reason" id="no-needs" value="필요가 없어서">
					<label for="no-needs" style="font-size: 20px; color:black; font-weight: 600;">필요가 없어서</label>
					<br>
					<input type="radio" name="unregister-reason" id="found-othersite" value="더 좋은 사이트를 찾아서">
					<label for="found-othersite" style="font-size: 20px; color:black; font-weight: 600;">더 좋은 사이트를
						찾아서</label>
					<br>
					<input type="radio" name="unregister-reason" id="etc" value="기타">
					<label for="etc" style="font-size: 20px; color:black; font-weight: 600;">기타</label>
					<input type="text" style="width: 500px; margin-left: 70px;" id="etc-reason"
						placeholder="기타 사유를 입력하세요 (필수)" required>

					<div style="display: flex; justify-content: center;">
						<button
							style="width:300px; padding: 0px; margin-top: 50px; background-color: #f56a6a; box-shadow: inset 0 0 0 2px #f56a6a; color:white; font-size: 23px;"
							type="button" onclick="withdrawUser()">회원탈퇴</button>
					</div>

				</body>


			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2 style="margin-top: 100px;">Menu</h2>
					</header>
					<ul>
						<li><a href="/myPages_business_folder/myPages_business_1">회원정보 수정</a></li>
						<li><a href="/myPages_business_folder/myPages_business_2_1">채용공고 등록</a></li>
						<li><a href="/myPages_business_folder/myPages_business_3">채용 현황</a></li>
						<li><a href="/myPages_business_folder/myPages_business_4">지원자 현황</a></li>
						<li><a href="/myPages_business_folder/myPages_business_5">채팅(면접)</a></li>
						<li><a href="/myPages_business_folder/myPages_business_6">회원탈퇴</a></li>
					</ul>
				</nav>

				<!-- start footer Area -->
				
				<!-- End footer Area -->

				<!-- Scripts -->
				<script src="../assets_business/js/jquery.min.js"></script>
				<script src="../assets_business/js/skel.min.js"></script>
				<script src="../assets_business/js/util.js"></script>
				<!--[if lte IE 8]><script src="../assets_business/js/ie/respond.min.js"></script><![endif]-->
				<script src="../assets_business/js/main.js"></script>

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
				<script src="../js/page_jiin_header_footer.js"></script>
				<script src="../js/"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

</body>

</html>