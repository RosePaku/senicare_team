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
	<title>내 정보_내가 쓴 글</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
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
	<link rel="stylesheet" href="../css/style_DH2.css">
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/responsive.css">
	<link rel="stylesheet" href="../assets/css/personal.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
	<link href="../favicon.ico?ver=2" rel="favicon">
</head>

<body>

	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
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
							<h1
								style="font-size: 100px; font-family: 'Nanum Gothin', sans-serif; margin-bottom: -50px;">
								지원자 정보 수정 및 등록</h1>
						</header>
					</div>

				</section>

				<!-- Section -->
				<section>

				</section>
				<!-- 삭제 -->
			 <!-- 입력 페이지 -->
			 <div id="sri_section" style="text-align: center;" >
				<div id="sri_wrap">
		
					<div id="join_wrapper" class="join_cont_wrap">
						<div id="member_personal" class="member_cate">
							<form name="frm" id="frm" method="post" action="">
		
								<h3 class="tit_join_member">
									<p style="font-size: 20px; ">지원자 정보 입력</p>
								</h3>
								<h5 style="font-size: 18px;">지원자의 정보를 자유롭게 입력합니다.</h5>
								<div class="input_container">
									<div class="left_area">
										<fieldset class="fieldset_class1">
											<div class="cont_division">
		
												<!-- 필수 입력 항목 -->
												<div class="write_base">
		
													<!-- 아이디 -->
													<div class="member_center_line">지원자 정보 입력 항목 (필수)</div>
		
													<!-- 이력서 등록 -->
		
		
													<!-- 이력서 등록과 간편 이력서 등록 선택 라디오 버튼 -->
													<div class="item">
														<label><strong>이력서 등록 방식</strong></label>
														<div class="TypoBox">
															<label for="resume">이력서 등록</label>
															<input type="radio" id="resume" name="resume_type" value="resume"
																checked>
															<label for="easy_resume">간편 이력서 등록</label>
															<input type="radio" id="easy_resume" name="resume_type"
																value="easy_resume">
														</div>
													</div>
		
													<!-- 이력서 등록 폼 -->
													<div id="resume_form">
		
														<div class="item">
															<label for="resume"><strong>이력서 등록</strong></label>
															<div class="TypoBox">
																<input type="file" name="resume" id="resume"
																	class="Typo SizeL defalt" accept=".pdf,.doc,.docx,.hwp">
		
															</div>
														</div>
														
													</div>
		
													<!-- 간편 이력서 등록 폼 -->
													<div id="easy_resume_form" style="display: none;">
														<!-- 최종학력 -->
													<div class="item">
														<label for="education"><strong>최종학력</strong></label>
														<div class="TypoBox">
															<select name="education" id="education" class="Typo SizeL defalt">
																<option value="elementary">초등학교 졸업</option>
																<option value="middle">중학교 졸업</option>
																<option value="high">고등학교 졸업</option>
																<option value="university">대학교 졸업</option>
																<option value="other">기타</option>
																<!-- 기타일 경우 기타 입력창이 출력되어야 함 -->
															</select>
														</div>
													</div>
		
													<!-- 대학교 전공 학력 -->
													<div class="item" id="educationDetailContainer" style="display: none;">
														<label for="education_detail"><strong>대학교 전공 입력</strong></label>
														<div class="TypoBox">
															<input type="text" name="education_detail" id="education_detail"
																class="Typo SizeL defalt" style="ime-mode:active"
																autocapitalize="off" placeholder="예) xx대학교 xx전공 학사학위 수료">
														</div>
													</div>
		
													<!-- 기타 학력 -->
													<div class="item" id="otherEducationContainer" style="display: none;">
														<label for="other_education_detail"><strong>기타 학력 입력란</strong></label>
														<div class="TypoBox">
															<input type="text" name="other_education_detail"
																id="other_education_detail" class="Typo SizeL defalt"
																style="ime-mode:active" autocapitalize="off"
																placeholder="예) 검정고시 수료">
														</div>
													</div>
		
													<!-- 경력사항 -->
													<div class="item" id="keywordsContainer1">
														<label for="career"><strong>경력사항</strong></label>
														<div class="TypoBox">
															<div class="keyword-inputs">
																<div class="keyword-input1">
																	<input type="text" name="career[]" class="Typo SizeL defalt"
																		style="ime-mode:active" autocapitalize="off"
																		placeholder="예) 한국직업전문학교 팀장 3년 근무">
		
																</div>
															</div>
															<i class="fas fa-plus add-keyword-button1"></i>
														</div>
													</div>
													</div>
		
													
		
													<!-- 선택 입력 사항 -->
													<div class="div_empty_top"></div>
													<div class="member_center_line">지원자 정보 입력 항목 (선택)</div>
		
													<!-- 자기 소개서 -->
													<div class="item">
														<label for="self_intro"><strong>자기 소개서</strong></label>
														<div class="TypoBox">
															<textarea name="self_intro" id="self_intro"
																class="Typo SizeL defalt" style="ime-mode:active"
																autocapitalize="off" placeholder="자기 소개서를 입력하세요."></textarea>
														</div>
													</div>
		
		
													<!-- 포트폴리오 -->
													<div class="item">
														<label for="portfolio"><strong>포트폴리오</strong></label>
														<div class="TypoBox">
															<input type="file" name="portfolio" id="portfolio"
																class="Typo SizeL defalt" accept=".pdf,.doc,.docx">
														</div>
													</div>
		
													<!-- 근무 가능일 -->
													<div class="item">
														<label for="availability"><strong>근무 가능일</strong></label>
														<div class="TypoBox">
															<input type="date" name="availability" id="availability"
																class="Typo SizeL defalt" style="ime-mode:active"
																autocapitalize="off" placeholder="근무 가능일을 입력하세요.">
														</div>
													</div>
		
													<!-- 기타 참고사항 -->
													<div class="item">
														<label for="other_notes"><strong>기타 참고사항</strong></label>
														<div class="TypoBox">
															<input type="text" name="other_notes" id="other_notes"
																class="Typo SizeL defalt" style="ime-mode:active"
																autocapitalize="off" placeholder="예) 인근 거주">
														</div>
													</div>
		
													<!-- 키워드 입력란 -->
													<div class="item" id="keywordsContainer2">
														<label for="keywords"><strong>키워드</strong></label>
														<div class="TypoBox">
															<div class="keyword-inputs">
																<div class="keyword-input2">
																	<input type="text" name="keywords[]"
																		class="Typo SizeL defalt" style="ime-mode:active"
																		autocapitalize="off" placeholder="예) 풀타임 근무 ok">
																																
																	</div>
																</div>
																<i class="fas fa-plus add-keyword-button2"></i>
														</div>
													</div>

													
		
		
		
		
		
		
		
		
													<div class="btn_join" style="margin: 20px;">
														<button type="button" id="btn_submit"
															class="inp_join BtnType SizeL defalt ga_data_layer submit_btn"
															onmousedown="loggingEventAndTagManager(['company_join','join_complete'],['ga_lead','company_join','join_complete'])">
															저장하고 다음으로 이동
														</button>
													</div>
		
												</div>
											</div>
										</fieldset>
									</div>
								</div>
								<!-- 지원자 정보 입력 항목 이후 내용 생략 -->
							</form>
						</div>
					</div>
				</div>
			</div>

				<!-- 삭제 -->


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
						<li><a href="../myPages_auth_folder/myPages_auth_1?auth_id=${sessionScope.id}">회원정보 수정</a></li>
						<li><a href="../myPages_auth_folder/myPages_auth_2?auth_id=${sessionScope.id}">지원자 정보 수정</a></li>
						<li><a href="../myPages_auth_folder/myPages_auth_3?auth_id=${sessionScope.id}">내가 쓴 글</a></li>
						<li><a href="../myPages_auth_folder/myPages_auth_4?auth_id=${sessionScope.id}">면접(채팅)</a></li>
						<li><a href="../myPages_auth_folder/myPages_auth_5?auth_id=${sessionScope.id}">내가 지원한 회사</a></li>
						<!-- <li><a href="../myPages_auth_folder/myPages_auth_6">자가테스트 기록</a></li> -->
						<li><a href="../myPages_auth_folder/myPages_auth_7?auth_id=${sessionScope.id}">회원탈퇴</a></li>
						<li></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->



	<!-- 스크립트 라이브러리 -->
	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="/assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="../assets/js/main.js"></script>

	<!-- 스크립트 라인 -->
	<script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>


	<!-- <script type="text/javascript" src="../../../static/js/page_jiin_info.js"></script> -->
	<!-- 스크립트 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="../js/page_jiin_info_VOL.js"></script>
    <script type="text/javascript" src="../js/page_jiin.js"></script>
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

	<!-- 스크립트 라인 -->



</body>

</html>