<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 헤더 푸터 작업 완료 -->
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Hospice Medical</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
</head>

<body>



	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container">
				<div class="float-left">
					<!-- <ul class="left_side">
						<li>
							<a href="../login.html">
								<i class="fa fa-facebook-f"></i>
							</a>
						</li>
						<li>
							<a href="../login.html">
								<i class="fa fa-twitter"></i>
							</a>
						</li>
						<li>
							<a href="../login.html">
								<i class="fa fa-dribbble"></i>
							</a>
						</li>
						<li>
							<a href="../login.html">
								<i class="fa fa-behance"></i>
							</a>
						</li>
					</ul> -->
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<a href="../members_folder/member_2.html">
								<!-- <i class="lnr lnr-phone-handset"></i> -->
								로그인
							</a>
						</li>
						<li>
							<a href="../members_folder/member_3.html">
								<!-- <i class="Inr fa-magnifying-glass"></i> -->
								아이디 / 비밀번호 찾기
							</a>
						</li>
						<li>
							<a href="../members_folder/member_1.html">
								<!-- <i class="Inr fa-magnifying-glass"></i> -->
								회원가입
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="../index">
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
										<a class="nav-link" href="../senicare_main.html">처음으로</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="../searchHoss_folder/searchHos_1">내 주변 의료기관 찾기</a>
									</li>
									<!-- <li class="nav-item ">
										<a class="nav-link" href="../departments.html">참여ㆍ정보마당</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="../doctors.html">시니어 구인ㆍ구직 게시판</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="../doctors.html">나의 건강정보</a>
									</li> -->

									<!-- 토글 버튼 -->
									<!-- <li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="../about.html">About</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../services.html">Services</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../elements.html">Elements</a>
											</li>
										</ul>
									</li> -->
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
												<a class="nav-link" href="../jobs_folder/job_1.html">바로 구직</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../jobs_folder/job_2.html">일자리 네트워크</a>
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
												<a class="nav-link" href="../healths_folder/health_2?auth_id=${sessionId}">자가 진단 검사 결과</a>
											</li>
										</ul>
									</li>
									<!-- <li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="../blog.html">Blog</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="../single-blog.html">Blog Details</a>
											</li>
										</ul>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="../contact.html">Contact</a>
									</li> -->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->
	</body>
</html>