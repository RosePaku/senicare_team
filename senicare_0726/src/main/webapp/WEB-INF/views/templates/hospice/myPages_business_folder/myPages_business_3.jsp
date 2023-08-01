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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
	<style>
		     body {
            font-family: Arial, sans-serif;
        }
        #header {
            background-color: #f8f9fa;
            padding: 10px;
            margin-top: 200px;
            text-align: center;
        }
        .table-wrapper {
            width: 100%;
            overflow: auto; /* 테이블이 너무 길어질 경우 스크롤바 생성 */
        }
        table {
            width: 100%;
            border-collapse: collapse; /* 테이블 셀 사이의 여백 제거 */
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        button {
            padding: 5px 10px;
            margin-right: 5px;
            border: none;
            cursor: pointer;
        }
        button:hover {
            opacity: 0.8;
        }
	</style>
	</head>
	<body>

	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->
		<!-- Wrapper -->
		<div style="margin-top: 100px;"></div>
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<strong>채용 공고 현황</strong>
								</header>
								<!--  -->
								<!-- 값 넘겨주기 -->
								<!-- <input type="hidden" name="auth_business_id" id="auth_business_id" value="samsung"/> -->
								
								<!-- 여기에 테이블 형태로 채용공고 등록한 것을 상세 조회 및 수정 및 삭제할 수 있음 테이블 형태로 --> 
								<!-- 기본적으로 나오는 정보는 기업 입장에서 궁금한 정보들을 넣을거임  -->
								<div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th scope="col">채용공고 ID</th>
												<th scope="col">직종</th>
												<th scope="col">지역</th>
												<!-- <th scope="col">채용 인원</th> -->
												<th scope="col">마감일</th>
												<th scope="col">게시일</th>
												<!-- <th scope="col">상태</th> -->
												<th scope="col">조회수</th>
												<th scope="col">지원자 수</th>
												<th scope="col">작업</th>
											</tr>
										</thead>
										
										<tbody>
											<tr>
												<td>${A_B_NoticeList.get(0).auth_Business_Wn}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_Po}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_W_Si} ${A_B_NoticeList.get(0).auth_Business_W_Gu}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_Em_Cl}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_Dc}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_Hit}</td>
												<td>${A_B_NoticeList.get(0).auth_Business_Vol}</td>
												
												<td>
													<button type="button" onclick="viewPost('#001')" class="inp_join BtnType SizeL defalt ga_data_layer submit_btn">상세 조회</button>
													<button type="button" onclick="editPost('#001')" class="inp_join BtnType SizeL defalt ga_data_layer submit_btn">수정</button>
													<!-- <form action="/myPages_business_folder/myPages_business_3/delate" method="post"> -->
														<input type="hidden" name="auth_business_id" id="auth_business_id" value="${A_B_NoticeList.get(0).auth_business_id}">
													<button type="submit" class="inp_join BtnType SizeL defalt ga_data_layer submit_btn">삭제</button>
												<!-- </form> -->
												</td>
											</tr>
										</tbody>
									
									</table>
								</div>

								<form action="/myPages_business_folder/myPages_business_3/delate" method="post">
									<input type="hidden" name="auth_business_id" id="auth_business_id" value="${A_B_NoticeList.get(0).auth_business_id}">
								<button type="submit" class="inp_join BtnType SizeL defalt ga_data_layer submit_btn" style="margin-left: 50%;">전부 삭제</button>
							</form>

								<!--  -->


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
												<li><a href="/myPages_business_folder/myPages_business_2_1">채용공고 등록</a></li>
												<li><a href="/myPages_business_folder/myPages_business_3">채용 현황</a></li>
												<li><a href="/myPages_business_folder/myPages_business_4">지원자 현황</a></li>
												<li><a href="/myPages_business_folder/myPages_business_5">채팅(면접)</a></li>
												<li><a href="/myPages_business_folder/myPages_business_6">회원탈퇴</a></li>
											</ul>									
								</nav>		

								

		<!-- start footer Area -->
		<!-- End footer Area -->
			

		<!-- Scripts -->
			<script src="../assets_business/js/myPage_business_3.js"></script>
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

	<!-- 스크립트 라인 -->
    <script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
    <script type="../text/javascript" src="../js/page_jiin_info.js"></script>
    <script type="../text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
    <!-- 스크립트 라인 -->

	</body>
	
</html>