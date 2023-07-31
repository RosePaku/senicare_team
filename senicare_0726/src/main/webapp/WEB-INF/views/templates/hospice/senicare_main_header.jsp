<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--
	헤더 푸터 작업 완료
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
	
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/vendors/linericon/style.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="/vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="/css/responsive.css">

</head>

<body>
	<!-- <script>
		$(document).ready(function () {
			$.ajax({
				url: "/api/checkLoginStatus", // 서버에 로그인 상태 확인하는 API 엔드포인트
				type: "GET",
				dataType: "json",
				success: function (data) {
					if (data.isLoggedIn) {
						// 로그인한 경우
						if (data.isCompanyMember) {
							// 기업회원인 경우
							$("#companyMenu").show(); // 기업회원 메뉴 보이기
						} else {
							// 개인회원인 경우
							$("#userMenu").show(); // 개인회원 메뉴 보이기
						}
						$("#loginLink").hide(); // 로그인 링크 감추기
						$("#signupLink").hide(); // 회원가입 링크 감추기
					} else {
						// 로그인하지 않은 경우
						$("#loginLink").show(); // 로그인 링크 보이기
						$("#signupLink").show(); // 회원가입 링크 보이기
						$("#userMenu").hide(); // 개인회원 메뉴 감추기
						$("#companyMenu").hide(); // 기업회원 메뉴 감추기
					}
				},
				error: function () {
					console.log("로그인 상태 확인에 실패했습니다.");
				}
			});
		});
	</script> -->


	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container">
				<div class="float-left">
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<div id="loginLink">
								<c:if test="${sessionScope.login==null}">
								<a href="../members_folder/member_2">로그인</a>
							</c:if>
							</div>
						</li>
						<li>
							<div id="loginLink">
								<c:if test="${sessionScope.login==null}">
								<a href="../members_folder/member_2">아이디/비밀번호 찾기</a>
							</c:if>
							</div>
						</li>
						<li>
						
						<!-- 조건에 따라 개인회원 메뉴 표시 -->
						<!-- 세션에 id값 저장해서 하는게 정답 -->
						<c:if test="${sessionScope.id!=null}">	
						<div id="userMenu">
							<!-- 개인회원 메뉴 -->
								<a href="/logout" style="padding-right: 100px;">로그아웃</a>
								<a href="../myPages_auth_folder/myPages_auth_1?auth_id=${sessionScope.id}">개인회원 마이페이지</a>
							</div>
						</c:if>
						</li>
						<li>
							<div id="signupLink">
								<c:if test="${sessionScope.login==null}">	
								<a href="../members_folder/member_1">회원가입</a>
								</c:if>
							</div>
						</li>
						<li>
							<div id="companyMenu">
								<!-- 기업회원 메뉴 -->
								<c:if test="${sessionScope.a_bid!=null}">	
								<a href="/logout">로그아웃</a>
								<a href="../myPages_business_folder/myPages_business_1">기업회원 마이페이지</a>
							</c:if>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="../">
						<img class ="logo-h" src="../img/logo.png" alt="">
					</a>
					 
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					 aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<div class="row ml-0 w-100">
							<div class="col-lg-12 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item active">
										<a class="nav-link" href="../">처음으로</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="../searchHoss_folder/searchHos_1">내 주변 의료기관 찾기</a>
									</li>
		
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">참여 · 정보 마당</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="../madangs_folder/madang_1_1">자유 / 일상 게시판</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../madangs_folder/madang_2_1">취미 / 친목 게시판</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../madangs_folder/madang_3_1">복지 혜택 안내</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../madangs_folder/madang_4_1">디지털 교육 안내</a>
											</li>
										</ul>
									</li>

									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">시니어 구인 · 구직 게시판</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="../jobs_folder/job_1">바로 구직</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../jobs_folder/job_2">일자리 네트워크</a>
											</li>
										</ul>
									</li>

									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">나의 건강 정보</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="../healths_folder/health_1">자가 진단 검사</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../healths_folder/health_2?auth_id=${sessionScope.id}">자가 진단 검사 결과</a>
											</li>
										</ul>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-oNgnJLlT2eWuJ0UH5o+TUTk7zjzRqyGm4eI1JspV2oY=" crossorigin="anonymous"></script>

	</body>



</html>