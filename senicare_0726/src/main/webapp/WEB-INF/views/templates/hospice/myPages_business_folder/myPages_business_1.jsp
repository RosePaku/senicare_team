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
		<title>기업회원 페이지_회원정보 수정</title>
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
	<!-- <%@ include file="../senicare_main_header.jsp" %> -->
	<!--================Header Menu Area =================-->
		<!-- Wrapper -->
		<div style="margin-top: 100px;"></div>
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<strong>회원정보 수정</strong>
								</header>
								<body>
									<style>label {font-size: 30px;} /* 원하는 글꼴 크기로 변경 */
										   input {font-size: 20px;}
										   input[type="radio"]:not(:checked) + label:before {
											border: 1px solid gray;
											border-radius: 50%;}</style>

									
									<form style="margin-top: 100px;">
									  <label for="username">아이디:</label>
									  <div style="display: inline-block; vertical-align: top;">
									  <input type="text" style="width: 400px;" id="username" value="기존 아이디" readonly></div>
									  <div style="display: inline-block; vertical-align: top; color: red; margin-left: 20px;">* 수정불가 *</div>
									  <br>
									  <br>
									 
									  <label for="name">대표자명:</label>
									  <div style="display: inline-block; vertical-align: top;">
									  <input type="text" style="width:250px;" id="name" value="대표자명" readonly></div>
									  <div style="display: inline-block; vertical-align: top; color: red; margin-left: 20px;">* 수정불가 *</div>
									  <br>
									  <br>
									  <label for="password">비밀번호 변경:</label>
									  <div style="display: inline-block; vertical-align: top;">
									  <input type="password" style="width: 400px;" id="password" placeholder="변경할 비밀번호를 입력하세요">
									  </div>
									  <br>
									  <br>									  
									  <label for="businessname">기업명:</label>
									  <input type="text" style="width:250px;" id="businessname" placeholder="기업명을 입력하세요.">
									  <br>
									  <br>
									  
									<label for="phoneNumber">담당자 번호:</label>										
									<div style="display: flex; align-items: center;">
										<select id="phoneNumber" style="width: 70px;">
										  <option value="010">010</option> <option value="011">011</option>
										  <option value="016">016</option> <option value="017">017</option>
										  <option value="018">018</option> <option value="019">019</option>
										  <option value="02">02</option> <option value="031">031</option>
										  <option value="032">032</option> <option value="033">033</option>
										  <option value="041">041</option> <option value="042">042</option>
										  <option value="043">043</option> <option value="044">044</option>
										  <option value="051">051</option> <option value="052">052</option>
										  <option value="053">053</option> <option value="054">054</option>
										  <option value="055">055</option> <option value="061">061</option>
										  <option value="062">062</option> <option value="063">063</option>
										  <option value="064">064</option>
										</select>
										<h4>-</h4>
										<input type="text" id="phoneNumber2" style="width: 100px;" maxlength="4" placeholder="1234"> <!-- 나머지 두 칸 입력 -->
										<h4>-</h4>
										<input type="text" id="phoneNumber3" style="width: 100px;" maxlength="4" placeholder="5678"> <!-- 나머지 두 칸 입력 -->
									  </div>
									  <br>
									  <br>
									  <label for="email">이메일:</label>
									  <input type="email" style="width:550px;" id="email" placeholder="이메일을 입력하세요">
									  <br>
									  <!-- <br>
									  <label for="address1">기업 주소 (시/도):</label>
									  <input type="text" style="width:650px;" id="address1" placeholder="시/도를 입력하세요">
									  <br>
									  <br>
									  <label for="address2">기업 상세주소 (시/군/구):</label>
									  <input type="text" style="width:650px;" id="address2" placeholder="시/군/구를 입력하세요">
									  <br> -->
									  <br>
									  <div style="display: flex; justify-content: center;">
										<button style="padding: 10; margin-top: 50px; margin-right: 40px; background-color: #f56a6a; box-shadow: inset 0 0 0 2px #f56a6a; color:white; font-size: 20px; font-family: 'Nanum Gothic', sans-serif;" type="button" onclick="updateUserInfo()">취소</button>
										<button style="padding: 10; margin-top: 50px; background-color: #f56a6a; box-shadow: inset 0 0 0 2px #f56a6a; color:white; font-size: 20px; " type="button" onclick="updateUserInfo()">수정완료</button>
									 </div>	
							
								</form>								
								<!-- <script>									
										  // 실제로는 서버와의 통신을 통해 회원 정보를 업데이트하는 로직을 구현해야 합니다.
										  // 여기서는 예시로 입력된 정보를 alert 창으로 보여줍니다.
										alert(`성별: ${genderValue}\n아이디: ${username}\n이메일: ${email}\n이름: ${name}`);
										alert(`생년월일: ${birthYear}년 ${birthMonth}월 ${birthDay}일`);

									</script> -->
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
												<li><a href="/myPages_business_folder/myPages_business_2_1"">채용공고 등록</a></li>
												<li><a href="/myPages_business_folder/myPages_business_3"">채용 현황</a></li>
												<li><a href="/myPages_business_folder/myPages_business_4"">지원자 현황</a></li>
												<li><a href="/myPages_business_folder/myPages_business_5"">채팅(면접)</a></li>
												<li><a href="/myPages_business_folder/myPages_business_6"">회원탈퇴</a></li>
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