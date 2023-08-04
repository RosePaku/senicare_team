<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!-- 마이페이지 회원탈퇴 페이지 2023.08.04 시작 (영섭) -->
<!-- 마이페이지 회원탈퇴 페이지 2023.08.04 완료 (영섭) -->

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>내 정보_회원탈퇴</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
		<link rel="stylesheet" href="../css/kge_mypage1.css">
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
										<h1 class="header">회원탈퇴</h1>											
									</header>							
								</div>
								
							</section>

							<!-- Section -->
							<section>
								<head>
									<!-- <title>회원탈퇴 페이지</title>																									
									<link rel="stylesheet" type="../text/css" href="kge_mypage1.css"> -->
								  </head>

								  <body>
									<style>label {font-size: 27px;} /* 원하는 글꼴 크기로 변경 */
									input {font-size: 20px;}
									input[type="radio"]:not(:checked) + label:before {
			   						border: 1px solid gray; border-radius: 50%;} </style>	
									
									<form action="/myPages_auth_folder/myPages_auth_7" name="withdrawFrm" method="post">
									
								      <label for="password">비밀번호 확인:</label>
									  <div style="display: inline-block; vertical-align: top;">
									  <input type="password" style="width: 400px;" id="password" placeholder="비밀번호를 입력하세요">
									  </div>
									  <br>
									  <br>
									  <label for="unregister-reason">회원탈퇴 사유:</label><br>
									  <input type="radio" name="unregister-reason" id="no-service" value="원하는 서비스가 없어서" checked>
									  <label for="no-service" style="font-size: 20px; color:black; font-weight: 600;">원하는 서비스가 없어서</label>	
									  <br>									  
									  <input type="radio" name="unregister-reason" id="no-needs" value="필요가 없어서">
									  <label for="no-needs" style="font-size: 20px; color:black; font-weight: 600;">필요가 없어서</label>	
									  <br>
									  <input type="radio" name="unregister-reason" id="found-othersite" value="더 좋은 사이트를 찾아서">
									  <label for="found-othersite" style="font-size: 20px; color:black; font-weight: 600;">더 좋은 사이트를 찾아서</label>	
									  <br>
									  <input type="radio" name="unregister-reason" id="etc" value="기타" onclick="etcBtn()">
									  <label for="etc" style="font-size: 20px; color:black; font-weight: 600;">기타</label>	
									  <input type="text" style="width: 500px;" id="etc-reason" placeholder="기타 사유를 입력하세요 (필수)" required onclick="etcReason()">

									  <div style="display: flex; justify-content: center;">
										<button class="withdrawUser" type="button" onclick="withdrawUser()">회원탈퇴</button>
									  </div>
									  
									</form>
														
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
					<script>
						function etcReason() {
							$("input:radio[name='unregister-reason']:radio[value='기타']").prop('checked', true); // 선택하기
						}
						
						function etcBtn() {
							$("#etc-reason").focus();
						}
						
						function withdrawUser() {
							if ('${auth.auth_password}' != $("#password").val()) {
								alert("비밀번호가 일치하지 않습니다.");
								return false;
							}
							
							if (confirm("정말로 시니케어 사이트를 영구탈퇴하시겠습니까?")) {
								$.ajax({
									url: "/myPages_auth_folder/myPages_auth_7",
									type: "post",
									data: {"auth_id":"${sessionScope.id}",
										   "reason":$('input:radio[name="unregister-reason"]:checked').val(),
										   "etcReason":$('#etc-reason').val()},
									success: function(data) {
										alert("회원님의 정보가 삭제되었습니다.");
										
										location.href="/"; // 메인페이지로
									},
									error: function() {
										alert("실패");
									}
								});
								
								// 메인으로 돌아가기
							}
						}
					</script>							

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