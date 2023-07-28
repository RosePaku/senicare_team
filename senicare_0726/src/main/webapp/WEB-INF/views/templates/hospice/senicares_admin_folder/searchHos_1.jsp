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
	 <link rel="stylesheet" href="../css/style.css">
	 <link rel="stylesheet" href="../css/responsive.css">
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
					 <h2>내 주변 의료기관 찾기</h2>
					 <div class="page_link">
						 <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						 <a href="../searchHoss_folder/searchHos_1.jsp">클릭하시면 [ 내 주변 의료기관 찾기 ] 페이지를 새로 고침합니다.</a>
					 </div>
				 </div>
			 </div>
		 </div>
	 </section>
	 <!--================End Banner Area =================-->
 
	 <!-- Start Offered Services Area -->
	 
	 <!-- 하단 영역 -->
	 <section class="service_area section_gap">
		 <div class="container">
			 <div class="row justify-content-center section-title-wrap">
				 <div class="col-lg-12">
					 <h1>게시판</h1>
					 <p>
						 게시판 영역
					 </p>
				 </div>
			 </div>
 
			 <!-- <div class="row">
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-rocket"></span>
						 <a href="#">
							 <h4>24/7 Emergency</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-heart-pulse"></span>
						 <a href="#">
							 <h4>Expert Consultation</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-bug"></span>
						 <a href="#">
							 <h4>Intensive Care</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-users"></span>
						 <a href="#">
							 <h4>Family Planning</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-rocket"></span>
						 <a href="#">
							 <h4>24/7 Emergency</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-heart-pulse"></span>
						 <a href="#">
							 <h4>Expert Consultation</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-bug"></span>
						 <a href="#">
							 <h4>Intensive Care</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-users"></span>
						 <a href="#">
							 <h4>Family Planning</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
			 </div>
		 </div> -->
	 </section>
	 <!-- End Offered Services Area -->
 
	 <!-- start footer Area -->
	 <%@ include file="../senicare_main_footer.jsp" %>
	 <!-- End footer Area -->
 
 
 
	 <!-- Optional JavaScript -->
	 <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	 <script src="../js/page_jiin_header_footer.js"></script>
	 <script src="../js/jquery-3.2.1.min.js"></script>
	 <script src="../js/popper.js"></script>
	 <script src="../js/bootstrap.min.js"></script>
	 <script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	 <script src="../vendors/isotope/isotope-min.js"></script>
	 <script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	 <script src="../js/jquery.ajaxchimp.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	 <script src="../js/mail-script.js"></script>
	 <script src="../js/custom.js"></script>
	 <script src="../js/"></script>
 </body>
 
 </html>