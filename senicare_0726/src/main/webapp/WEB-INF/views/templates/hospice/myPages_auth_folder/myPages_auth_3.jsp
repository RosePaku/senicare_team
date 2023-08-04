<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!-- 마이 페이지 내가 쓴 글 페이지 2023.07.31 시작 (영섭) -->
<!-- 마이 페이지 내가 쓴 글 페이지 2023.08.01 완료 (영섭) -->

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>내 정보_내가 쓴 글</title>
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
<link rel="stylesheet" href="../css/kge_mypage1.css">
</head>
<body>

	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp"%>
	<!--================Header Menu Area =================-->

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<h1 class="header">내가 쓴 글</h1>
						</header>
					</div>

				</section>

				<!-- Section -->
				<section>
					<head>
<!-- <title>내가 쓴 글 확인/삭제 페이지</title>
<link rel="stylesheet" type="../text/css" href="kge_mypage1.css"> -->
					</head>
					<body>
						<h2 class="infotext">* 제목을 누르시면 작성한 게시글로 이동합니다 *</h2>
						<div class="table-container">
							<script>
							function checkAll() {
								if ($("#deleteChks").is(":checked")) {
									$("input[name=deleteChk]").prop("checked", true);
								} else {
									$("input[name=deleteChk]").prop("checked", false);
								}
							}
						</script>


							<table>
								<thead>
									<tr class="tblhead">
										<th style="width: 10%;">번호</th>
										<th style="width: 40%;">제목</th>
										<th style="width: 20%;">작성 날짜</th>
										<th style="width: 12%;">조회수</th>
										<th style="width: 13%;">삭제</th>
									</tr>
								</thead>
								<tbody class="tblbody">
									<c:forEach var="board" items="${list}" varStatus="status">
										<tr id="${board.board_no}">
											<td>${fn:length(list)-status.index}</td>
											<c:if test="${board.board_category == 'free'}">
												<td><a href="/madangs_folder/madang_1_2?bno=${board.board_no}">${board.board_title}</a></td>
											</c:if>
											<c:if test="${board.board_category == 'hobby'}">
												<td><a href="/madangs_folder/madang_2_2?bno=${board.board_no}">${board.board_title}</a></td>
											</c:if>
											<c:if test="${board.board_category == 'wel'}">
												<td><a href="/madangs_folder/madang_3_2?bno=${board.board_no}">${board.board_title}</a></td>
											</c:if>
											<c:if test="${board.board_category == 'edu'}">
												<td><a href="/madangs_folder/madang_4_2?bno=${board.board_no}">${board.board_title}</a></td>
											</c:if>
											<td>${board.board_created}</td>
											<td>${board.board_view}</td>
											<td><button onclick="deleteBtn(${board.board_no})">삭제</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</body>
				</section>

				<script>
						function deleteBtn(bno) {
							if (confirm("해당 글을 삭제하시겠습니까?")) {
								$.ajax({
									url:"/myPages_auth_folder/myPages_auth_3",
									type:"post",
									data: {"bno":bno},
								success: function(data) {
									
									$("#"+bno).remove(); // ???
									
									alert("게시글이 삭제되었습니다.");
								},
								error: function() {
									alert("실패");
								}
									
								});
							}
							
						}
						
						</script>


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
						<li>
							<a href="../myPages_auth_folder/myPages_auth_1?auth_id=${sessionScope.id}">회원정보 수정</a>
						</li>
						<li>
							<a href="../myPages_auth_folder/myPages_auth_2?auth_id=${sessionScope.id}">지원자 정보 수정</a>
						</li>
						<li>
							<a href="../myPages_auth_folder/myPages_auth_3?auth_id=${sessionScope.id}">내가 쓴 글</a>
						</li>
						<li>
							<a href="../myPages_auth_folder/myPages_auth_4?auth_id=${sessionScope.id}">면접(채팅)</a>
						</li>
						<li>
							<a href="../myPages_auth_folder/myPages_auth_5?auth_id=${sessionScope.id}">내가 지원한 회사</a>
						</li>
						<!-- <li><a href="../myPages_auth_folder/myPages_auth_6">자가테스트 기록</a></li> -->
						<li>
							<a href="../myPages_auth_folder/myPages_auth_7?auth_id=${sessionScope.id}">회원탈퇴</a>
						</li>
						<li></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp"%>
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