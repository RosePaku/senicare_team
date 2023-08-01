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
	<!-- <link rel="stylesheet" href="/css/style.css"> -->
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/responsive.css">


	<style>

		</style>
		

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
					<h2>일자리 네트워크</h2>
					<div class="page_link">
						<a href="/">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="../jobs_folder/job_2">클릭하시면 [ 일자리 네트워크 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>

		<!--================End Banner Area =================-->

		<!-- Start Offered Services Area -->
		<div class="sub-con workList">
			<div id="listDiv" style="display:block;">
				<div class="intro-badge">
					<span>노인일자리 제공 사이트 </span>
				</div>
				<div class="board-list">

					<ul id="rsList02" class="board-list-item-job logo-list">
						<li>
							<div class="info">
								<a href="https://www.goldenjob.or.kr/job/find-person.asp" role="button" aria-expanded="false" aria-haspopup="true" aria-controls="layer-logo01" id="layer_open2">
									<div class="work-logo-job-2"><img src="../img/logo_link01.jpg" alt="서울시어르신취업지원센터 로고">
									</div>
									<h3 href="" class="font-weight-bold" style="text-align: center; padding-top: 10px">서울특별시 서울시어르신취업지원센터에서 운영하고 있는 <br>노인일자리 관련 구인 정보를 더 확인 할 수
										있습니다.</h3></div>
									<div class="icon-home">
										<div class="icon-box c-blue"><img src="../img/link_more-work.png" alt=""><strong>바로가기</strong></div>
									</div>
								</a>
							</div>
						</li>
					</ul>

					<ul id="rsList02" class="board-list-item-job logo-list">
						<li>
							<div class="info">
								<a href="https://www.work.go.kr/senior/empSrch/empSrchList.do" role="button" aria-expanded="false" aria-haspopup="true" aria-controls="layer-logo01" id="layer_open2">
									<div class="work-logo"><img class="img_job_2" src="../img/logo_link02.png" alt="서울시어르신취업지원센터 로고">
									</div>
									<h3 href="" class="font-weight-bold" style="text-align: center; padding-top: 10px;">서울특별시 서울시어르신취업지원센터에서 운영하고 있는<br> 노인일자리 관련 구인 정보를 더 확인 할 수
										있습니다.</h3></div>
										<div class="icon-home">
											<div class="icon-box c-blue"><img src="../img/link_more-work.png" alt=""><strong>바로가기</strong></div>
										</div>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 상세페이지 없음 -->
			<!-- -----------------contents end------------------ -->
		</div>

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