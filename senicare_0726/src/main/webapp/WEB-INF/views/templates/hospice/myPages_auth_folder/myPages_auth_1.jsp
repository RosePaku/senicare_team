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
	<title>내 정보_회원정보 수정</title>
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
</head>

<body>

	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

	<!-- Wrapper -->
	<div id="wrapper" >

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<h1
								style="font-size: 100px; font-family: 'Nanum Gothin', sans-serif; margin-bottom: -50px;">
								내 정보</h1>
						</header>
					</div>

				</section>

				<!-- Section -->
				<section>

					<head>
						<title>회원정보 수정 페이지</title>

						<link rel="stylesheet" type="../text/css" href="kge_mypage1.css">
					</head>

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

						<h1
							style="font-size: 60px; font-family: 'Nanum Gothin', sans-serif; font-weight: 500; margin-top: -30px; margin-bottom: 70px;">
							회원정보 수정</h1>
						<form>
							<label for="username">아이디:</label>
							<div style="display: inline-block; vertical-align: top;">
								<input type="text" style="width: 400px;" id="username" value="기존 아이디" readonly>
							</div>
							<div style="display: inline-block; vertical-align: top; color: red; margin-left: 20px;">*
								수정불가 *</div>
							<br>
							<br>

							<label for="name">이름:</label>
							<div style="display: inline-block; vertical-align: top;">
								<input type="text" style="width:250px;" id="name" value="이름" readonly>
							</div>
							<div style="display: inline-block; vertical-align: top; color: red; margin-left: 20px;">*
								수정불가 *</div>
							<br>
							<br>
							<label for="password">비밀번호 변경:</label>
							<div style="display: inline-block; vertical-align: top;">
								<input type="password" style="width: 400px;" id="password"
									placeholder="변경할 비밀번호를 입력하세요">
							</div>
							<br>
							<br>
							<label for="gender-male">성별:</label>
							<input type="radio" name="gender" id="gender-male" value="남" checked>
							<label for="gender-male">남</label>
							<input type="radio" name="gender" id="gender-female" value="여">
							<label for="gender-female">여</label>
							<br>
							<br>
							<label for="nickname">닉네임:</label>
							<input type="text" style="width:250px;" id="nickname" placeholder="닉네임을 입력하세요.">
							<br>
							<br>
							<label for=birthday>생년월일</label>
							<div class="dropdown-container">
								<select id="birthYear" style="width:100px;">
									<option syle="width:30px;" value="">연도</option>
									<!-- 1923년부터 2022년까지 드롭다운으로 선택할 수 있도록 옵션을 추가합니다. -->
									<!-- 해당 범위는 자바스크립트를 사용하여 동적으로 생성할 수도 있습니다. -->
									<option value="1923">1923년</option>
									<option value="1924">1924년</option>
									<option value="1925">1925년</option> <!-- 중략 -->
									<option value="1926">1926년</option>
									<option value="1927">1927년</option>
									<option value="1928">1928년</option>
									<option value="1929">1929년</option>
									<option value="1930">1930년</option>
									<option value="1931">1931년</option>
									<option value="1932">1932년</option>
									<option value="1933">1933년</option>
									<option value="1934">1934년</option> <!-- 중략 -->
									<option value="1935">1935년</option>
									<option value="1936">1936년</option>
									<option value="1937">1937년</option>
									<option value="1938">1938년</option>
									<option value="1939">1939년</option>
									<option value="1940">1940년</option>
									<option value="1941">1941년</option>
									<option value="1942">1942년</option>
									<option value="1943">1943년</option> <!-- 중략 -->
									<option value="1944">1944년</option>
									<option value="1945">1945년</option>
									<option value="1946">1946년</option>
									<option value="1947">1947년</option>
									<option value="1948">1948년</option>
									<option value="1949">1949년</option> <!-- 중략 -->
									<option value="1950">1950년</option>
									<option value="1951">1951년</option>
									<option value="1952">1952년</option> <!-- 중략 -->
									<option value="1953">1953년</option>
									<option value="1954">1954년</option>
									<option value="1955">1955년</option>
									<option value="1956">1956년</option>
									<option value="1957">1957년</option>
									<option value="1958">1958년</option>
									<option value="1959">1959년</option>
									<option value="1960">1960년</option>
									<option value="1961">1961년</option> <!-- 중략 -->
									<option value="1962">1962년</option>
									<option value="1963">1963년</option>
									<option value="1964">1964년</option>
									<option value="1965">1965년</option>
									<option value="1966">1966년</option>
									<option value="1967">1967년</option> <!-- 중략 -->
									<option value="1968">1968년</option>
									<option value="1969">1969년</option>
									<option value="1970">1970년</option> <!-- 중략 -->
									<option value="1971">1971년</option>
									<option value="1972">1972년</option>
									<option value="1973">1973년</option>
									<option value="1974">1974년</option>
									<option value="1975">1975년</option>
									<option value="1976">1976년</option>
									<option value="1977">1977년</option>
									<option value="1978">1978년</option>
									<option value="1979">1979년</option> <!-- 중략 -->
									<option value="1980">1980년</option>
									<option value="1981">1981년</option>
									<option value="1982">1982년</option>
									<option value="1983">1983년</option>
									<option value="1984">1984년</option>
									<option value="1985">1985년</option>
									<option value="1986">1986년</option>
									<option value="1987">1987년</option>
									<option value="1988">1988년</option>
									<option value="1989">1989년</option>
									<option value="1990">1990년</option>
									<option value="1991">1991년</option>
									<option value="1992">1992년</option>
									<option value="1993">1993년</option>
									<option value="1994">1994년</option>
									<option value="1995">1995년</option>
									<option value="1996">1996년</option>
									<option value="1997">1997년</option>
									<option value="1998">1998년</option>
									<option value="1999">1999년</option>
									<option value="2000">2000년</option>
								</select>
								<label for="birthYear"
									style="margin-bottom: 3px; margin-left: -7px; margin-right: 20px; font-size: 18px;">년</label>

								<select id="birthMonth" style="width:70px;">
									<option value="">월</option>
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
								<label for="birthMonth"
									style="margin-bottom: 3px; margin-left: -7px; margin-right: 20px; font-size: 18px;">월</label>

								<select id="birthDay" style="width:70px;">
									<option value="">일</option>
									<option value="1">1일</option>
									<option value="2">2일</option>
									<option value="3">3일</option>
									<option value="4">4일</option>
									<option value="5">5일</option>
									<option value="6">6일</option>
									<option value="7">7일</option>
									<option value="8">8일</option>
									<option value="9">9일</option>
									<option value="10">10일</option>
									<option value="11">11일</option>
									<option value="12">12일</option>
									<option value="13">13일</option>
									<option value="14">14일</option>
									<option value="15">15일</option>
									<option value="16">16일</option>
									<option value="17">17일</option>
									<option value="18">18일</option>
									<option value="19">19일</option>
									<option value="20">20일</option>
									<option value="21">21일</option>
									<option value="22">22일</option>
									<option value="23">23일</option>
									<option value="24">24일</option>
									<option value="25">25일</option>
									<option value="26">26일</option>
									<option value="27">27일</option>
									<option value="28">28일</option>
									<option value="29">29일</option>
									<option value="30">30일</option>
									<option value="31">31일</option>
								</select>
								<label for="birthDay"
									style="margin-bottom: 3px; margin-left: -7px; margin-right: 20px; font-size: 18px;">일</label>
							</div>
							<br>
							<br>
							<label for="phoneNumber">휴대폰 번호:</label>
							<div style="display: flex; align-items: center;">
								<select id="phoneNumber" style="width: 70px;">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<h4>-</h4>
								<input type="text" id="phoneNumber2" style="width: 100px;" maxlength="4"
									placeholder="1234"> <!-- 나머지 두 칸 입력 -->
								<h4>-</h4>
								<input type="text" id="phoneNumber3" style="width: 100px;" maxlength="4"
									placeholder="5678"> <!-- 나머지 두 칸 입력 -->
							</div>
							<br>
							<br>
							<label for="email">이메일:</label>
							<input type="email" style="width:550px;" id="email" placeholder="이메일을 입력하세요">
							<br>
							<br>
							<label for="address1">주소 (시/도):</label>
							<input type="text" style="width:650px;" id="address1" placeholder="시/도를 입력하세요">
							<br>
							<br>
							<label for="address2">상세주소 (시/군/구):</label>
							<input type="text" style="width:650px;" id="address2" placeholder="시/군/구를 입력하세요">
							<br>
							<br>

							<form>
								<label for="disease">기저질환</label>
								<div style="display: flex; align-items: center;">
									<input type="text" id="disease" style="width:600px; margin-bottom: 5px;"
										placeholder="기저질환이 있다면 입력하세요">
									<button type="button"
										style="margin-left: 20px; margin-bottom: 5px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;"
										onclick="addInput1()" class="add-button1">
										<h1 style="margin: -10px; color:black;">+</h1>
									</button>
								</div>
								<div id="additionalInputs1"></div>
							</form>

							<br>
							<br>

							<form>
								<label for="license">자격증</label>
								<div style="display: flex; align-items: center;">
									<input type="text" id="license" style="width:600px; margin-bottom: 5px;"
										placeholder="자격증이 있다면 입력하세요">
									<button type="button"
										style="margin-left: 20px; margin-bottom: 5px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;"
										onclick="addInput2()" class="add-button2">
										<h1 style="margin: -10px; color:black;">+</h1>
									</button>
								</div>
								<div id="additionalInputs2"></div>
							</form>

							<br>
							<br>

							<form>
								<label for="career">경력사항</label>
								<div style="display: flex; align-items: center;">
									<input type="text" id="career" style="width:600px; margin-bottom: 5px;"
										placeholder="경력이 있다면 입력하세요">
									<button type="button"
										style="margin-left: 20px; margin-bottom: 5px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;"
										onclick="addInput3()" class="add-button3">
										<h1 style="margin: -10px; color:black;">+</h1>
									</button>
								</div>
								<div id="additionalInputs3"></div>
							</form>

							<script>

							</script>


							<div style="display: flex; justify-content: center;">
								<button
									style="padding: 10; margin-top: 50px; margin-right: 40px; background-color: #095ff3; box-shadow: inset 0 0 0 2px #095ff3; color:white; font-size: 20px; font-family: 'Nanum Gothic', sans-serif;"
									type="button" onclick="updateUserInfo()">취소</button>
								<button
									style="padding: 10; margin-top: 50px; background-color: #095ff3; box-shadow: inset 0 0 0 2px #095ff3; color:white; font-size: 20px; "
									type="button" onclick="updateUserInfo()">수정완료</button>
							</div>
						</form>

					</body>
				</section>

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
						<li><a href="../myPages_auth_folder/myPages_auth_6">자가테스트 기록</a></li>
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