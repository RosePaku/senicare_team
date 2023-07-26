<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<html lang="ko">

<head>
	<title>회원가입 - 시니케어에 오신 것을 환영합니다! - 사람인</title>
	<meta name="naver-site-verification" content="86455485e27cab6986d130e4c3b90c5b516820d1">
	<meta name="naver" content="nosublinks">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Content-Language" content="ko-KR">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<link href="../sri_css/join/sri_css_member_join.css" media="all" rel="stylesheet" type="text/css">
	<link href="../sri_css/sri_css_member_etc.css" media="all" rel="stylesheet" type="text/css">
	<link href="../sri_css/sric_css_member_login.css" media="all" rel="stylesheet" type="text/css">
	<link href="../sri_css/sri_css_member_pattern.css" media="all" rel="stylesheet" type="text/css">
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
	<link href="../favicon.ico?ver=2" rel="favicon">
	<link href="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.css" media="screen" rel="stylesheet"
		type="text/css">
	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async=""
		src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=1908866751.1687481206"></script>
	<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
	<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MK2GBBH"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
	<script type="../text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>
	<script type="../text/javascript" src="/js/libs/secure/PasswordStrength.js?v=20230713103234"></script>
	<script type="../text/javascript" src="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.js"></script>
	<script type="../text/javascript" src="/js/libs/placeholders/jquery.placeholder.js"></script>
	<script type="../text/javascript" src="/js/join/join.js?v=20230713103234"></script>
	<script type="../text/javascript" src="/js/join/join-person.js?v=20230713103234"></script>
	<script type="../text/javascript" src="/js/join/smsEmailConfirm.js?v=20230713103234"></script>
	
	<meta http-equiv="origin-trial"
		content="A8JfNlJkey0MFKnz6XNz8nRPAhS9Pk1KdhzNHXdfaz7ediAYHhDf/bW0PKE8IDoMWFZG6uRlHwzxV6IR+zh0EAsAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
	<meta http-equiv="origin-trial"
		content="A8+GUOvok5j8ovF5eDgcRkHjjwMRBeKryCemTXvbp0vtb//sDFgNbQ+1h5AEm6m7NkU/FuBEEqP3YH/3StuCyQ4AAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
	<meta http-equiv="origin-trial"
		content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
</head>

<body>


	<script>
		(function (a_, i_, r_, _b, _r, _i, _d, _g, _e) { if (!a_[_b]) { var d = { queue: [] }; _r.concat(_i).forEach(function (a) { var i_ = a.split("."), a_ = i_.pop(); i_.reduce(function (a, i_) { return a[i_] = a[i_] || {} }, d)[a_] = function () { d.queue.push([a, arguments]) } }); a_[_b] = d; a_ = i_.getElementsByTagName(r_)[0]; i_ = i_.createElement(r_); i_.onerror = function () { d.queue.filter(function (a) { return 0 <= _i.indexOf(a[0]) }).forEach(function (a) { a = a[1]; a = a[a.length - 1]; "function" === typeof a && a("error occur when load airbridge") }) }; i_.async = 1; i_.src = "//static.airbridge.io/sdk/latest/airbridge.min.js"; a_.parentNode.insertBefore(i_, a_) } })(window, document, "script", "airbridge", "init fetchResource setBanner setDownload setDownloads openDeeplink setDeeplinks sendWeb setUserAgent setUserAlias addUserAlias setMobileAppData setUserId setUserEmail setUserPhone setUserAttributes clearUser setDeviceIFV setDeviceIFA setDeviceGAID events.send events.signIn events.signUp events.signOut events.purchased events.addedToCart events.productDetailsViewEvent events.homeViewEvent events.productListViewEvent events.searchResultViewEvent".split(" "), ["events.wait"]);
		var airbridgeWebKey = 'ca79046f9e144d959f976fe69cdcb672';
		var appName = 'saramin';
		airbridge.init({
			app: appName,
			webToken: airbridgeWebKey,
			useProtectedAttributionWindow: true,
			utmParsing: true,
			cookieWindow: 1,
			forceFirstPartyCookieID: true
		});
	</script>
	<script>

		(function (i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date(); a = s.createElement(o),
				m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-12546634-1', 'saramin.co.kr');
		ga('require', 'GTM-KN35GK2');
		ga('require', 'displayfeatures');
		ga('require', 'linkid');
		ga('send', 'pageview');

	</script>
	 <!--================Header Menu Area =================-->
	 <%@ include file="../senicare_main_header.jsp" %>
	 <!--================Header Menu Area =================-->

	 	 <!--================ Banner Area =================-->
		  <section class="banner_area">
			<div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content text-left">
						<h2>개인 회원가입</h2>
					</div>
				</div>
			</div>
		</section>
		<!--================End Banner Area =================-->
	 
	<div id="sri_section">
		<div id="sri_wrap">

			<div id="join_wrapper" class="join_cont_wrap">
				<div id="member_personal" class="member_cate">
					<form name="frm" id="frm" method="post"
						action="https://www.saramin.co.kr/zf_user/member/registration/submit-personal">
						<input type="hidden" name="seq" value="seq1689325206" id="seq"><input type="hidden"
							name="reject_tailor" value="on" id="reject_tailor"><input type="hidden"
							name="reject_email_sokbo" value="on" id="reject_email_sokbo"><input type="hidden"
							name="reject_email_certificate" value="on" id="reject_email_certificate"><input
							type="hidden" name="reject_public" value="on" id="reject_public"><input type="hidden"
							name="reject_avatar" value="on" id="reject_avatar"><input type="hidden"
							name="reject_albain_tailor" value="on" id="reject_albain_tailor"><input type="hidden"
							name="reject_event" value="" id="reject_event"><input type="hidden" name="reject_survey"
							value="" id="reject_survey"><input type="hidden" name="agree_tos" value=""
							id="agree_tos"><input type="hidden" name="agree_pp" value="" id="agree_pp"><input
							type="hidden" name="agree_3p" value="" id="agree_3p"><input type="hidden" name="tel"
							value="" id="tel"><input type="hidden" name="tel1" value="" id="tel1"><input type="hidden"
							name="tel2" value="" id="tel2"><input type="hidden" name="tel3" value="" id="tel3"><input
							type="hidden" name="sex" value="" id="sex"><input type="hidden" name="birth_year" value=""
							id="birth_year"><input type="hidden" name="birth_month" value="" id="birth_month"><input
							type="hidden" name="birth_day" value="" id="birth_day"><input type="hidden" name="national"
							value="" id="national"><input type="hidden" name="confirm_method" value="7"
							id="confirm_method"><input type="hidden" name="email_chk_ok" value="0"
							id="email_chk_ok"><input type="hidden" name="id_chk_ok" value="0" id="id_chk_ok"><input
							type="hidden" name="jikjong_code" value="" id="jikjong_code"><input type="hidden"
							name="welfare_code" value="" id="welfare_code"><input type="hidden" name="job_type_code"
							value="" id="job_type_code"><input type="hidden" name="channel" value="sms"
							id="channel"><input type="hidden" name="cell" value="" id="cell"><input type="hidden"
							name="cell1" value="" id="cell1"><input type="hidden" name="cell2" value=""
							id="cell2"><input type="hidden" name="cell3" value="" id="cell3"><input type="hidden"
							name="zipcode" value="" id="zipcode"><input type="hidden" name="address" value=""
							id="address"><input type="hidden" name="email" value="" id="email"><input type="hidden"
							name="confirm_status" value="ready" id="confirm_status"><input type="hidden"
							name="join_path2" value="99" id="join_path2"><input type="hidden" name="tc_1_fl" value="n"
							id="tc_1_fl"><input type="hidden" name="tc_2_fl" value="n" id="tc_2_fl"><input type="hidden"
							name="location_based_fl" value="n" id="location_based_fl"><input type="hidden"
							name="overseas_fl" value="0" id="overseas_fl"><input type="hidden" name="old_address"
							value="" id="old_address"><input type="hidden" name="old_zipcode" value=""
							id="old_zipcode"><input type="hidden" name="old_address_details" value=""
							id="old_address_details"><input type="hidden" name="new_address" value=""
							id="new_address"><input type="hidden" name="new_zipcode" value="" id="new_zipcode"><input
							type="hidden" name="new_address_details" value="" id="new_address_details"><input
							type="hidden" name="new_address_extra" value="" id="new_address_extra"><input type="hidden"
							name="address_sido" value="" id="address_sido"><input type="hidden" name="address_sigungu"
							value="" id="address_sigungu"><input type="hidden" name="x_coordinate" value=""
							id="x_coordinate"><input type="hidden" name="y_coordinate" value="" id="y_coordinate"><input
							type="hidden" name="zip_use_type" value="J" id="zip_use_type">

						<h3 class="tit_join_member">회원가입 정보를 입력해주세요!</h3>
						<div class="input_container">
							<div class="left_area">
								<fieldset class="fieldset_class1">
									<div class="cont_division">


										<!-- 필수 입력 항목 -->
										<div class="write_base">
											<!-- 아이디 -->
											<div class="member_center_line">필수 입력 항목</div>
											<div class="item">
												<label for="auth_id"><strong>아이디</strong></label>
												<div class="TypoBox">
													<input name="auth_id" id="auth_id" type="text"
														class="Typo SizeL defalt" maxlength="20"
														style="ime-mode:disabled" autocapitalize="off"
														autocomplete="off" placeholder="4~20자리 / 영문, 숫자, 특수문자 '_'사용가능">
												</div>
												<p class="alert_column focus_txt" id="auth_idFocusMsg"
													style="display:none">4
													~ 20자의 영문, 숫자와 특수문자'_'만 사용해주세요.</p>
												<em class="msgInvalid" id="auth_idCheckMsg1" style="display:none">4~20자의
													영문,
													숫자와 특수문자'_'만 사용해주세요.</em><!-- 오류 시 텍스트 -->
												<p class="alert_column good_txt" id="auth_idCheckMsg2"
													style="display:none">
													사용가능한 아이디에요.</p><!-- 완료 시 텍스트 -->
											</div>

											<!-- 비밀번호 -->
											<div class="item">
												<label for="auth_password"><strong>비밀번호</strong></label>
												<div class="TypoBox pass_box">
													<input autocapitalize="off" name="auth_password"
														class="Typo SizeL defalt" id="auth_password"
														type="auth_password" maxlength="16" autocomplete="off"
														placeholder="8~16자리/영문 대소문자, 숫자, 특수문자 조합">
													<button type="button" toggle="#auth_password"
														id="masking_auth_password" class="toggle_password field_eye on"
														style="display: none;"></button>
												</div>

												<p class="alert_column focus_txt" id="auth_passwordFocusMsg"
													style="display:none">8~16자리 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합으로 만들어주세요.
												</p>
												<!-- focus 시 텍스트 -->
												<em class="msgInvalid" id="auth_password_warning_txt"
													style="display:none"><span>8~16자리 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합으로
														만들어주세요.</span></em>
												<p class="alert_column good_txt" id="auth_password_good_txt"
													style="display:none"></p>
												<p class="pass_safety" id="pw_strnegth_level" style="display:none"></p>
											</div>

											<!-- 이름 -->
											<div class="item">
												<label for="auth_name"><strong>이름</strong></label>
												<div class="TypoBox">
													<input type="text" name="auth_name" id="auth_name"
														class="Typo SizeL defalt" style="ime-mode:active"
														autocapitalize="off" placeholder="이름 입력">
												</div>
												<em class="msgInvalid" id="auth_name_msg" name="auth_name_msg"
													style="display:none">이름은 필수 입력 정보 입니다.</em>
											</div>

											<!-- 성별 -->
											<div class="item">
												<label for="auth_name"><strong>성별</strong></label>
												
		
											</div>

											<!-- 성별 -->



											<!-- 닉네임 -->
											<div class="item">
												<label for="auth_nickname"><strong>닉네임</strong></label>
												<div class="TypoBox">
													<input type="text" name="auth_nickname" id="auth_nickname"
														class="Typo SizeL defalt" style="ime-mode:active"
														autocapitalize="off" placeholder="닉네임 입력">
												</div>
												<em class="msgInvalid" id="auth_nickname_msg" name="auth_nickname_msg"
													style="display:none">이름은 필수 입력 정보 입니다.</em>
											</div>

											<!-- 생년월일 -->
											<div class="item">
												<label for="auth_birth"><strong>생년월일</strong></label>
												<div class="TypoBox">
													<input type="number" name="tmp_auth_birth" id="auth_birth"
														maxlength="8" autocapitalize="off" placeholder="예: 19630101(숫자만 입력해주세요)"
														class="Typo SizeL defalt">
												</div>
												<em class="msgInvalid" id="cyr_msg" style="display:none">
													예: 19630101(숫자만 입력해주세요)
												</em>
												<div class="wrap_collection_basis">
													<button type="button" class="btn_link"
														aria-describeby="tootip_content" id="auth_birth_msg"
														style="cursor:pointer;display:none" aria-expanded="false">만 15세
														이상인지 확인이 필요해요
													</button><!--툴팁 노출 시 aria-expanded="ture"로 변경-->
													<div class="TipBox social_tooltip Click" id="tootip_content">
														<div class="TipCont BottomCenter" id="collectionBasisContents">
															<span class="Tail"></span>
															<button type="button" class="BtnClose btnClose"
																id="close_auth_birth_msg">
																<span class="blind">닫기</span></button>
														</div>
													</div>
												</div>
											</div>

											<input type="hidden" name="cellnum" id="cellnum">
											<input type="hidden" name="email_id" id="email_id">

											<!-- 휴대폰 인증 -->
											<div class="item identify_phone" id="phone_certi_list"
												name="phone_certi_list">
												<label for="sms_cellnum"><strong>휴대폰</strong></label>
												<div class="input_collect TypoBox">
													<input type="hidden" name="sms_confirm_complete" value="n"
														id="sms_confirm_complete">
													<input type="text" id="sms_cellnum" name="tmp_cellnum"
														placeholder="'-' 빼고 숫자만 입력"
														class="Typo SizeL join_input defalt">
												</div>
												<button type="button" id="sms_send_code"
													class="BtnType SizeL defalt btn_cert_pop collet_btn"
													disabled=""><span>인증요청</span></button>
												<button type="button" id="sms_re_send_code"
													class="BtnType SizeL collet_btn re_btn" style="display:none"
													onclick="sendCodeAction()"><span>재발송</span></button>
												<em class="msgInvalid" id="sms_phone_msg" style="display:none"><span>잘못된
														휴대폰 번호입니다. 휴대폰 번호를 정확하게 입력해주세요.</span></em>
												<div class="input_collect " id="sms_confirm_wrap"
													style="display: none;">
													<label for="sms_code" class="blind">인증번호 입력</label>
													<div class="TypoBox">
														<input type="number" id="sms_code" name="sms_code"
															placeholder="인증번호를 입력해주세요"
															class="Typo SizeL join_input defalt" maxlength="6"
															pattern="\d*" autocomplete="on">
													</div>

													<button type="button"
														class="BtnType SizeL defalt collet_btn confirm-action person ga_data_layer"
														data-ga_data_layer="ga_lead|member_join|join_pc|step_1"
														disabled=""><span>확인</span></button>
												</div>
												<em class="msgInvalid" id="confirm_remain_sms_time_area"
													style="display: none;"><span>남은 시간 03:00</span></em>
												<em class="msgInvalid" id="phone_confirm_msg"
													style="display:none"><span>인증번호가 일치하지 않습니다. 다시 확인해 주세요.</span></em>
												<p class="alert_column good_txt" id="sms_msg_good" style="display:none">
													인증이 완료되었습니다.</p>
											</div>

											<!-- 휴대폰 인증시 이메일 -->
											<li class="item identify_phone">
												<label for="sms_email_id"><strong>이메일</strong></label>
												<div class="TypoBox">
													<input type="text" id="sms_email_id" name="tmp_email_id"
														style="ime-mode:inactive" class="Typo SizeL defalt"
														placeholder="email@saramin.co.kr">
												</div>

												<!-- 자동리스트 영역 -->
												<ul class="auto_list_area email_list" style="display:none;">
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@naver.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@gmail.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@daum.net</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@nate.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@outlook.com</a></li>
												</ul>
												<em class="msgInvalid" id="sms_msg_email1" name="msg_email1"
													style="display:none">이메일 주소를 입력해주세요.</em>
												<p class="alert_column good_txt" id="msg_email2" style="display:none">
													인증되었습니다</p>
												<div class="wrap_collection_basis">
													<p class="btn_link" id="email_msg">시니케어 관련 정보를 받을 때 필요해요</p>
												</div>
											</li>

											<!-- 이메일 인증 -->
											<div class="item identify_mail" style="display: none;">
												<label for="sms_email_id"><strong>이메일</strong></label>
												<p class="txt_move identify_select">
													휴대폰 인증을 원하시면,
													<button type="button" class="btn_identify" id="identify_phone">휴대폰
														인증하기</button>
												</p>
												<div class="input_collect TypoBox">
													<input type="hidden" name="mail_confirm_complete" value="n"
														id="mail_confirm_complete">
													<input type="text" id="mail_email_id" name="tmp_email_id"
														style="ime-mode:inactive" class="Typo SizeL join_input defalt"
														placeholder="email@saramin.co.kr">
												</div>
												<button type="button" id="mail_send_code"
													class="BtnType SizeL defalt btn_cert_pop"
													disabled=""><span>인증요청</span></button>
												<button type="button" id="mail_re_send_code"
													class="BtnType SizeL colorBlueReverse" style="display:none"
													onclick="sendCodeAction()"><span>재발송</span></button>
												<!-- 자동리스트 영역 -->
												<ul class="auto_list_area email_list ScrollBar">
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@naver.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@gmail.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@daum.net</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@nate.com</a></li>
													<li class="auto_list"><a href="javascript:;" onclick="return false;"
															class="email_domain"><strong
																class="txt_input"></strong>@outlook.com</a></li>
												</ul>
												<em class="msgInvalid" id="mail_msg_email1" name="msg_email1"
													style="display:none">이메일 주소를 입력해주세요.</em>

												<div class="input_collect " id="mail_confirm_wrap"
													style="display: none;">
													<label for="sms_code" class="blind">인증번호 입력</label>
													<div class="TypoBox email_box">
														<input type="number" id="email_code" name="email_code"
															placeholder="인증번호를 입력해주세요"
															class="Typo SizeL join_input defalt" maxlength="6"
															pattern="\d*" autocomplete="on">
													</div>

													<button type="button"
														class="BtnType SizeL defalt confirm-action person ga_data_layer"
														data-ga_data_layer="ga_lead|member_join|join_pc|step_1"
														disabled=""><span>확인</span></button>
												</div>
												<em class="msgInvalid" id="confirm_remain_mail_time_area"
													style="display: none;"><span>남은 시간 03:00</span></em>
												<em class="msgInvalid" id="email_confirm_msg"
													style="display:none"><span>인증번호가 일치하지 않습니다. 다시 확인해 주세요.</span></em>
												<p class="alert_column good_txt" id="mail_msg_good"
													style="display:none">인증이 완료되었습니다.</p>

												<!-- 해외거주 -->
												<p class="wrap_collection_basis">
													<span class="InpBox">
														<span class="Chk">
															<input type="checkbox" id="ignore_cell_1">
															<label class="Lbl" for="ignore_cell_1"
																onclick="set_overseas_selective();">
																해외 거주자입니다.
															</label>
														</span>
													</span>
												</p>
											</div>

											<div class="item identify_mail" id="phone_certi_list"
												name="phone_certi_list" style="display: none;">
												<!-- 이메일 인증시 휴대폰 -->
												<label for="mail_cellnum"><strong>휴대폰</strong></label>
												<div class="TypoBox">
													<input type="text" id="mail_cellnum" name="tmp_cellnum"
														placeholder="'-'빼고 숫자만 입력" class="Typo SizeL defalt">
												</div>
												<em class="msgInvalid" id="mail_phone_msg"
													style="display:none"><span>잘못된 휴대폰 번호입니다. 휴대폰 번호를 정확하게
														입력해주세요.</span></em>
											</div>
										</div>
										<!--     필수 입력 항목 끝      -->


										<!--     선택 입력 항목 시작   -->
										<div class="write_base">
											<div class="member_center_line">선택 입력 항목</div>
											<!-- 주소 -->
											<div class="item">
												<label for="id"><strong>주소 (시/도)</strong></label>
												<div class="TypoBox">
													<input name="id" id="id" type="text" class="Typo SizeL defalt"
													maxlength="20" style="ime-mode:disabled" autocapitalize="off"
													autocomplete="off" placeholder="예:서울특별시/강원특별자치도">
												
												<label for="id"><strong>상세주소 (시/군/구)</strong></label>
													<input name="id" id="id" type="text" class="Typo SizeL defalt"
														maxlength="20" style="ime-mode:disabled" autocapitalize="off"
														autocomplete="off" placeholder="예:중구/평창시">
												</div>
											</div>

											<!-- 신장/체중
											<div class="item">
												<label for="id"><strong>신장/체중</strong></label>
												<div class="TypoBox">
													<input name="id" id="id" type="text" class="Typo SizeL defalt"
														maxlength="20" style="ime-mode:disabled" autocapitalize="off"
														autocomplete="off" placeholder="신장(cm)">
													<input name="id" id="id" type="text" class="Typo SizeL defalt"
														maxlength="20" style="ime-mode:disabled" autocapitalize="off"
														autocomplete="off" placeholder="체중(kg)">
												</div>
											</div> -->

											<!-- 기저질환-->
											<div class="item">
												<label for="user_nm"><strong>기저질환</strong></label>
												<div class="TypoBox">
													<input type="text" name="user_nm" id="user_nm"
														class="Typo SizeL defalt" style="ime-mode:active"
														autocapitalize="off"
														placeholder="먹는 약이 있거나 진단 받은 질환을 선택해주세요">
												</div>
											</div>

											<!-- 자격증 -->
											<div class="item">
												<label for="id"><strong>자격증</strong></label>

												<input name="id" id="id" type="text" class="Typo SizeL defalt"
													maxlength="20" style="ime-mode:disabled" autocapitalize="off"
													autocomplete="off" placeholder="자격증">
												<!--입력 추가 버튼 기능 가능한가여??? -->
											</div>
											<!-- 경력사항 -->
											<div class="item">
												<label for="id"><strong>경력사항</strong></label>

												<input name="id" id="id" type="text" class="Typo SizeL defalt"
													maxlength="50" style="ime-mode:disabled" autocapitalize="off"
													autocomplete="off" placeholder="해당업무/근무개월수/회사명 순으로 입력하세요.">
												<!--입력 추가 버튼 기능 가능한가여??? -->
											</div>
											<div class="wrap_collection_basis">
												<p class="btn_link" id="email_msg">입력 예시: <br>포크레인운전/10년3개월/대한건설 <br> 요양보호사/3년5개월/천사요양센터</p>
											</div>
										</div>

										<input type="hidden" name="cellnum" id="cellnum">
										<input type="hidden" name="email_id" id="email_id">


									</div>
									<!--     선택 입력 항목 끝   -->

									<!-- 약관 -->
									<div class="cont_division">
										<span class="terms_agree"><strong>약관</strong></span>
										<div class="agree_box">
											<ul class="agree_article">
												<li>
													<div class="InpBox">
														<span class="Chk SizeL">
															<input type="checkbox" class="check_mail"
																id="agreeAllPersonal">
															<label class="check_all check_off Lbl"
																for="agreeAllPersonal">
																<strong class="all_agree">전체 동의</strong>
															</label>
															<input type="hidden" name="hidden_check_all" value="0"
																id="hidden_check_all">
														</span>
													</div>
												</li>
											</ul>
											<ul class="agree_article depth2">
												<li>
													<div class="agree_desc">
														<div class="InpBox">
															<span class="Chk">
																<input type="checkbox" id="agree_rule1">
																<label class="Lbl check_custom check_off"
																	for="agree_rule1">
																	<span><strong>(필수) 개인회원 약관에 동의</strong></span>
																</label>
															</span>

														</div>
													</div>
													<a href="/zf_user/help/terms-of-service/person"
														class="view_indetail" target="_blank">
														<span class="blind">개인회원 약관 상세보기</span>
													</a>
												</li>
												<li>
													<div class="agree_desc">
														<div class="InpBox">
															<span class="Chk">
																<input type="checkbox" id="agree_take1">
																<label class="Lbl check_custom check_off"
																	for="agree_take1">
																	<span><strong>(필수) 개인정보 수집 및 이용에
																			동의</strong></span>
																</label>
															</span>

														</div>
													</div>
													<a id="popupClausePrivacyPerson"
														href="/zf_user/popup/privacy-policy?category=person_privacy_req"
														class="view_indetail popup_clause_open" target="_blank">
														<span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
													</a>
												</li>
												<li>
													<div class="agree_desc">
														<div class="InpBox">
															<span class="Chk">
																<input type="checkbox" id="locationBased"
																	name="locationBased" value="y">
																<label class="Lbl check_custom check_off"
																	for="locationBased">
																	<span>(선택) 위치기반서비스 이용약관에 동의</span>
																</label>
															</span>

														</div>
													</div>
													<a id="popupTermsAgreeLb"
														href="members_folder/"
														class="view_indetail popup_clause_open" target="_blank">
														<span class="blind">위치기반서비스 이용약관에 동의 상세보기</span>
													</a>
												</li>
											</ul>
										</div>
									</div>

									<!-- 정보보유기간 -->
									<div class="cont_division">
										<strong class="terms_agree">정보보유기간</strong>
										<button type="button" aria-describeby="tootip_guide" class="btn_guide"
											onclick="document.getElementById('dormancyTermTip').style.display='inline';"
											style="cursor:pointer"><span class="blind">정보보유기간 설명</span></button>
										<div class="TipBox guide_tooltip Click" id="tootip_guide">
											<div class="TipCont BottomCenter" id="dormancyTermTip"
												style="display: none;">
												<span class="Tail"></span>
												<div class="TipTxt">
													선택하신 기간 동안 사이트에 로그인하지 않은 경우<br>
													개인정보를 별도 분리 저장하게 됩니다.
												</div>
												<button type="button" class="BtnClose btnClose"
													onclick="document.getElementById('dormancyTermTip').style.display='none';"><span
														class="blind">닫기</span></button>
											</div>
										</div>
										<div class="sri_radio_wrap">
											<div class="InpBox">
												<span class="Rdo">
													<input type="radio" id="dormancy_term_4" name="dormancy_term"
														value="99">
													<label class="Lbl" for="dormancy_term_4">탈퇴시</label>
												</span>
											</div>
											<div class="InpBox">
												<span class="Rdo">
													<input type="radio" id="dormancy_term_3" class="inp_check"
														name="dormancy_term" value="5">
													<label class="Lbl" for="dormancy_term_3">5년</label>
												</span>
											</div>
											<div class="InpBox">
												<span class="Rdo">
													<input type="radio" id="dormancy_term_2" class="inp_check"
														name="dormancy_term" value="3">
													<label class="Lbl" for="dormancy_term_2">3년</label>
												</span>
											</div>
											<div class="InpBox">
												<span class="Rdo">
													<input type="radio" id="dormancy_term_1" class="inp_check"
														name="dormancy_term" value="1">
													<label class="Lbl" for="dormancy_term_1">1년</label>
												</span>
											</div>

										</div>
									</div>
									<!-- //정보보유기간 -->

									<!-- <div class="btn_join">
										<button type="button" id="btn_submit"
											class="inp_join BtnType SizeL defalt ga_data_layer btn_input_complete memeber_1_1_button"
											data-ga_data_layer="ga_lead|member_join|join_pc|step_2" disabled="">회원정보
											완료
										</button>
									</div> -->
									<div class="btn_join_2">
										<button type="button" id="btn_submit"
											class="inp_join BtnType SizeL defalt ga_data_layer btn_input_complete memeber_1_1_button"
											data-ga_data_layer="ga_lead|member_join|join_pc|step_2" disabled="">회원정보
											완료
										</button>
									</div>
							</div>

							<!-- 선택 입력 항목 오른쪽 영역 -->

							</fieldset>
						</div>


				</div>
				</form>

				<!-- 중복가입 알림 레이어 -->
				<div class="member_nudge ModalBox" id="p_member_nudge" style="display:none">
					<h3 class="Tit">이미 가입된 정보입니다</h3>
					<div class="ModalCont">
						<p class="txt_info">가입된 아이디에 회원님의 소중한 이력서와 입사지원 내역 등이 있을 수 있어요!</p>
						<div class="id_already">
							<span>아이디</span>
							<strong id="p_already_id">%nbsp;</strong>
						</div>
						<div class="BtmArea">
							<a href="/zf_user/helpdesk/idpw-find" class="BtnType SizeM search_user">아이디/비밀번호 찾기</a>
							<a href="/zf_user/auth" class="BtnType SizeM">로그인</a>
						</div>
					</div>
					<button type="button" class="btnClose BtnClose close_btn"
						onclick="$('#p_member_nudge').hide();$('#dimmed').hide();"><span
							class="blind">닫기</span></button>
				</div>
				<div id="dimmed" class="sri_dimmed" style="display:none"></div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		(function () {
			var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
			document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
		})();
	</script>
	<script src="https://www.saramin.co.kr/js/wl6.js" type="text/javascript"></script>

	<script type="text/javascript">
		// 1.
		_n_sid = "saramin";
		_n_uid_cookie = "UID";
		_n_info1_cookie = "Mtype";
		n_logging();
	</script>

	<script type="text/javascript">

		function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
			var l = document.location;
			var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
			var label = opt_label || '';
			var value = opt_value || '';
			url = url + '&opt_label=' + label + '&opt_value=' + value;
			n_click_logging(url, l.href);
			try {
				_gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
				ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
			} catch (_e) { }
		}

		function pushDataLayer(event, category, event_flow, event_label) {
			try {
				dataLayer.push({
					'event': event || 'ga_lead',
					'category': category || '',
					'event-flow': event_flow || '',
					'event-label': event_label || ''
				});

			} catch (e) {

			}
		}

		// 클릭 이벤트 + 구글 태그매니져 로깅
		function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
			n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
			pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
		}


		function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
			try {
				var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
				var promotion_log = {};
				promotion_log[ecommerce_type] = {
					'promotions': [
						{
							'id': log_id,
							'name': log_name,
							'creative': log_creative,
							'position': log_position
						}
					]
				};

				var log_data = {
					'event': log_event,
					'ecommerce': promotion_log
				};

				dataLayer.push(log_data);
			} catch (e) {

			}
		}


		function _hwaClick(cc) {
			n_trackEvent('ADs', 'Click-' + cc);
		}

		function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

			try {
				var url = el.href;
				var category = opt_category || '';
				var content = opt_content || '';
				var ref = opt_ref || '';
				var ref_content = opt_ref_content || '';
				var anchor = '';

				if (url.indexOf('#') != -1) {
					var splitUrl = url.split('#');
					url = splitUrl[0];
					anchor = splitUrl[1];
				}

				if (url.indexOf('?') < 0) {
					url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
				} else {
					url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
				}

				if (anchor != '') {
					url += '#' + anchor;
				}

				el.href = url;
			} catch (e) {
			}
		}

		function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

			try {
				var url = el.href;
				var ref = opt_ref || '';
				var ref_content = opt_ref_content || '';
				var ref_scnid = opt_ref_scnid || '';
				var ref_area = opt_ref_area || '';
				var anchor = '';

				var opt = opt_etc || {};

				if (url.indexOf('t_ref') > 0) return;

				if (url.indexOf('#') != -1) {
					var splitUrl = url.split('#');
					url = splitUrl[0];
					anchor = splitUrl[1];
				}

				if (url.indexOf('?') < 0) {
					url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
				} else {
					url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
				}

				if (!!ref_scnid) {
					url += '&t_ref_scnid=' + ref_scnid;
				}

				if (!!ref_area) {
					url += '&t_ref_area=' + ref_area;
				}

				if (anchor != '') {
					url += '#' + anchor;
				}

				if (opt.constructor === Object) {
					for (k in opt) {
						if (opt.hasOwnProperty(k)) {
							url += '&' + k + '=' + opt[k];
						}
					}
				}

				el.href = url;

			} catch (e) {
			}
		}
	</script>


	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

	<script type="text/javascript">
		if (!wcs_add) var wcs_add = {};
		wcs_add["wa"] = "s_1d3a45fb0bfe";
		if (!_nasa) var _nasa = {};
		wcs.inflow();
		wcs_do(_nasa);
	</script>
	<!-- Google Tag Manager -->
	<script>(function (w, d, s, l, i) {
			w[l] = w[l] || []; w[l].push({
				'gtm.start':
					new Date().getTime(), event: 'gtm.js'
			}); var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
					'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-MK2GBBH');</script>
	<!-- End Google Tag Manager -->
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.jsp?id=GTM-MK2GBBH" height="0" width="0"
			style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	<div id="_sticky_warp" role="complementary"></div>

	<link href="/sri_css/login.css?v=20230713103234" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/libs/secure/rsa.min.js"></script>
	<script type="text/javascript" src="/js/libs/secure/secure-login.js?v=131018"></script>

	<div id="pop_login_layer_dimmed"
		style="display:none;position:fixed;top:0;left:0;width:100%;height:100%;background:url(//www.saraminimage.co.kr/event_2014/0708_rank1/bg_dimmed.png) repeat 0 0;z-index:9998;">
	</div>
	<div id="pop_login_layer" class="pop_login_layer" style="display: none; position: absolute; top: 280px;"
		role="dialog" aria-labelledby="login_title">
		<div class="outer">
			<form name="loginFrm" id="loginFrm" action="https://www.saramin.co.kr/zf_user/auth/login" method="post"
				onsubmit="return loginCheckMainLayer(this);">
				<input type="hidden" name="page_url" id="page_url"
					value="L3pmX3VzZXIvbWVtYmVyL3JlZ2lzdHJhdGlvbi9qb2luLWRldGFpbD91dD1w">
				<input type="hidden" name="url" value="">
				<input type="hidden" name="allowType" value="">
				<input type="hidden" name="ut" value="">
				<input type="hidden" name="layerScrapIdx" value="">
				<input type="hidden" name="layerFavorIdx" value="">
				<input type="hidden" name="rec_apply_fl" value="n">
				<input type="hidden" name="encid" value="" id="encid"><input type="hidden" name="encpw" value=""
					id="encpw"><input type="hidden" name="seq" value="" id="seq">
				<fieldset class="inner">
					<h4 id="login_title" class="title"><span class="txt_point">로그인</span>이 필요한 서비스입니다.</h4>
					<div class="setting">
						<span class="inpChk">
							<input type="checkbox" id="ly_autologin" class="setting_inp" name="autologin"
								onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
							<label class="setting_label" for="ly_autologin"
								onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
								로그인 유지
							</label>
						</span>
						<span class="inpChk">
							<input type="checkbox" id="ly_id_save" class="setting_inp" name="id_save"
								onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
							<label class="setting_label" for="ly_id_save"
								onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
								아이디 저장
							</label>
						</span>
						<span class="inpChkSwP ssl_login_box">
							<input type="checkbox" id="ly_ssl_login" title="보안접속" class="ssl_login_hide"
								checked="checked">
							<label for="ly_ssl_login" id="ly_ssl_login_label" class="lbl label_type">보안</label>
						</span>
					</div>
					<div id="login_form" class="login-form">
						<div id="id_input_form" class="id-input-box focus">
							<input type="text" name="id" id="ly_id" class="txt_tool" value="" required="">
							<label id="ly-id-label" class="id-label" for="ly_id"><span>아이디</span></label>
						</div>
						<div id="pw_input_form" class="pw-input-box">
							<input type="password" name="password" id="ly_password" value="" required="">
							<label id="ly-password-label" for="ly_password"><span>비밀번호</span></label>
						</div>
						<button type="submit" class="btn-login"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login',''],['ga_lead','login','pc_login_layer','per_login'])"><span>로그인</span></button>
					</div>
					<div class="signup-forgotten">
						<a href="/zf_user/member/registration/join" target="_blank" class="sign_up">회원가입</a>
						<a href="/zf_user/helpdesk/idpw-find" target="_blank" class="forgotten">아이디/비밀번호 찾기</a>
					</div>
					<div class="social_login_tit">
						<p class="tit">소셜 계정으로 간편 로그인</p>
					</div>
					<ul class="social_login" id="wrap_social_login">
						<li class="login_naver">
							<a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
								class="sl_naver ga_data_layer" data-provider="naver"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_naver"></use>
									</svg></span></a>
						</li>
						<li class="login_kakao">
							<a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
								class="sl_kakao ga_data_layer" data-provider="kakao"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_kakao"></use>
									</svg></span></a>
						</li>
						<li class="login_google">
							<a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
								class="sl_google ga_data_layer" data-provider="google"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_google"></use>
									</svg></span></a>
						</li>
						<li class="login_facebook">
							<a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
								class="sl_facebook ga_data_layer" data-provider="facebook"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_facebook"></use>
									</svg></span></a>
						</li>
						<li class="login_apple">
							<a href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
								class="sl_apple ga_data_layer" data-provider="apple"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_apple"></use>
									</svg></span></a>
						</li>
					</ul>
				</fieldset>
			</form>
			<button class="pop_login_layer_close" id="pop_login_layer_close">닫기</button>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" style="display:none">
			<symbol id="icon_login_naver" viewBox="0 0 20 20" fill="none">
				<path d="M13.5615 10.704L6.14588 0H0V20H6.43845V9.296L13.8541 20H20V0H13.5615V10.704Z" fill="white">
				</path>
			</symbol>
			<symbol id="icon_login_kakao" viewBox="0 0 24 22" fill="none">
				<path
					d="M12 -0.00012207C5.37092 -0.00012207 0 4.23616 0 9.46609C0 12.868 2.27684 15.8528 5.69401 17.5215C5.44314 18.4545 4.78556 20.9082 4.65252 21.4316C4.48907 22.0839 4.89199 22.0725 5.15426 21.8981C5.35952 21.7616 8.44219 19.6681 9.77257 18.7654C10.4948 18.8716 11.2398 18.9285 12 18.9285C18.6291 18.9285 24 14.6922 24 9.4623C24 4.23237 18.6291 -0.00012207 12 -0.00012207Z"
					fill="#181600"></path>
			</symbol>
			<symbol id="icon_login_google" viewBox="0 0 22 22" fill="none">
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M21.5593 11.25C21.5593 10.4697 21.4888 9.72048 21.3593 9.00027H10.9998V13.2552H16.9199C16.665 14.6303 15.8899 15.7951 14.7251 16.5754V19.3349H18.2805C20.3603 17.4199 21.5603 14.6002 21.5603 11.25H21.5593Z"
					fill="#4285F4"></path>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M10.9993 22.0002C13.9692 22.0002 16.4594 21.0147 18.2791 19.3349L14.7236 16.5754C13.7382 17.2355 12.4791 17.6251 10.9983 17.6251C8.133 17.6251 5.70815 15.6904 4.84287 13.0904H1.16931V15.9401C2.97966 19.5349 6.69881 22.0002 10.9993 22.0002Z"
					fill="#34A853"></path>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M4.84453 13.0895C4.62484 12.4294 4.49946 11.7248 4.49946 10.9994C4.49946 10.274 4.62484 9.56933 4.84453 8.90923V6.05951H1.16994C0.424868 7.54448 0 9.22426 0 10.9994C0 12.7745 0.424868 14.4543 1.16994 15.9392L4.84453 13.0895Z"
					fill="#FBBC05"></path>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M10.9993 4.37511C12.6138 4.37511 14.0646 4.93054 15.2045 6.01966L18.3599 2.86423C16.4542 1.09015 13.9641 0 10.9993 0C6.69881 0 2.97966 2.46527 1.16931 6.06007L4.8439 8.90979C5.70918 6.30981 8.13404 4.37511 10.9993 4.37511Z"
					fill="#EA4335"></path>
			</symbol>
			<symbol id="icon_login_facebook" viewBox="0 0 14 26" fill="none">
				<path
					d="M4.60526 25.5H8.9386V14.4801H12.9504L13.3677 10.3223C13.3677 10.3223 13.4544 10.118 13.0165 10.118H8.9386V6.97963C8.9386 6.97963 8.75842 4.60805 11.1053 4.60805H13.5V0.937039C13.5 0.937039 12.4691 0.477875 9.97404 0.500833C9.97404 0.500833 7.77316 0.473283 6.05123 2.13086C6.05123 2.13086 4.60526 3.43489 4.60526 4.9134V10.118H0.5V14.4801H4.60526V25.5Z"
					fill="white"></path>
			</symbol>
			<symbol id="icon_login_apple" viewBox="0 0 22 25" fill="none">
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M8.48584 5.81313C8.27201 4.15256 9.4239 0.539339 13.4774 0C13.9464 2.78179 11.6001 5.97873 8.48584 5.81313Z"
					fill="white"></path>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M20.7747 8.39829C19.4527 7.15287 18.3008 5.94884 15.8694 5.82349C13.9071 5.7407 13.0115 6.90332 11.1768 6.94472C9.47077 6.98612 9.59836 5.6579 6.0576 6.03164C2.98587 6.36283 0.298109 9.35277 0.511949 13.5467C0.725788 18.073 3.96764 24.3427 6.99566 24.3427C9.12815 24.3013 9.64089 23.3043 11.3894 23.3043C13.5644 23.3043 14.0772 24.5497 15.7832 24.3002C18.7261 23.885 21.499 19.3587 21.499 17.9063C19.878 17.076 18.2571 15.6638 18.0433 13.2972C17.8731 10.9305 19.3653 9.43557 20.7736 8.39714L20.7747 8.39829Z"
					fill="white"></path>
			</symbol>
		</svg>
		<script type="text/javascript">

			var getId = (function () {
				var elCache = {};
				return function (id) {
					if (!elCache[id]) {
						elCache[id] = document.getElementById(id);
					}
					return elCache[id];
				}
			})();

			var page_url = 'L3pmX3VzZXIvbWVtYmVyL3JlZ2lzdHJhdGlvbi9qb2luLWRldGFpbD91dD1w';


			function addEvent(ele, eventType, func) {
				var obj = typeof ele === 'string' ? getId(ele) : ele;
				if (obj.addEventListener) {
					obj.addEventListener(eventType, func, false);
				} else if (obj.attachEvent) {//IE
					obj.attachEvent('on' + eventType, func);
				}
			}


			//창닫기
			addEvent("pop_login_layer_close", "click", function () {
				getId('page_url').value = page_url;
				getId('pop_login_layer').style.display = 'none';
				getId('pop_login_layer_dimmed').style.display = 'none';
				/**
				 * 신입인턴 홈에서 버튼 클릭후 로그인레이어 창 띄우고 닫았을때 사용되는 부분입니다.
				 */
				if (window.jobsHomeClickBeforeDom) window.jobsHomeClickBeforeDom.focus();
			});

			/**
			 * 로그인 모달 창 마지막 포커스 닫기 버튼에 tab 키로 이동시 모달안으로 포커스 유지하기 위해 ly_autologin 이동
			 */
			addEvent("pop_login_layer_close", "keydown", function (e) {
				var keycode = e.keyCode;
				if (keycode === 9) {
					if (!e.shiftKey) {
						e.preventDefault();
						document.querySelector('#ly_autologin').focus();
					}
				}
			});

			/**
			 * 로그인 모달 창 첫 포커스 element인 로그인 유지에 tab+shift일때 닫기 버튼으로 포커스이동
			 */
			addEvent("ly_autologin", "keydown", function (e) {
				var keycode = e.keyCode;
				if (keycode === 9) {
					if (e.shiftKey && e.target) {
						e.preventDefault();
						document.querySelector('#pop_login_layer_close').focus();
					}
				}
			});


			//폼  체크
			function loginCheckMainLayer(form) {
				if (form.id.value === "") {
					alert("아이디를 입력하세요.");
					form.id.focus();
					return false;
				}
				if (form.id.value.indexOf(" ") > 0) {
					alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
					form.id.focus();
					return false;
				}
				if (form.id.value.length < 4) {
					alert("아이디는 4자이상이어야 합니다");
					form.id.focus();
					return false;
				}
				if (form.password.value === "") {
					alert("비밀번호를 입력하세요");
					form.password.focus();
					return false;
				}
				if (form.password.value.length < 4 || form.password.value.length > 32) {
					alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
					form.password.focus();
					return false;
				}

				if (form['ly_ssl_login'].checked) {
					SecureLogin.encrypt(form);
				}

				return true;
			}

			//페이지 로딩시 초기화 시켜 준다.
			setTimeout(function () {
				var idInPut = getId('ly_id');
				var pwInput = getId('ly_password');
				if (!getId('ly_id').value) {
					idInPut.value = '';
					idInPut.blur();
				}
				pwInput.value = '';
				pwInput.blur();
			}, 50);

			/**
			 *
			 * @param name
			 * @param value
			 * @param expiredays
			 */
			function setHoursCookie(name, value, expiredays) {
				var todayDate = new Date();
				todayDate.setHours(todayDate.getHours() + expiredays);
				document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
			}


			(document.addEventListener('DOMContentLoaded', function (e) {

				var socialLoginBtnList = document.querySelectorAll('#pop_login_layer .social_login li a');

				[].forEach.call(socialLoginBtnList, function (socialLoginBtn) {
					socialLoginBtn.addEventListener('click', function (e) {
						e.preventDefault();
						e.stopPropagation();

						var link = e.currentTarget.href,
							provider = e.currentTarget.dataset.provider,
							isCompany = '',
							label = isCompany ? 'com_login_' : 'per_login_';

						label += provider;
						loggingEventAndTagManager(['login', 'pc_login_layer', label, ''], ['ga_lead', 'login', 'pc_login_layer', label]);

						//소셜 버튼을 누를때 쿠키를 만들어 주고 소셜 회원 가입 완료 페이지에서 사용 한다.
						setHoursCookie('login_referer_url', encodeURIComponent(location.href.replace(/.*\/\/[^\/]*/, '')), 1);

						if ((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple') {
							if (confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
								'인터넷 익스플로러를 최신 버전으로 업데이트 해주세요')) {
								window.open(link, '_blank', 'width=480,height=640');
							}
							return;
						}
						window.open(link, '_blank', 'width=480,height=640');
					});
				});

				var isCompany = '';
				var toolTipClass = document.getElementsByClassName('social_tooltip');

				if (toolTipClass.length > 0 && isCompany) {
					toolTipClass[0].style.display = "none";
				}

				var popLoginLayer = document.getElementById('pop_login_layer');
				if (toolTipClass.length > 0 && !isCompany) {
					var fadeTarget = toolTipClass[0],
						fadeEffect = null,
						fadeTimeOut = null;

					var startToolTipInterval = function () {
						fadeEffect = setInterval(function () {
							if (!fadeTarget.style.opacity) {
								fadeTarget.style.opacity = 1;
							}
							if (fadeTarget.style.opacity > 0) {
								fadeTarget.style.opacity -= 0.1;
							} else {
								clearInterval(fadeEffect);
							}
						}, 20);
					};

					var hideSocialTooltip = function () {
						fadeTimeOut = setTimeout(function () {
							startToolTipInterval();
						}, 5000);
					};
				}

				var respondToVisibility = function (element, callback) {
					var options = {
						root: document
					};

					var observer = new IntersectionObserver(function (entries, observer) {
						entries.forEach(function (entry) {
							callback(entry.intersectionRatio > 0);
						});
					}, options);

					observer.observe(element);
				};

				respondToVisibility(popLoginLayer, function (visible) {
					if (visible) {
						if (toolTipClass.length > 0 && !isCompany) {
							fadeTarget.style.display = 'block';
							fadeTarget.style.opacity = 1;
							clearInterval(fadeEffect);
							clearTimeout(fadeTimeOut);
							hideSocialTooltip();
						}

						document.getElementsByTagName('jsp')[0].style.overflow = 'hidden';
						document.getElementsByTagName('jsp')[0].style.height = '100%';
						document.getElementsByTagName('body')[0].style.height = '100%';
					} else {
						document.getElementsByTagName('jsp')[0].style.overflow = '';
						document.getElementsByTagName('jsp')[0].style.height = '';
						document.getElementsByTagName('body')[0].style.height = '';
					}
				});

			}))
		</script>
	</div>
	<div class="img_svg_layout" style="display: none"><!--
svg 파일 수정시 nocache 수동갱신 필요
default-layout.js
search-header.js
-->
		<svg xmlns="http://www.w3.org/2000/svg">
			<symbol id="svg_saramin_ci" viewBox="0 0 126 40">
				<g transform="translate(29 7)">
					<path fill="#4876EF"
						d="M22.467 19.27l-.039.023c-.288.175-1.166.708-2.76.708-1.653 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.912.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.307.636-.597.636-1.193v-6.56c0-3.555-2.054-5.357-6.104-5.357-1.692 0-3.302.343-4.082.663-.784.308-1.181.834-1.181 1.56zM63.698 9.889l-.051-.054c-1.01-1.03-2.28-1.51-4-1.51-1.85 0-3.723.568-5.01 1.52-.517.36-.69.677-.69 1.255v10.017c0 .964.815 1.779 1.78 1.779 1.015 0 1.78-.765 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.549 0 2.335.843 2.335 2.504v6.92c0 .964.815 1.779 1.78 1.779.998 0 1.78-.782 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.528 0 2.335.875 2.335 2.53v6.894c0 .964.802 1.779 1.751 1.779 1.015 0 1.81-.782 1.81-1.779v-6.974c0-3.914-1.865-5.817-5.702-5.817-1.616 0-3.156.525-4.453 1.517l-.059.046zM47.529 19.27l-.039.023c-.288.175-1.164.708-2.76.708-1.654 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.911.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.306.635-.596.635-1.193v-6.56c0-3.555-2.053-5.357-6.102-5.357-1.694 0-3.304.343-4.083.663-.784.308-1.181.833-1.181 1.56zM36.129 8.539c-.548-.131-1.464-.213-2.391-.213-3.084 0-4.853 1.649-4.853 4.525v8.388c0 .914.774 1.657 1.725 1.657.016-.002.024-.004.033-.004l.03.002h.002c1.014 0 1.801-.768 1.801-1.75v-7.62c0-1.201.504-1.8 1.54-1.83.472-.017.869.06 1.25.133.296.056.575.109.856.109 1.148 0 1.683-.965 1.683-1.617 0-.87-.595-1.501-1.676-1.78M7.806 14.497l-2.203-.44c-1.233-.27-1.758-.665-1.758-1.325 0-.382.203-1.27 2.085-1.27.78 0 1.908.264 2.624.615.893.45 1.812.371 2.344-.202.296-.332.452-.799.416-1.246-.025-.301-.145-.733-.577-1.083-.899-.73-2.774-1.22-4.667-1.22-3.454 0-5.686 1.772-5.686 4.516 0 2.572 2.217 3.668 4.076 4.134.638.16.956.216 1.325.281.264.047.538.095.961.187 1.177.274 1.7.7 1.7 1.38 0 .493-.284 1.32-2.19 1.32-1.32 0-2.748-.363-3.637-.924-.359-.224-.726-.334-1.073-.334-.488 0-.935.217-1.256.643-.492.633-.34 1.663.323 2.205.578.474 2.274 1.578 5.524 1.578 3.443 0 5.757-1.893 5.757-4.71 0-2.142-1.338-3.485-4.088-4.105M78.584 6.66c-.968 0-1.699.76-1.699 1.768v9.37c0 .958.778 1.767 1.699 1.767.953 0 1.7-.776 1.7-1.767v-9.37c0-.99-.747-1.767-1.7-1.767">
					</path>
					<path fill="#4876EF"
						d="M78.584 0c-1.453 0-2.549 1.059-2.549 2.462 0 1.42 1.12 2.533 2.55 2.533 1.38 0 2.548-1.16 2.548-2.533 0-1.38-1.12-2.462-2.549-2.462"
						mask="url(#1f8v900bkb)"></path>
					<path fill="#4876EF"
						d="M89.736 8.326c-3.553 0-5.485 1.221-5.843 1.466-.476.323-.636.64-.636 1.255v10.07c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-8.742l.038-.023c.522-.317 1.58-.659 2.75-.659 1.35 0 2.795.686 2.795 2.612v6.812c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-6.974c0-3.806-2.166-5.817-6.264-5.817"
						mask="url(#09ysurdxqd)"></path>
				</g>
				<g>
					<circle cx="4.5" cy="14.5" r="4.5" fill="#4876EF"></circle>
					<circle cx="16.5" cy="14.5" r="4.5" fill="currentColor"></circle>
					<circle cx="4.5" cy="26.5" r="4.5" fill="currentColor"></circle>
					<circle cx="16.5" cy="26.5" r="4.5" fill="#00D3AB"></circle>
				</g>
			</symbol>
			<symbol id="svg_gnb_profile_bracket" viewBox="0 0 10 6">
				<path d="M1 1L5 5L9 1" stroke="currentColor" stroke-width="1.2" stroke-linecap="round" fill="none">
				</path>
			</symbol>
			<symbol id="svg_gnb_profile_arrow" viewBox="0 0 16 16">
				<path fill="currentColor" d="M92 18L100 18 96 23z"
					transform="translate(-1976 -481) translate(120 445) translate(1768 24)"></path>
			</symbol>
			<symbol id="svg_gnb_search" viewBox="0 0 24 24">
				<g fill="none">
					<circle cx="11" cy="11" r="8.75" stroke="#4876EF" stroke-width="2.5"></circle>
					<path d="M22 21L18 17" stroke="#4876EF" stroke-width="2.5" stroke-linecap="round"></path>
				</g>
			</symbol>
			<symbol id="svg_gnb_social1" viewBox="0 0 16 16">
				<path fill="#58B04B"
					d="M2.034 3L2 12.968 6.154 12.984 6.171 8.953 5.897 7.691 9.829 12.968 14 13 13.983 3.032 9.812 3.016 9.897 7.128 10.171 8.596 6.171 3.016z">
				</path>
			</symbol>
			<symbol id="svg_gnb_social2" viewBox="0 0 16 16">
				<path fill="#3C5A9A"
					d="M6.087 14V7.614h2.36l.352-2.489H6.087V3.536c0-.72.22-1.212 1.358-1.212h1.45V.098C8.644.068 7.783 0 6.782 0 4.69 0 3.26 1.16 3.26 3.29v1.835H.895v2.489h2.364V14h2.828z"
					transform="translate(3.105 1)"></path>
			</symbol>
			<symbol id="svg_gnb_social3" viewBox="0 0 16 16">
				<path fill="#4285F4"
					d="M11.758 6.133c0-.494-.04-.854-.126-1.227H5.999v2.226h3.306C9.24 7.686 8.88 8.52 8.08 9.08l-.011.074 1.78 1.38.124.012c1.133-1.046 1.786-2.586 1.786-4.412"
					transform="translate(2 2)"></path>
				<path fill="#34A853"
					d="M6 11.998c1.619 0 2.979-.533 3.972-1.453L8.079 9.08c-.507.353-1.187.6-2.08.6-1.586 0-2.933-1.047-3.413-2.493l-.07.006L.664 8.625l-.024.067c.986 1.96 3.013 3.306 5.36 3.306"
					transform="translate(2 2)"></path>
				<path fill="#FBBC05"
					d="M2.586 7.186c-.126-.374-.2-.774-.2-1.187 0-.413.074-.813.194-1.186l-.004-.08L.701 3.277l-.061.03C.233 4.118 0 5.032 0 5.998c0 .967.233 1.88.64 2.693l1.946-1.506"
					transform="translate(2 2)"></path>
				<path fill="#EB4335"
					d="M6 2.32c1.126 0 1.886.486 2.319.893l1.693-1.653C8.972.593 7.619 0 5.999 0 3.653 0 1.626 1.346.64 3.306l1.94 1.507C3.067 3.366 4.414 2.32 6 2.32"
					transform="translate(2 2)"></path>
			</symbol>
			<symbol id="svg_gnb_social4" viewBox="0 0 16 16">
				<path fill="#000"
					d="M7 .02C3.15.02.03 2.494.03 5.545c0 1.972 1.305 3.703 3.267 4.68-.107.37-.686 2.382-.709 2.54 0 0-.014.119.063.164.076.045.166.01.166.01.22-.03 2.543-1.671 2.945-1.956.402.057.816.087 1.238.087 3.85 0 6.97-2.474 6.97-5.525S10.85.02 7 .02z"
					transform="translate(1 2)"></path>
				<path fill="#FFF"
					d="M3.147 7.473c-.222 0-.403-.173-.403-.386V4.686h-.627c-.218 0-.395-.178-.395-.396 0-.218.177-.396.395-.396h2.059c.218 0 .395.178.395.396 0 .218-.177.396-.395.396h-.627v2.401c0 .213-.18.386-.402.386zm3.525-.005c-.167 0-.296-.068-.334-.178l-.2-.524H4.914l-.2.524c-.038.11-.166.178-.334.178-.088 0-.175-.019-.256-.056-.11-.051-.217-.192-.095-.574l.962-2.545c.068-.193.273-.393.535-.399.263.006.469.206.537.4l.961 2.544c.122.382.016.523-.095.574-.08.037-.167.056-.256.056zM5.927 6.05l-.401-1.147-.402 1.147h.803zM7.67 7.414c-.212 0-.385-.166-.385-.37V4.298c0-.223.184-.404.41-.404.227 0 .41.181.41.404v2.375h.855c.213 0 .386.167.386.37 0 .205-.173.371-.386.371H7.67zm2.234.054c-.222 0-.402-.181-.402-.404V4.298c0-.223.18-.404.402-.404.222 0 .402.181.402.404v.87l1.122-1.129c.058-.058.137-.09.223-.09.1 0 .201.044.277.12.07.07.112.162.118.256.006.095-.026.183-.089.246l-.916.921.99 1.319c.064.085.092.193.077.299-.015.106-.07.202-.156.267-.07.053-.155.081-.242.081-.126 0-.245-.059-.321-.16l-.943-1.257-.14.14v.883c0 .223-.18.404-.402.404z"
					transform="translate(1 2)"></path>
			</symbol>
			<symbol id="svg_gnb_social5" viewBox="0 0 16 16">
				<path
					d="M9.187 7.438C9.206 9.556 10.98 10.26 11 10.27c-.015.05-.284 1.005-.935 1.992-.563.852-1.147 1.702-2.068 1.72-.904.017-1.195-.556-2.23-.556-1.033 0-1.357.538-2.213.573-.888.035-1.565-.922-2.133-1.772C.261 10.49-.626 7.316.565 5.173 1.156 4.11 2.213 3.436 3.36 3.42c.873-.018 1.696.608 2.23.608.533 0 1.534-.752 2.586-.642.44.02 1.677.185 2.47 1.389-.063.041-1.474.892-1.46 2.664m-1.7-5.203C7.96 1.644 8.277.82 8.19 0 7.51.028 6.687.47 6.2 1.061c-.437.524-.82 1.362-.716 2.166.758.06 1.532-.4 2.004-.992"
					transform="translate(3 1)"></path>
			</symbol>
			<symbol id="svg_gnb_member_photo" viewBox="0 0 32 32">
				<circle cx="16" cy="16" r="16" fill="#ccd0d6"></circle>
				<path stroke="#FFF" fill="#ccd0d6" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
					d="M25 24c0-2.21-2.015-4-4.5-4h-9C9.015 20 7 21.79 7 24"></path>
				<path stroke="#FFF" fill="#ccd0d6" stroke-width="1.5"
					d="M16 8h3.5c.276 0 .5.224.5.5V12c0 2.21-1.79 4-4 4s-4-1.79-4-4 1.79-4 4-4z"></path>
			</symbol>
			<symbol id="svg_gnb_plus" viewBox="0 0 10 10">
				<rect y="4" width="10" height="2" fill="currentColor"></rect>
				<rect x="4" y="10" width="10" height="2" transform="rotate(-90 4 10)" fill="currentColor"></rect>
			</symbol>
			<symbol id="svg_gnb_write" viewBox="0 0 24 24">
				<path fill="none" stroke="currentColor"
					d="M0 11.427V14.3c0 .11.09.2.2.2h2.655c.254 0 .498-.097.683-.27L14.246 4.206c.403-.377.424-1.01.046-1.413l-.023-.024L12.192.692C11.807.307 11.186.3 10.793.676L.31 10.705c-.197.188-.309.45-.309.722zM12.25 5.5L8.75 2"
					transform="translate(-1562 -2145) translate(1542 2089) translate(1 48) translate(19 8) translate(4.5 5)">
				</path>
			</symbol>
			<symbol id="svg_gnb_total_off" viewBox="0 0 20 40">
				<g fill="currentColor">
					<rect width="20" height="2" y="13" rx="1"></rect>
					<path d="M1 19h12c.552 0 1 .448 1 1s-.448 1-1 1H1c-.552 0-1-.448-1-1s.448-1 1-1z"></path>
					<rect width="20" height="2" y="25" rx="1"></rect>
				</g>
			</symbol>
			<symbol id="svg_gnb_total_on" viewBox="0 0 20 40">
				<path fill="currentColor"
					d="M3.343 11.929L10 18.585l6.657-6.656c.39-.39 1.024-.39 1.414 0 .39.39.39 1.024 0 1.414L11.415 20l6.656 6.657c.39.39.39 1.024 0 1.414-.39.39-1.024.39-1.414 0L10 21.415l-6.657 6.656c-.39.39-1.024.39-1.414 0-.39-.39-.39-1.024 0-1.414L8.585 20l-6.656-6.657c-.39-.39-.39-1.024 0-1.414.39-.39 1.024-.39 1.414 0z">
				</path>
			</symbol>
			<symbol id="svg_gnb_link1" viewBox="0 0 20 20">
				<path d="M9.99805 10.1289L19.0002 7.5396L9.99805 1V10.1289Z" fill="#B0C8FA"></path>
				<path d="M9.99805 10.1172L19.0002 7.52783L15.561 18.1086L9.99805 10.1172Z" fill="#6D9CFA"></path>
				<path d="M10.0004 10.1333L4.4375 18.1247H15.5633L10.0004 10.1333Z" fill="#387BFF"></path>
				<path d="M10.0002 10.1587L1 7.56939L10.0002 1.02979V10.1587Z" fill="#6D9CFA"></path>
				<path d="M10.0002 10.1689L1 7.57959L4.43732 18.1603L10.0002 10.1689Z" fill="#387BFF"></path>
			</symbol>
			<symbol id="svg_gnb_link2" viewBox="0 0 20 20">
				<g fill="none">
					<path
						d="M9.50055 17C5.91035 17 3 14.0906 3 10.4997C3 6.90944 5.9103 4 9.50055 4C13.0901 4 16 6.90929 16 10.4997C16 14.0908 13.0901 17 9.50055 17Z"
						fill="white" stroke="#BC8EFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
					</path>
					<path
						d="M9.50026 13C8.11931 13 7 11.881 7 10.4999C7 9.11905 8.11926 8 9.50026 8C10.8808 8 12 9.11891 12 10.4999C12 11.8811 10.8808 13 9.50026 13Z"
						fill="white" stroke="#BC8EFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
					</path>
					<path
						d="M13.0538 1.94908C13.3871 1.61585 13.9274 1.61585 14.2606 1.94908L16.0673 3.75579L13.6538 6.16931L13.0538 5.56937C12.0541 4.56965 12.0541 2.9488 13.0538 1.94908Z"
						fill="#955CEA"></path>
					<path
						d="M17.882 6.7694C18.2152 6.43616 18.2152 5.89587 17.882 5.56263L16.0753 3.75593L13.6617 6.16945L14.2617 6.76939C15.2614 7.76911 16.8823 7.76911 17.882 6.7694Z"
						fill="#955CEA"></path>
					<path d="M11.2471 8.57568L9.2358 10.587" stroke="#8491A7" stroke-linecap="round"></path>
					<path
						d="M16.0328 2.89536C16.2889 2.69608 16.6533 2.71874 16.8828 2.94821C17.1122 3.17767 17.1349 3.54211 16.9356 3.79823L12.695 9.24848C12.141 9.96049 11.0846 10.0222 10.4467 9.38426C9.80881 8.74635 9.87049 7.68997 10.5825 7.13598L16.0328 2.89536Z"
						fill="#373F57"></path>
				</g>
			</symbol>
			<symbol id="svg_gnb_link3" viewBox="0 0 20 20">
				<path
					d="M10.3371 1.5737L0.686635 15.9753C0.436625 16.3484 0.767086 16.8364 1.20632 16.7427L19.2382 12.8959C19.5944 12.8199 19.7525 12.4006 19.535 12.1084L16.4286 7.93333L13.5714 9.53333L13.9249 5.10256L11.1466 1.54432C10.9371 1.27604 10.5266 1.29094 10.3371 1.5737Z"
					fill="#94B5FC"></path>
				<path
					d="M13.926 5.125L0.944517 16.3213C0.898468 16.361 0.902589 16.4336 0.952838 16.4679C0.981751 16.4876 1.01931 16.4893 1.04989 16.4723L14.5019 9L13.926 5.125Z"
					fill="#4876EF"></path>
			</symbol>
			<symbol id="svg_gnb_link4" viewBox="0 0 20 20">
				<g fill="none">
					<path fill-rule="evenodd" clip-rule="evenodd"
						d="M2 9.99971C2 14.4192 5.58207 18 10.0006 18C14.4185 18 18 14.4192 18 9.99971C18 5.58077 14.4185 2 10.0006 2C5.58207 2 2 5.58077 2 9.99971Z"
						fill="#00D3AB"></path>
					<path d="M6.99902 7L8.49902 13L10.0005 7L11.499 13L12.999 7" stroke="white" stroke-linecap="round"
						stroke-linejoin="round"></path>
					<path d="M14.5 9.5H5.5" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
				</g>
			</symbol>
			<symbol id="svg_gnb_link5" viewBox="0 0 20 20">
				<path d="M4.537 6h6.708v10.854H3L4.537 6Z" fill="#E5CDFF"></path>
				<path d="M15.463 6H8.755v10.854H17L15.463 6Z" fill="#E5CDFF"></path>
				<path d="M17 16.854C17 18 15 20 10 20s-7-2-7-3.146C3.768 15.36 5.945 14 10 14s5.976 1.438 7 2.854Z"
					fill="#E5CDFF"></path>
				<rect x="18" y="5" width="1" height="9" rx=".5" fill="#BC8EFF"></rect>
				<path
					d="M9.42.143a1.242 1.242 0 0 1 1.16 0l9.066 4.758c.472.248.472.95 0 1.198l-9.066 4.758a1.242 1.242 0 0 1-1.16 0L.354 6.099c-.472-.248-.472-.95 0-1.198L9.42.143Z"
					fill="#955CEA"></path>
				<ellipse cx="10" cy="5" rx="2" ry="1" fill="#fff"></ellipse>
			</symbol>
			<symbol id="svg_gnb_link6" viewBox="0 0 20 20">
				<path d="m9.581 5.973 9.091 2.5V13.7H7.99l1.591-7.727Z" fill="#BCD1FC"></path>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M2.727 13.386V8.035l4.546-.99.675.388 4.39 1.177 3.074.823a.909.909 0 1 1-.47 1.757l-2.854-.765a.227.227 0 0 0-.118.439l2.854.765a.909.909 0 1 1-.47 1.756l-2.855-.765a.227.227 0 0 0-.117.44l1.975.529a.91.91 0 0 1-.47 1.756l-1.976-.53a.227.227 0 0 0-.118.44l1.098.294a.909.909 0 1 1-.47 1.756l-1.318-.353-1.156-.31a15 15 0 0 1-4.756-2.225l-1.464-1.031Z"
					fill="#4876EF"></path>
				<path
					d="M.61 7.655a1 1 0 0 1 1-1h1.523a1 1 0 0 1 .994 1.107l-.651 6.091a1 1 0 0 1-.995.894H1.61a1 1 0 0 1-1-1V7.655Z"
					fill="#4876EF"></path>
				<path
					d="M8.537 6.083c.378-.216.826-.27 1.245-.15l8.891 2.54-9.181-.355-2.366 1.375a1.132 1.132 0 1 1-1.13-1.961l2.54-1.449Z"
					fill="#BCD1FC"></path>
				<path
					d="M19.58 7.655a1 1 0 0 0-1-1h-1.524a1 1 0 0 0-.994 1.107l.652 6.091a1 1 0 0 0 .994.894h.872a1 1 0 0 0 1-1V7.655Z"
					fill="#BCD1FC"></path>
			</symbol>
			<symbol id="svg_gnb_cs" viewBox="0 0 20 20">
				<path
					d="M16.8436 6.51589C16.6152 3.34476 13.9694 0.835938 10.7434 0.835938H10.0122C6.79074 0.835938 4.14973 3.34002 3.91199 6.50218H3.87083C3.13967 6.50218 2.5 7.23335 2.5 8.14718V10.4776C2.5 11.3914 3.09408 12.1226 3.87083 12.1226H5.28283V6.54801C5.50223 4.15821 7.57667 2.20716 10.0122 2.20716H10.7434C13.3206 2.20716 15.4955 4.38229 15.4955 6.95926V12.1684C15.4955 14.4897 13.7865 16.4819 11.502 16.8567C11.269 16.5368 10.8943 16.3266 10.4693 16.3266C9.76112 16.3266 9.18983 16.8977 9.18983 17.6061C9.18983 18.3143 9.76096 18.8856 10.4693 18.8856C10.9445 18.8856 11.3558 18.6252 11.5752 18.2367C14.591 17.8163 16.8666 15.2071 16.8666 12.1686V12.1047C17.6937 12.0179 18.3333 11.3325 18.3333 10.4779V8.14747C18.3333 7.28838 17.6799 6.5938 16.8436 6.51625L16.8436 6.51589Z"
					fill="currentColor"></path>
			</symbol>
			<symbol id="svg_gnb_notice" viewBox="0 0 20 20">
				<path
					d="M7 6.60606C7 6.19477 7.25183 5.82542 7.6347 5.67517L15.6347 2.53578C16.2907 2.27836 17 2.762 17 3.46667V14.5333C17 15.238 16.2907 15.7216 15.6347 15.4642L7.6347 12.3248C7.25183 12.1746 7 11.8052 7 11.3939V6.60606Z"
					fill="currentColor"></path>
				<path
					d="M2 9C2 7.34315 3.34315 6 5 6H5.47826C5.76641 6 6 6.23359 6 6.52174V11.4783C6 11.7664 5.76641 12 5.47826 12H5C3.34315 12 2 10.6569 2 9Z"
					fill="currentColor"></path>
				<rect x="7" y="8" width="2" height="10" rx="1" fill="currentColor"></rect>
			</symbol>
			<symbol id="svg_gnb_event" viewBox="0 0 20 20">
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M2.55331 17.2127L3.80093 13.8361L6.9941 17.0295L3.61817 18.2767C3.30726 18.3914 2.97865 18.3195 2.74501 18.0855C2.51103 17.8515 2.43894 17.5231 2.55342 17.2127L2.55331 17.2127ZM9.59867 2.57853C9.38923 2.36943 9.38923 2.03032 9.59867 1.82089C9.80778 1.61179 10.1469 1.61179 10.3563 1.82089C11.158 2.62309 11.5592 3.67432 11.5592 4.72516C11.5592 5.77601 11.158 6.82758 10.3563 7.62944C10.1469 7.83888 9.80776 7.83888 9.59867 7.62944C9.38923 7.42033 9.38923 7.08122 9.59867 6.8718C10.1913 6.27902 10.4873 5.50152 10.4873 4.72499C10.4873 3.94881 10.1911 3.17114 9.59867 2.57819V2.57853ZM8.95899 4.04062C9.22934 4.31097 9.22934 4.74956 8.95899 5.02008C8.68864 5.29026 8.25022 5.29026 7.97988 5.02008C7.70952 4.74973 7.70952 4.31114 7.98021 4.04096C8.25039 3.76994 8.68863 3.76994 8.95898 4.04063L8.95899 4.04062ZM16.7904 11.8717C17.0608 12.1423 17.0608 12.5804 16.7904 12.8511C16.5198 13.1213 16.0815 13.1213 15.811 12.8511C15.5403 12.5804 15.5403 12.1423 15.811 11.872C16.0813 11.6013 16.5198 11.6013 16.7904 11.8717V11.8717ZM13.9526 3.43866C14.2229 3.70885 14.2229 4.1476 13.9526 4.41778C13.6819 4.68846 13.2436 4.68846 12.9734 4.41778C12.7031 4.14759 12.7031 3.70884 12.9734 3.43866C13.2436 3.16831 13.6819 3.16831 13.9526 3.43866ZM17.3916 6.87782C17.6622 7.14851 17.6619 7.58659 17.3916 7.85694C17.1214 8.12729 16.6828 8.12729 16.4128 7.85694C16.1421 7.58658 16.1421 7.14851 16.4128 6.87782C16.683 6.60747 17.1215 6.60747 17.3916 6.87782ZM19.0098 10.4742C19.2189 10.6836 19.2189 11.0228 19.0098 11.2318C18.8002 11.4413 18.4613 11.4413 18.2522 11.2318C17.6594 10.6392 16.8817 10.3432 16.1054 10.3432C15.3289 10.3432 14.5515 10.6394 13.9586 11.2318C13.7491 11.4413 13.41 11.4413 13.2009 11.2318C12.9915 11.0227 12.9915 10.6836 13.2009 10.4742C14.0028 9.67247 15.0544 9.27131 16.1052 9.27131C17.1561 9.27131 18.2073 9.67249 19.0095 10.4742H19.0098ZM12.1576 9.43066C11.9481 9.6401 11.609 9.6401 11.3999 9.43066C11.1905 9.22156 11.1905 8.88245 11.3999 8.67302L16.4074 3.66552C16.6165 3.45608 16.956 3.45608 17.1651 3.66552C17.3742 3.87462 17.3742 4.21408 17.1651 4.42316L12.1576 9.43066ZM4.20992 12.7295L5.15917 10.1606L10.6704 15.6718L8.10151 16.6207L4.20992 12.7295ZM5.56802 9.05402L6.26141 7.17688C6.36204 6.90386 6.57732 6.71676 6.86136 6.65438C7.14539 6.59214 7.4191 6.67224 7.62485 6.87784L13.9529 13.2059C14.1587 13.4117 14.2389 13.6854 14.1764 13.9694C14.114 14.2536 13.9269 14.4687 13.6539 14.569L11.7767 15.2627L5.56787 9.05387L5.56802 9.05402Z"
					fill="currentColor"></path>
			</symbol>
			<symbol id="svg_default_close" viewBox="0 0 40 40">
				<g fill="none">
					<path d="M26 14L14 26" stroke="currentColor" stroke-width="2" stroke-linecap="round"></path>
					<path d="M14 14L26 26" stroke="currentColor" stroke-width="2" stroke-linecap="round"></path>
				</g>
			</symbol>
			<symbol id="svg_search_input" viewBox="0 0 20 21">
				<circle fill="none" cx="9" cy="9" r="7.5" stroke="currentColor"></circle>
				<path fill="currentColor" d="M15.593 13.472H16.593V19.472H15.593z"
					transform="rotate(-45 16.093 16.472)"></path>
			</symbol>
			<symbol id="icon_product" viewBox="0 0 16 16">
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M16 8C16 3.58172 12.4183 0 8 0C3.58172 0 0 3.58172 0 8C0 12.4183 3.58172 16 8 16C12.4183 16 16 12.4183 16 8ZM1.2 8C1.2 4.24446 4.24446 1.2 8 1.2C11.7555 1.2 14.8 4.24446 14.8 8C14.8 11.7555 11.7555 14.8 8 14.8C4.24446 14.8 1.2 11.7555 1.2 8ZM9 5C9 5.552 8.552 6 8 6C7.448 6 7 5.552 7 5C7 4.4475 7.448 4 8 4C8.552 4 9 4.4475 9 5ZM8.79462 7.9067C8.74841 7.50883 8.41027 7.2 8 7.2C7.55817 7.2 7.2 7.55817 7.2 8V11.6L7.20538 11.6933C7.25159 12.0912 7.58973 12.4 8 12.4C8.44183 12.4 8.8 12.0418 8.8 11.6V8L8.79462 7.9067Z"
					fill="#6B768B"></path>
			</symbol>
		</svg>
		<!--
svg 파일 수정시 nocache 수동갱신 필요
default-layout.js
search-header.js
-->
	</div>

		<!-- Start footer Area -->
		<%@ include file="../senicare_main_footer.jsp" %>
		<!-- End footer Area -->
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
	<script>
		var svg = '/svg/layout_default.svg?v=?20220923',
			req = new XMLHttpRequest();
		req.open('GET', svg, true);
		req.send();
		req.onload = function (e) {
			var div = document.querySelector('.img_svg_layout');
			div.innerHTML = req.responseText;
		}

		jQuery(document).ready(function ($) {
			$(document).on('mousedown', '.ga_data_layer', function () {
				var gaData = $(this).data('ga_data_layer') || '';
				var data = gaData.toString().split("|");
				var event = data[0] || '',
					category = data[1] || '',
					eventFlow = data[2] || '',
					eventLabel = data[3] || ''
					;

				if (!event || !category) {
					return true;
				}

				try {
					dataLayer.push({
						'event': event,
						'category': category,
						'event-flow': eventFlow,
						'event-label': eventLabel
					});
				} catch (e) {
				}
			});
		});
	</script>

	<div style="display: none; visibility: hidden;">
		<script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
	</div>
	<div style="display: none; visibility: hidden;">
		<script>var cookie = "\/zf_user\/member\/registration\/join-detail", cookieName = "mkt_ecommerce_pagepath", cookieValue = cookie, expirationTime = 1800; expirationTime *= 1E3; var date = new Date, dateTimeNow = date.getTime(); date.setTime(dateTimeNow + expirationTime); date = date.toUTCString(); document.cookie = cookieName + "\x3d" + cookieValue + "; expires\x3d" + date + "; path\x3d/; domain\x3d." + location.hostname.replace(/^www\./i, "");</script>
	</div>
	<script type="text/javascript"
		id="">window.dataLayer = window.dataLayer || []; dataLayer.push({ event: "Event_Sampling", random_page: "374915372" });</script>
	<script type="text/javascript"
		id="">window.dataLayer = window.dataLayer || []; dataLayer.push({ userId: "undefined" });</script>
	<div style="display: none; visibility: hidden;">

		<script
			type="text/javascript">window.criteo_q = window.criteo_q || []; var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d"; window.criteo_q.push({ event: "setAccount", account: 96026 }, { event: "setEmail", email: "" }, { event: "setZipcode", zipcode: "" }, { event: "setSiteType", type: deviceType }, { event: "viewHome" });</script>

	</div>
	<div id="criteo-tags-div" style="display: none;"></div><iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
</body>

</html>