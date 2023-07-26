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
  
	 <script>
  
		 window.addEventListener('load', function() {
			 var allElements = document.getElementsByTagName('*');
			 Array.prototype.forEach.call(allElements, function(el) {
				 var includePath = el.dataset.includePath;
				 if (includePath) {
					 var xhttp = new XMLHttpRequest();
					 xhttp.onreadystatechange = function () {
						 if (this.readyState == 4 && this.status == 200) {
							 el.outerHTML = this.responseText;
						 }
					 };
					 xhttp.open('GET', includePath, true);
					 xhttp.send();
				 }
			 });
		 });
  
	 </script>
	 <!--================Header Menu Area =================-->
 
	 <!--================ Banner Area =================-->
	 <section class="banner_area">
		 <div class="banner_inner d-flex align-items-center">
			 <div class="container">
				 <div class="banner_content text-left">
					 <h2>일자리 네트워크</h2>
					 <div class="page_link">
						 <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						 <a href="job_2.jsp">클릭하시면 [ 일자리 네트워크 ] 페이지를 새로 고침합니다.</a>
					 </div>
				 </div>
			 </div>
		 </div>
	 </section>
	 <!--================End Banner Area =================-->
 
		<!--================End Banner Area =================-->

	<!-- Start Offered Services Area -->

<section class="service_area section_gap1">
	<div class="container1">
		<div class="left-area">
			<!-- 메인 페이지 영역 카테고리 메뉴 -->
			<div data-include-path="../jobs_folder/job_list.jsp"></div>
			<!-- 메인 페이지 영역 카테고리 메뉴 -->
		</div>

		<div class="right-area">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>게시판</h1>
					<p>
						게시판 영역
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
	<!-- End Offered Services Area -->

	 <!-- Start footer Area -->
	 <div data-include-path="../senicare_sub_footer"></div>
	 <!-- End footer Area -->
 
	 <!-- start footer Area -->
	 <%@ include file="../senicare_main_footer.jsp" %>
  
	 <script>
  
		 window.addEventListener('load', function() {
			 var allElements = document.getElementsByTagName('*');
			 Array.prototype.forEach.call(allElements, function(el) {
				 var includePath = el.dataset.includePath;
				 if (includePath) {
					 var xhttp = new XMLHttpRequest();
					 xhttp.onreadystatechange = function () {
						 if (this.readyState == 4 && this.status == 200) {
							 el.outerHTML = this.responseText;
						 }
					 };
					 xhttp.open('GET', includePath, true);
					 xhttp.send();
				 }
			 });
		 });
  
	 </script>
	 <!-- End footer Area -->
 
 
 
	 <!-- Optional JavaScript -->
	 <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	 <script src="../js/jquery-3.2.1.min.js"></script>
	 <script src="../js/popper.js"></script>
	 <script src="../js/bootstrap.min.js"></script>
	 <script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	 <script src="../vendors/isotope/isotope-min.js"></script>
	 <script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	 <script src="../js/jquery.ajaxchimp.min.js"></script>
	 <script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	 <script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	 <script src="../js/mail-script.js"></script>
	 <script src="../js/custom.js"></script>
 </body>
 
 </html>