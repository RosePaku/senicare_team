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
	<title>로그인</title>
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
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>로그인</h2>
					<div class="page_link">
						<a href="../senicare_main.html">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
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
						<h1>로그인</h1>
						<p>
						<h4><span>로그인하시면 활발한 소통과 다양한 정보공유를 하실 수 있습니다.</span></h4>
						</p>



						<!-- 누나가 가져온거 -->
						<form id="login_frm" name="login_frm" class="login_frm" method="post"
							action="Auth"
							>
							<!-- onsubmit="try {return check(this);} catch (e) {};" -->
							<!-- <input type="hidden" name="m_code" value="0">
							<input type="hidden" name="page_url" value="">
							<input type="hidden" name="url" value="">
							<input type="hidden" name="FrameKey" value="">
							<input type="hidden" name="login_tab" value="c" id="login_tab"> -->
							<div class="login_input_wrap ">

								<div class="tab_panel" role="tabpanel" aria-label="개인회원">
									<div class="setting">
										<span class="inpChk">
											<input type="checkbox" id="autologin" class="setting_inp" name="autologin"
												>
											<label class="setting_label" for="autologin"
												onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
												로그인 유지
											</label>
										</span>
										<span class="inpChk">
											<input type="checkbox" id="id_save" class="setting_inp" name="id_save"
												onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
											<label class="setting_label" for="id_save"
												onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
												아이디 저장
											</label>
										</span>
										<!-- <span class="inpChkSwP ssl_login_box">
											<input type="checkbox" id="ssl_login" title="보안접속" class="ssl_login_hide" checked="checked">
											<label for="ssl_login" id="ssl_login_label" class="lbl label_type">보안</label>
										</span> -->
									</div>
									<div class="loginform">
									</div>

									<li class="login_naver">
										<div class="tool_tip top_center">
											<span class="tail"></span>
										</div>
								</div>
								</li>



							</div>

							<!-- <input type="hidden" name="encid" value="" id="encid"><input type="hidden" name="encpw"
								value="" id="encpw"><input type="hidden" name="seq" value="" id="seq"> -->
						</form>

						
						<!-- 개인/기업 영역 -->
						<div class="login_member" >
							<ul class="tabList login_tab" role="tablist">
								<li class="select">
									<button type="button" class="inTab t_per t_on" aria-selected="true" onclick="showTab('personal')">개인회원</button>
								</li>
								<li class="">
									<button type="button" class="inTab" aria-selected="" onclick="showTab('company')">기업회원</button>
								</li>
							</ul>
					
							<div id="personal" class="tab_content">
								<!-- 개인회원 내용 -->
								<form action="/login" class="login" method="POST" name="loginform" id="loginform">
									<input type="hidden" name="url" value="/" id="url">
									<input type="hidden" name="m_code" value="" id="m_code">
									<input type="hidden" name="login_tab" value="p" id="login_tab">
									<input class="id_text inpTypoBox2" type="text" id="auth_id" name="auth_id" maxlength="26" placeholder="아이디">
									<label for="auth_id"><span class="blind">아이디</span></label>
									<input type="text" style="display:none;">
									<input class="pw_text inpTypoBox2" type="password" id="auth_password" name="auth_password" placeholder="비밀번호">
									<label for="auth_password"><span class="blind">비밀번호</span></label>
									<div class="button_login">
										<button class="login_btn btnType colorBlue sizeL" type="submit">개인회원 로그인</button>
									</div>
									<div class="extra_func">
										<a href="/members_folder/member_3">아이디 · 비밀번호 찾기</a>
										<i>|</i>
										<a href="https://m.saramin.co.kr/join?type=p">회원가입</a>
									</div>
								</form>
							</div>
						</div>
					


						
							<div id="company" class="tab_content" style="max-width :400px; margin: 0 auto;">
								<!-- 기업회원 내용 -->
								<form action="/a_blogin" class="login" method="POST" name="loginform" id="loginform" onsubmit="return validateLoginForm(this)">
									<input type="hidden" name="url" value="/" id="url">
									<input type="hidden" name="m_code" value="" id="m_code">
									<input type="hidden" name="login_tab" value="c" id="login_tab">
									<input class="id_text inpTypoBox2" type="text" id="auth_business_id" name="auth_business_id" maxlength="26" placeholder="아이디123">
									<label for="auth_business_id"><span class="blind">아이디</span></label>
									<input type="text" style="display:none;">
									<input class="pw_text inpTypoBox2" type="password" id="auth_business_password" name="auth_business_password" placeholder="비밀번호">
									<label for="auth_business_password"><span class="blind">비밀번호</span></label>
									<div class="button_login">
										<button class="login_btn btnType colorBlue sizeL" type="submit">기업회원 로그인</button>
									</div>
									<div class="extra_func_company">
										<a href="https://m.saramin.co.kr/helpdesk/company-find-id">아이디 · 비밀번호 찾기(기업)</a>
										<i>|</i>
										<a href="https://m.saramin.co.kr/join/select-company-join-method">회원가입</a>
									</div>
								</form>
							
						
							</div>
						<!-- 개인/기업 영역 -->
					</div>


		
					
					<!-- 여기부터 얘 뭐야???????-->
					<!-- 소셜 사이즈 조절 -->
					<div class="social_login_box">
						<div class="social_login_tit"> 
							<!-- 여기까지 얘 뭐야???????-->
							
							
							
							<!-- 지인 영역 -->
							<p class="login_1">소셜 계정으로 간편 로그인</p>
						</div>
						<ul class="social_login" id="wrap_social_login">
							<li class="login_naver">
								<a href="../login/sign-in-with?provider=naver.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F"
									class="sl_naver ga_data_layer" data-provider="naver"
									data-ga_data_layer="ga_lead|member_join|join_pc|naver"><span class="wrap_icon"><svg
											class="icon">
											<use xlink:href="#icon_login_naver"></use>
										</svg></span></a>
							</li>
							<li class="login_kakao">
								<a href="../login/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F"
									class="sl_kakao ga_data_layer" data-provider="kakao"
									data-ga_data_layer="ga_lead|member_join|join_pc|kakao"
									aria-describedby="last_login_kakao"><span class="wrap_icon"><svg class="icon">
											<use xlink:href="#icon_login_kakao"></use>
										</svg></span></a>
								<div id="last_login_kakao" class="tool_tip_wrap social_tooltip" style="display: none;">
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
									data-ga_data_layer="ga_lead|member_join|join_pc|google"><span class="wrap_icon"><svg
											class="icon">
											<use xlink:href="#icon_login_google"></use>
										</svg></span></a>
							</li>
							<li class="login_facebook">
								<!-- <a href="/login/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F" class="sl_facebook ga_data_layer" data-provider="facebook" data-ga_data_layer="ga_lead|member_join|join_pc|facebook"><span class="wrap_icon"><svg class="icon"><use xlink:href="#icon_login_facebook"></use></svg></span></a></li><li class="login_apple">
															<a href="/login/sign-in-with?provider=apple.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fwww.google.com%2F" class="sl_apple ga_data_layer" data-provider="apple" data-ga_data_layer="ga_lead|member_join|join_pc|apple"><span class="wrap_icon"><svg class="icon"><use xlink:href="#icon_login_apple"></use></svg></span></a></li></ul></div> -->


								<!-- 지인 영역 -->
					</div>










				</div>










			</div>
	</section>

	<!-- End Offered Services Area -->


	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
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


	<!-- 개인회원 / 기업회원 로그인 -->
	<script>
    function showTab(tabName) {
        var i, tabContent, tabButtons;
        tabContent = document.getElementsByClassName("tab_content");
        for (i = 0; i < tabContent.length; i++) {
            tabContent[i].style.display = "none";
        }
        tabButtons = document.getElementsByClassName("inTab");
        for (i = 0; i < tabButtons.length; i++) {
            tabButtons[i].setAttribute("aria-selected", "false");
            tabButtons[i].classList.remove("active");
        }
        document.getElementById(tabName).style.display = "block";
        var selectedButton = document.querySelector("#" + tabName + " .inTab");
        selectedButton.setAttribute("aria-selected", "true");
        selectedButton.classList.add("active");
    }
	
	</script>
	<!-- 개인회원 / 기업회원 로그인 -->

	<!-- 스타일 적용 -->
	<script>
		
	</script>

	


	<!-- 링크 연결 -->
	<script>

		window.addEventListener('load', function () {
			var allElements = document.getElementsByTagName('*');
			Array.prototype.forEach.call(allElements, function (el) {
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
	<!-- 링크 연결 -->

	<!--==============   pwsave script 시작 =============================-->
	<script>
		var idSaveCheckbox = document.getElementById('idstore');
		idSaveCheckbox.addEventListener('click', function () {
			if (idSaveCheckbox.checked) {
				// alert('아이디 저장');
			}
		});
	</script>
	<!--==============   pwsave script 끝 =============================-->





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