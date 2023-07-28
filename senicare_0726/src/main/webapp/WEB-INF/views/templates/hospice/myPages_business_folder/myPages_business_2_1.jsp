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
			body1{
				color: slategray;
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
									<strong>채용공고 등록</strong>
								</header>
							
								<!--  -->
								
								<div id="sri_section">
									<div id="sri_wrap">
							
										<div id="join_wrapper" class="join_cont_wrap">
											<div id="member_personal" class="member_cate">
												<form name="frm" id="frm" method="post"
													action="/myPages_business_folder/myPages_business_2_2">
							
													<h3 class="tit_join_member">
														<p>채용 공고 정보 작성P1</p>
													</h3>
													<h5>기업의 정보를 입력합니다.</h5>
													<div class="input_container">
														<div class="left_area">
															<fieldset class="fieldset_class1">
																<div class="cont_division">
							
																	<!-- 필수 입력 항목 -->
																	<div class="write_base">
																		<!-- 아이디 -->
																		<div class="member_center_line">기업 정보 입력 항목 (필수)</div>
							
							
																		<!-- 기업명 -->
																		<div class="item">
																			<label for="company_name"><strong>기업명</strong></label>
																			<div class="TypoBox">
																				<input type="text" name="company_name" id="company_name"
																					class="Typo SizeL defalt" style="ime-mode:active"
																					autocapitalize="off" placeholder="기업명 입력">
																			</div>
																		</div>
							
																		<!-- 직원수 -->
																		<div class="item">
																			<label for="employee_count"><strong>직원수</strong></label>
																			<div class="TypoBox">
																				<select name="employee_count" id="employee_count"
																					class="Typo SizeL defalt">
																					<option value="1-49">1~49명</option>
																					<option value="50-149">50~149명</option>
																					<option value="150-249">150~249명</option>
																					<option value="250-499">250~499명</option>
																					<option value="500+">500명 이상</option>
																				</select>
																			</div>
																		</div>
							
																		<!-- 근무지 - 시 선택 -->
																		<div class="item">
																			<label for="work_location_city"><strong>근무지 - 시</strong></label>
																			<div class="TypoBox">
																				<select name="work_location_city" id="work_location_city"
																					class="Typo SizeL defalt" onchange="selectCity()">
																					<option value="" disabled selected>시 선택</option>
																					<option value="seoul">서울특별시</option>
																					<option value="busan">부산광역시</option>
																					<option value="daegu">대구광역시</option>
																					<option value="gwangju">광주광역시</option>
																					<option value="ulsan">울산광역시</option>
																					<option value="incheon">인천광역시</option>
																					<option value="daejeon">대전광역시</option>
																					<option value="gwangju">광주광역시</option>
																					<option value="sejong">세종특별자치시</option>
																					<option value="gyeonggi">경기도</option>
																					<option value="gangwon">강원도</option>
																					<option value="jeju">제주특별자치도</option>
																					<option value="etc">기타</option>
																					<!-- 다른 도시들 추가 -->
																				</select>
																			</div>
																		</div>
							
							
							
																		<!-- 근무지 - 구 선택 -->
																		<div class="item">
																			<label for="work_location_district"><strong>근무지 - 구</strong></label>
																			<div class="TypoBox">
																				<select name="work_location_district" id="work_location_district"
																					class="Typo SizeL defalt">
																					<!-- 기본적으로 비활성화된 옵션 -->
																					<option value="" disabled selected>구 선택</option>
																				</select>
																			</div>
																		</div>
							
							
							
																		<!-- 근무지 - 기타 입력란 -->
																		<div id="work_location_etc" style="display:none;">
																			<div class="item">
																				<label for="other_work_location_input1"><strong>근무지 - 기타
																						(시)</strong></label>
																				<div class="TypoBox">
																					<input type="text" name="other_work_location_input1"
																						id="other_work_location_input1" class="Typo SizeL defalt"
																						placeholder="예) 전라남도">
																				</div>
																			</div>
																			<div class="item">
																				<label for="other_work_location_input2"><strong>근무지 - 기타
																						(군)</strong></label>
																				<div class="TypoBox">
																					<input type="text" name="other_work_location_input2"
																						id="other_work_location_input2" class="Typo SizeL defalt"
																						placeholder="예) 무안군">
																				</div>
																			</div>
																		</div>
							
														   <!-- 상세 근무지 -->
														   <div class="item">
															<label for="work_location"><strong>상세 근무지</strong></label>
															<div class="TypoBox">
																<input type="text" name="work_location" id="work_location"
																	class="Typo SizeL defalt" style="ime-mode:active"
																	autocapitalize="off" placeholder="예) 해제면 만송로 34 무안생태갯벌사업소 1층">
															</div>
														</div>
							
																		<!-- 직종 카테고리 -->
																		<div class="item">
																			<label for="job_category"><strong>채용 직무</strong></label>
																			<div class="TypoBox">
																				<select name="job_category" id="job_category"
																					class="Typo SizeL defalt" onchange="checkOtherOption()">
																					<option value="" disabled selected>직종 카테고리 선택</option>
																					<option value="it">IT</option>
																					<option value="cook">요리사</option>
																					<option value="sales">영업</option>
																					<option value="design">디자인</option>
																					<option value="finance">재무</option>
																					<option value="teacher">교사</option>
																					<option value="healthcare">보건의료</option>
																					<option value="construction">건설</option>
																					<option value="marketing">마케팅</option>
																					<option value="media">미디어</option>
																					<option value="other">기타</option>
																				</select>
																			</div>
																		</div>
							
							
																		<!-- 직종 기타 입력란 -->
																		<div id="other_job_category" style="display:none;">
																			<div class="item">
																				<label for="other_job_category_input"><strong>직종 카테고리 -
																						기타</strong></label>
																				<div class="TypoBox">
																					<input type="text" name="other_job_category_input"
																						id="other_job_category_input" class="Typo SizeL defalt"
																						placeholder="예시) 인사직">
																				</div>
																			</div>
																		</div>
							
																		<div style="margin-top: 20px;"></div>
																		<div class="btn_join">
																			<button type="submit" id="btn_submit"
																				class="inp_join BtnType SizeL defalt ga_data_layer submit_btn" 
																				action="myPages_business_folder/myPages_business_2_2" method="post">
																				저장하고 다음으로 이동
																			</button>
																		</div>
							
																	</div>
																</div>
															</fieldset>
														</div>
													</div>
													<!-- 기업 정보 입력 항목 이후 내용 생략 -->
												</form>
											</div>
										</div>
									</div>
								</div>
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

	</body>
	
</html>