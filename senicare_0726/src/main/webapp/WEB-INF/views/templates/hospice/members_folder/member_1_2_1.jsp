<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!--
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
-->

		<html lang="ko">

		<head>
			<title>회원가입 - 시니케어에 오신 것을 환영합니다!</title>
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
								<h2>기업 회원가입</h2>
								<div class="page_link">
									<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--================End Banner Area =================-->

				<!-- Start Offered Services Area -->

				<div id="sri_section">
					<div id="sri_wrap">
						<div id="join_wrapper" class="join_cont_wrap">
							<form name="frm" id="frm" method="post" action="/members_folder/member_1_2_1">
								<div id="member_personal" class="member_cate">
									<h3 class="tit_join_member">
										<p>삶의 지혜와 경험을 갖춘 분들을<br><br>시니케어에서 만나실 수 있습니다.</p>
									</h3>
									<h5>* 아래의 이용약관 및 개인정보 수집 여부에 따른 동의를 거부할 수 있습니다.<br>단, 동의 거부시 회원 가입이 불가합니다.</h5>
								</div>
								<div class="login_member">
									<div id="personal" class="tab_content" style="display: none;">
										<div id="member_corp" class="member_cate">
											<form name="c_frm" id="c_frm" method="post"
												action="https://www.saramin.co.kr/zf_user/member/registration/submit-enterprise"
												enctype="multipart/form-data" autocomplete="off">
												<div class="write_base">
													<!-- 사업자등록번호 -->
													<div class="item">
														<label for="auth_business_no_1" class=""><strong>사업자등록번호</strong></label>
														<div class="TypoBox invalid">
															<input name="auth_business_no_1" id="auth_business_no_1" type="text" class="Typo SizeL defalt"
																minlength="10" maxlength="10" autocapitalize="off" autocomplete="off"
																placeholder="사업자 등록번호 직접 입력 (10자리)">
														</div>
													</div>
													<!-- 기업 인증 파일 업로드 부분 -->
													<div class="cont_division">
														<strong class="cont_tit">기업 인증</strong>
														<div class="area_corp_certification">
															<!-- 일반 사번 -->
															<div id="normal_corp_code_certification_notice">
																<!-- 기업 인증 파일 업로드 부분 -->
																<div class="corp_certification_exam">
																	<div class="box_exam exam_certification">
																		<strong class="exam_tit">사업자등록<span
																				class="txt_blue">증명원</span></strong>
																		<span class="blind">은 올바른 파일 입니다.</span>
																	</div>
																	<div class="box_exam exam_license">
																		<strong class="exam_tit">사업자등록증</strong>
																		<span class="blind">은 올바른 파일이 아닙니다.</span>
																	</div>
																</div>
															</div>
															<!-- 임시 사번 -->
															<div id="temporary_corp_code_certification_notice" style="display: none;">
																<p class="corp_certification_tit"><strong>인증 서류</strong>를
																	첨부해주세요</p>
															</div>
															<!-- 기업 인증 파일 업로드 부분 끝 -->
															<form id="fileUploadForm" enctype="multipart/form-data">
																<input type="file" id="auth_business_img_1" name="auth_business_img_1" />
																<input type="button" id="auth_business_img_1" name="auth_business_img_1" value="" onclick="uploadFile()" />
															</form>
														</div>
													</div>
												</div>
												<!-- 약관 동의 부분 -->
												<div class="cont_division" id="company_terms_title">
													<span class="terms_agree"><strong>약관</strong></span>
													<div class="agree_box">
														<ul class="agree_article">
															<li>
																<div class="InpBox">
																	<span class="Chk SizeL">
																		<input type="checkbox" class="check_mail"
																			id="auth_business_clause_yn_1" name="auth_business_clause_yn_1"
																			value="0">
																		<label class="check_all check_off Lbl"
																			for="auth_business_clause_yn_1">
																			<strong class="all_agree">전체 동의</strong>
																		</label>
																	</span>
																</div>
															</li>
														</ul>
														<ul class="agree_article depth2">
															<li>
																<div class="agree_desc">
																	<div class="InpBox">
																		<span class="Chk">
																			<input type="checkbox" id="agree_rule2"
																				onclick="toggleChkBox('tc_1', this);">
																			<label class="Lbl check_off" for="agree_rule2">
																				<span><strong>(필수) 기업회원 약관에 동의</strong></span>
																			</label>
																		</span>
																	</div>
																</div>
																<a href="../zf_user/help/terms-of-service/company"
																	class="view_indetail" target="_blank">
																	<span class="blind">기업회원 약관 상세보기</span>
																</a>
															</li>
															<li>
																<div class="agree_desc">
																	<div class="InpBox">
																		<span class="Chk">
																			<input type="checkbox" id="agree_take2"
																				onclick="toggleChkBox('tc_2', this);">
																			<label class="Lbl check_off" for="agree_take2">
																				<span><strong>(필수) 개인정보 수집 및 이용에 동의</strong></span>
																			</label>
																		</span>
																	</div>
																</div>
																<a href="../zf_user/popup/privacy-policy?category=com_privacy_require"
																	class="view_indetail popup_clause_open" target="_blank">
																	<span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
																</a>
															</li>
															<li>
																<div class="agree_desc">
																	<div class="InpBox">
																		<span class="Chk">
																			<input type="checkbox" id="auth_business_personal_yn"
																				onclick="toggleChkBox('tc_3', this);">
																			<label class="Lbl check_off" for="auth_business_personal_yn">
																				<span><strong>(선택) 개인정보 수집 및 이용에 동의</strong></span>
																			</label>
																		</span>
																	</div>
																</div>
																<a id="popupTermsAgreeLb" href="../zf_user/help/terms-of-service/send_sms"
																	class="view_indetail" target="_blank">
																	<span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
												<!-- 약관 동의 부분 끝 -->
												<!-- 정보보유기간 -->
												<div class="cont_division">
													<strong class="terms_agree">정보보유기간</strong>
													<button type="button" aria-describeby="tootip_guide" class="btn_guide"
														onclick="document.getElementById('dormancyTermTip').style.display='inline';"
														style="cursor:pointer">
														<span class="blind">정보보유기간 설명</span>
													</button>
													<div class="TipBox guide_tooltip Click" id="tootip_guide">
														<div class="TipCont BottomCenter" id="dormancyTermTip" style="display: none;">
															<span class="Tail"></span>
															<div class="TipTxt">
																선택하신 기간 동안 사이트에 로그인하지 않은 경우<br>
																개인정보를 별도 분리 저장하게 됩니다.
															</div>
															<button type="button" class="BtnClose btnClose"
																onclick="document.getElementById('dormancyTermTip').style.display='none';">
																<span class="blind">닫기</span>
															</button>
														</div>
													</div>
													<div class="sri_radio_wrap">
														<div class="InpBox">
															<span class="Rdo">
																<input type="radio" id="auth_info_storage_1" name="auth_info_storage_1" value="탈퇴시">
																<label class="Lbl" for="auth_info_storage_1">탈퇴시</label>
															</span>
														</div>
														<div class="InpBox">
															<span class="Rdo">
																<input type="radio" id="auth_info_storage_1" class="inp_check"
																	name="auth_info_storage_1" value="5년">
																<label class="Lbl" for="auth_info_storage_1">5년</label>
															</span>
														</div>
														<div class="InpBox">
															<span class="Rdo">
																<input type="radio" id="auth_info_storage_1" class="inp_check"
																	name="auth_info_storage_1" value="3년">
																<label class="Lbl" for="auth_info_storage_1">3년</label>
															</span>
														</div>
														<div class="InpBox">
															<span class="Rdo">
																<input type="radio" id="auth_info_storage_1" class="inp_check"
																	name="auth_info_storage_1" value="1년">
																<label class="Lbl" for="auth_info_storage_1">1년</label>
															</span>
														</div>
													</div>
												</div>
												<!-- 정보보유기간 끝 -->
												<div class="btn_join">
													<button type="submit" id="btn_submit"
														class="inp_join BtnType SizeL defalt ga_data_layer submit_btn">
														다음으로
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
	


				 <!--      <div class="right-area1">    ---->
				

				<!-- End Offered Services Area -->


				<!-- start footer Area -->
				<%@ include file="../senicare_sub_footer.jsp" %>
					<!-- End footer Area -->






					<!-- Optional JavaScript -->
					<!-- 스크립트 라인 -->
					<!--================ jQuery first, then Popper.js, then Bootstrap JS =================-->
					<script src="../js/jquery-3.2.1.min.js"></script>
					<script src="../js/popper.js"></script>
					<script src="../js/bootstrap.min.js"></script>
					<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
					<script src="../vendors/isotope/isotope-min.js"></script>
					<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
					<script src="../js/jquery.ajaxchimp.min.js"></script>
					<script src="../js/mail-script.js"></script>
					<script src="../js/custom.js"></script>
					<script src="../js/page_jiin.js"></script>
					<script src="../js/page_jiin_header_footer.js"></script>
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

					<!-- 스크립트 라인 -->


		</body>

		</html>