<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!-- 
	카테고리 이름 : 내 주변 의료기관 찾기  
-->


<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="../img/favicon.png" type="../image/png">
	<title>Department</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../vendors/linericon/style.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
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
					<h2>Procedure Category</h2>
					<div class="page_link">
						<a href="../index.jsp">Home</a>
						<a href="../departments.jsp">Departments</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!--================ Procedure Category Area =================-->
	<section class="procedure_category section_gap_custom">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>Procedure Category</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 mb-30">
					<div class="categories_post">
						<img src="../img/procedure/p1.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-30">
					<div class="categories_post">
						<img src="../img/procedure/p2.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-30">
					<div class="categories_post">
						<img src="../img/procedure/p3.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="../img/procedure/p1.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-30">
					<div class="categories_post">
						<img src="../img/procedure/p2.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-30">
					<div class="categories_post">
						<img src="../img/procedure/p3.jpg" alt="Procedure">
						<div class="categories_details">
							<div class="categories_text">
								<div class="border_line"></div>
								<a href="../single-blog.jsp">
									<h5>Emergency Treatment</h5>
								</a>
								<div class="border_line"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Procedure Category Area =================-->

	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
</body>

</html>