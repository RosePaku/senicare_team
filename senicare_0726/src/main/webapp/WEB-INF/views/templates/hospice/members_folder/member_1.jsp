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
	<title>회원가입</title>
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
</head>

<body onload="showTab('personal')">



	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_sub_header.jsp" %>
	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>회원가입</h2>
					<div class="page_link">
						<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start Offered Services Area -->

	<section class="service_area section_gap1">
		<div class="container1">
			<div class="left-area"> <!-- 이거 공백 영역임 이거 사라지면 글 가운데가 아니라 왼쪽으로 몰림-->

			</div>

			<!-- 로그인 기능 -->
			<div class="right-area1">
				<div class="row justify-content-center section-title-wrap">
					<div class="col-lg-12">
						<h1>회원가입</h1>
						<p>
						<h4><span>시니케어는 여러분의 활발한 소통과 다양한 정보공유를 장려합니다.</span></h4>
						<h5>* 아래의 이용약관 및 개인정보 수집 여부에 따른 동의를 거부할 수 있습니다.<br>단, [필수 항목] 동의 거부시 회원 가입이 불가합니다.</h5>
						</p>


					</div>


					</form>


					<!-- 개인/기업 영역 -->



					<div class="login_member">
						<ul class="tabList login_tab" role="tablist">
							<li class="select">
								<button type="button" class="inTab t_per t_on" aria-selected="true"
									onclick="showTab('personal')">개인회원</button>
							</li>
							<li class="">
								<button type="button" class="inTab" aria-selected=""
									onclick="showTab('company')">기업회원</button>
							</li>
						</ul>

						<div id="personal" class="tab_content">

							<!-- 개인회원 내용 -->


							<form action="../members_folder/member_1_1" class="login" method="get"
								name="loginform" id="loginform" onsubmit="return validateLoginForm(this)">
								<input type="hidden" name="url" value="/" id="url">
								<input type="hidden" name="m_code" value="" id="m_code">
								<!--  (개인) 아이디/비밀번호 로그인 입력창
									<input type="hidden" name="login_tab" value="p" id="login_tab">
									<input class="id_text inpTypoBox2" type="text" id="userid" name="userid" maxlength="26" placeholder="아이디222">
									<label for="userid"><span class="blind">아이디</span></label>
									<input type="text" style="display:none;">
									<input class="pw_text inpTypoBox2" type="password" id="passwd" name="passwd" placeholder="비밀번호">
									<label for="passwd"><span class="blind">비밀번호</span></label>
									 (개인) 아이디/비밀번호 로그인 입력창 -->


								<!-- 소셜 가입 아이콘 입력 (개인회원에 한정)-->
								<div class="social_login_box">

									<div>
										<p class="login_1">소셜 계정으로 간편 회원가입</p>
										<ul class="social_login" id="wrap_social_login">
											<li class="login_naver">
												<a href="../login/sign-in-with?provider=naver.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F"
													class="sl_naver ga_data_layer" data-provider="naver"
													data-ga_data_layer="ga_lead|member_join|join_pc|naver"><span
														class="wrap_icon"><svg class="icon">
															<use xlink:href="#icon_login_naver"></use>
														</svg></span></a>
											</li>
											<li class="login_kakao">
												<a href="../login/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F"
													class="sl_kakao ga_data_layer" data-provider="kakao"
													data-ga_data_layer="ga_lead|member_join|join_pc|kakao"
													aria-describedby="last_login_kakao"><span class="wrap_icon"><svg
															class="icon">
															<use xlink:href="#icon_login_kakao"></use>
														</svg></span></a>
												<div id="last_login_kakao" class="tool_tip_wrap social_tooltip"
													style="display: none;">
													<div class="tool_tip top_center">
														<span class="tail"></span>
														<div class="tool_tip_cont">
															마지막에 로그인한 계정이에요!
														</div>
													</div>
												</div>
											</li>
											<li class="login_google">
												<a href="../login/sign-in-with?provider=google.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F"
													class="sl_google ga_data_layer" data-provider="google"
													data-ga_data_layer="ga_lead|member_join|join_pc|google"><span
														class="wrap_icon"><svg class="icon">
															<use xlink:href="#icon_login_google"></use>
														</svg></span></a>
											</li>
										</ul>
									</div>

									<!--소셜 가입 아이콘 입력-->





									<div class="button_login">
										<button class="login_btn btnType colorBlue sizeL" type="submit"
											href="/members_folder/member_1_1">개인회원
											회원가입하기</button>
									</div>

									<!--  (개인) 아이디,비번찾기/ 회원가입 주석	
									<div class="extra_func">
										<a href="https://m.saramin.co.kr/helpdesk/person-find-id">아이디 · 비밀번호 찾기</a>
										<i>|</i>
										<a href="https://m.saramin.co.kr/join?type=p">회원가입</a>
									</div>
									(개인)아이디,비번찾기/ 회원가입 주석	-->
							</form>
						</div>
						<div class="social_login_tit">
							<!-- 여기까지 얘 뭐야???????-->



							<!-- 지인 영역 -->
							<div>
								<!-- 로그인 달기 -->
								<p class="member_login_1">이미 계정이 있나요?</p><a href="">여기로 로그인을 하세요</a>
							</div>
						</div>

					</div>




					<div id="company" class="tab_content" style="max-width :400px; margin: 0 auto;">
						<!-- 기업회원 내용 -->


						<form action="../members_folder/member_1_2_1" class="login" method="get" name="loginform" id="loginform"
							onsubmit="return validateLoginForm(this)">
		

							<div class="button_login">
								<button class="login_btn btnType colorBlue sizeL" type="submit">기업회원 회원가입하기</button>
							</div>
							<!--  (기업) 아이디,비번찾기/ 회원가입 주석	
									<div class="extra_func_company">
										<a href="https://m.saramin.co.kr/helpdesk/company-find-id">아이디 · 비밀번호 찾기(기업)</a>
										<i>|</i>
										<a href="https://m.saramin.co.kr/join/select-company-join-method">회원가입</a>
									</div>
									(기업) 아이디,비번찾기/ 회원가입 주석	-->
						</form>
					</div>



					<!-- 개인/기업 영역 -->
				</div>






				<!-- 지인 영역 -->
			</div>

		</div>










		</div>
	</section>

	<!-- End Offered Services Area -->


	<!-- start footer Area -->
	<%@ include file="../senicare_sub_footer.jsp" %>
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




	<!-- 소셜 로고 -->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
		<symbol id="icon_login_naver" viewBox="0 0 19 19" fill="none">
			<path
				d="M12.8712 9.83355L6.19707 0.199951H0.665771V18.2H6.46038V8.56635L13.1345 18.2H18.6658V0.199951H12.8712V9.83355Z"
				fill="white" />
		</symbol>
		<symbol id="icon_login_kakao" viewBox="0 0 24 21" fill="none">
			<path
				d="M12 0C5.64713 0 0.5 4.04373 0.5 9.03593C0.5 12.2832 2.68198 15.1323 5.95676 16.7252C5.71634 17.6157 5.08616 19.958 4.95866 20.4576C4.80203 21.0802 5.18815 21.0694 5.4395 20.9028C5.63621 20.7725 8.59043 18.7742 9.86538 17.9126C10.5575 18.0139 11.2715 18.0682 12 18.0682C18.3529 18.0682 23.5 14.0245 23.5 9.03232C23.5 4.04011 18.3529 0 12 0Z"
				fill="#181600" />
		</symbol>
		<symbol id="icon_login_google" viewBox="0 0 20 20" fill="none">
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M19.999 10.2272C19.999 9.51783 19.9336 8.83673 19.8135 8.18201H10.2039V12.0501H15.6955C15.459 13.3002 14.74 14.359 13.6595 15.0684V17.5771H16.9576C18.8868 15.8362 20 13.2728 20 10.2272H19.999Z"
				fill="#4285F4" />
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.2034 20C12.9583 20 15.2682 19.1041 16.9562 17.5771L13.6581 15.0684C12.744 15.6685 11.576 16.0227 10.2024 16.0227C7.54456 16.0227 5.29523 14.2639 4.49259 11.9003H1.08496V14.4909C2.76426 17.7589 6.21419 20 10.2034 20Z"
				fill="#34A853" />
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M4.49384 11.8995C4.29006 11.2995 4.17374 10.6589 4.17374 9.99942C4.17374 9.33999 4.29006 8.69939 4.49384 8.09931V5.50867H1.08525C0.394112 6.85863 0 8.38569 0 9.99942C0 11.6132 0.394112 13.1402 1.08525 14.4902L4.49384 11.8995Z"
				fill="#FBBC05" />
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.2034 3.97734C11.701 3.97734 13.0468 4.48228 14.1041 5.47237L17.0311 2.60383C15.2634 0.991037 12.9535 0 10.2034 0C6.21419 0 2.76426 2.24114 1.08496 5.50911L4.49355 8.09975C5.2962 5.73615 7.54552 3.97734 10.2034 3.97734Z"
				fill="#EA4335" />
		</symbol>
		<symbol id="icon_login_facebook" viewBox="0 0 12 22" fill="none">
			<path
				d="M3.78947 22H7.78947V12.3025H11.4926L11.8779 8.64366C11.8779 8.64366 11.9579 8.46385 11.5537 8.46385H7.78947V5.70208C7.78947 5.70208 7.62316 3.61509 9.78947 3.61509H12V0.384594C12 0.384594 11.0484 -0.0194701 8.74526 0.000733132C8.74526 0.000733132 6.71368 -0.0235107 5.12421 1.43516C5.12421 1.43516 3.78947 2.5827 3.78947 3.88379V8.46385H0V12.3025H3.78947V22Z"
				fill="white" />
		</symbol>
	</svg>
</body>

</html>