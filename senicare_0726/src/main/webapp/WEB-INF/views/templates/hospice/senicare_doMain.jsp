<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 
	설명 : 메인 페이지 
-->
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/kge.css">
	<link rel="stylesheet" href="../css/responsive.css">
</head>

<body>



<!--================Header Menu Area =================-->
<%@ include file="../senicare_main_header.jsp" %>
<!--================Header Menu Area =================-->

	<!--================ Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content row">
					<div class="col-lg-12" id="col-lg-12-id">						
						<a class="main_btn mr-10 btn_width1" href="../searchHoss_folder/searchHos_1.jsp">내 주변<br>의료기관<br>찾기</a>
					</div>
					<div class="col-lg-13" id="col-lg-13-id">						
						<a class="main_btn mr-10 btn_width2" href="../madangs_folder/madang_1_1.jsp">참여ㆍ<br>정보마당</a>
					</div>
					<div class="col-lg-14" id="col-lg-14-id">						
						<a class="main_btn mr-10 btn_width3" href="../jobs_folder/job_1.jsp">구인ㆍ구직<br>게시판</a>
					</div>
					<div class="col-lg-15" id="col-lg-15-id">						
						<a class="main_btn mr-10 btn_width4" href="../healths_folder/health_1.jsp">나의<br>건강 정보</a>
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->

	<!--================ Procedure Category Area =================-->
	<!-- <section class="procedure_category section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>공지사항</h1>
					
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					
					<div class="categories_post">
						
						<img src="img/procedure/p1.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../../../../../resources/static/single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>

				
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="img/procedure/p2.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../../../../../resources/static/single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-4">
					<div class="categories_post">
						<img src="img/procedure/p3.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../../../../../resources/static/single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>

				


			</div>
		</div>
	</section> -->
	<!--================ End Procedure Category Area =================-->

	

	<!--================ footer Area =================-->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!--================ footer Area =================-->



	<!--================ Optional JavaScript =================-->
	<!--================ jQuery first, then Popper.js, then Bootstrap JS =================-->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<script src="../js/page_jiin_header_footer.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

</body>

</html>