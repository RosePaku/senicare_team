<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 0712_1934 작업사항
	1) 헤더, 푸터 작업 완료
	
0724 작업사항_고은
	1) jsp 파일로 작업 수정
-->
<!--  불러오기 : job_list 영역 -->
<!doctype html>
<html lang="en">

<head> <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
	<link rel="icon" href="../img/favicon.png" type="../image/png">
	<title>Hospice Medical</title> <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../vendors/linericon/style.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="../vendors/animate-css/animate.css">
	<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css"> <!-- main css -->
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/responsive.css">
</head>

	


<body> <!-- 하단 영역 -->
<div class="menu_list">
	<h3 class="tit"> <strong>참여 · 정보<br>마당</strong></h3>
	<ul class="menu_list_ul">
		<a class="menu_a" href="../madangs_folder/madang_1.jsp"> 자유 / 일상 게시판 </a> 
		<a class="menu_a" href="../madangs_folder/madang_2.jsp"> 취미 / 친목 게시판 </a> 
		<a class="menu_a" href="../madangs_folder/madang_3.jsp"> 복지 혜택 안내 </a> 
		<a class="menu_a" href="../madangs_folder/madang_4.jsp"> 디지털 교육 안내 </a> 
	</ul>
</div>




	<!-- <section class="service_area section_gap"> <div class="container"> <div class="row justify-content-center section-title-wrap"> <div class="col-lg-12"> <h1>게시판</h1> <p> 게시판 영역 </p> </div> </div> </section> -->
	<!-- <div class="row"> <div class="col-lg-3 col-md-6 mb-60"> <div class="single_service"> <span class="lnr lnr-rocket"></span> <a href="#"> <h4>24/7 Emergency</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6 mb-60"> <div class="single_service"> <span class="lnr lnr-heart-pulse"></span> <a href="#"> <h4>Expert Consultation</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6 mb-60"> <div class="single_service"> <span class="lnr lnr-bug"></span> <a href="#"> <h4>Intensive Care</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6 mb-60"> <div class="single_service"> <span class="lnr lnr-users"></span> <a href="#"> <h4>Family Planning</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6"> <div class="single_service"> <span class="lnr lnr-rocket"></span> <a href="#"> <h4>24/7 Emergency</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6"> <div class="single_service"> <span class="lnr lnr-heart-pulse"></span> <a href="#"> <h4>Expert Consultation</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6"> <div class="single_service"> <span class="lnr lnr-bug"></span> <a href="#"> <h4>Intensive Care</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> <div class="col-lg-3 col-md-6"> <div class="single_service"> <span class="lnr lnr-users"></span> <a href="#"> <h4>Family Planning</h4> </a> <p> inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct. </p> </div> </div> </div> </div> -->
	
	<!-- 링크 -->
	<script> window.addEventListener('load', function () { var allElements = document.getElementsByTagName('*'); Array.prototype.forEach.call(allElements, function (el) { var includePath = el.dataset.includePath; if (includePath) { var xhttp = new XMLHttpRequest(); xhttp.onreadystatechange = function () { if (this.readyState == 4 && this.status == 200) { el.outerHTML = this.responseText; } }; xhttp.open('GET', includePath, true); xhttp.send(); } }); }); </script>
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