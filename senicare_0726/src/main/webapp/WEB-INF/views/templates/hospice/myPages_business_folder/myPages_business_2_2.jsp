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
								   <!-- 입력 페이지 -->
    <div id="sri_section">
        <div id="sri_wrap">

            <div id="join_wrapper" class="join_cont_wrap">
                <div id="member_personal" class="member_cate">
                    <form name="frm" id="frm" method="post" action="/myPages_business_folder/myPages_business_2_2">

                        <h3 class="tit_join_member">
                            <p>채용 공고 정보 작성 P2</p>
                        </h3>
                        <h5>기업의 정보를 자유롭게 입력합니다.</h5>
                        <div class="input_container">
                            <div class="left_area">
                                <fieldset class="fieldset_class1">
                                    <div class="cont_division">

                                        <!-- 필수 입력 항목 -->
                                        <div class="write_base">

                                            <!-- 아이디 -->
                                            <div class="member_center_line">기업 정보 입력 항목 (필수)</div>

                                            <!-- 정보 넘기는 값 -->
                                            <input type="hidden" value="11" name="auth_Business_Wn" id="auth_Business_Wn">
                                            <input type="hidden" value="samsung" name="auth_business_id" id="auth_business_id">
                                            <!-- <input type="hidden" value="0" name="auth_Business_Dc" id="auth_Business_Dc"> -->

                                            


                                            <!-- 기업 설명 -->
                                            <div class="item">
                                                <label for="auth_Business_Des"><strong>기업 설명</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_Business_Des" id="auth_Business_Des"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="">
                                                </div>
                                            </div>

                                            <!-- 급여 -->
                                            <div class="item">
                                                <label for="auth_Business_Sal"><strong>급여 범위</strong></label>
                                                <div class="TypoBox">
                                                    <select name="auth_Business_Sal" id="auth_Business_Sal"
                                                        class="Typo SizeL defalt">
                                                        <option value="0-2000만원">0~2,000만원</option>
                                                        <option value="2000-3000만원">2,000~3,000만원</option>
                                                        <option value="3000-4000만원">3,000~4,000만원</option>
                                                        <option value="4000-5000만원">4,000~5,000만원</option>
                                                        <option value="5000만원 이상">5,000만원 이상</option>
                                                        <option value="협의 후 결정">협의 후 결정</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <!-- 지원 방법 -->
                                            <div class="item">
                                                <label for="auth_Business_App"><strong>지원 방법</strong></label>
                                                <div class="TypoBox">
                                                    <select name="auth_Business_App" id="auth_Business_App"
                                                        class="Typo SizeL defalt">
                                                        <option value="간편 지원">간편 지원</option>
                                                        <option value="상세 지원">상세 지원</option>
                                                        <option value="기타">기타</option>
                                                    </select>
                                                </div>
                                            </div>

                                            

                                            <!-- 간편 지원 설명 -->
                                            <div id="simple_application_description" style="display: block;">
                                                간편 지원 : 기업의 질문을 받지 않고 바로 지원을 받습니다.
                                                <br>
                                                상세 지원 : 기업의 질문을 받고 지원을 받습니다.
                                            </div>

                                            <!-- 상세 지원 설명 -->
                                            <div id="detailed_application_description" style="display: none;">
                                                기업의 질문을 받고 지원을 받습니다.
                                            </div>

                                            <!-- 면접 질문 (구현 해야 함) -->
                                            <div class="item" id="interviewQuestionsContainer" style="display: none;">
                                                <label for="interviewQuestions"><strong>면접 질문</strong></label>
                                                <div class="TypoBox">
                                                    <div class="interview-question-inputs">
                                                        <div class="interview-question-input">
                                                            <input type="text" name="interviewQuestions[]"
                                                                class="Typo SizeL defalt" style="ime-mode:active"
                                                                autocapitalize="off" placeholder="면접 질문을 입력하세요.">
                                                            <i
                                                                class="fas fa-minus remove-interview-question-button"></i>
                                                        </div>
                                                    </div>
                                                    <i class="fas fa-plus add-interview-question-button"></i>
                                                </div>
                                            </div>


                                             <!-- 면접 질문 : 태그 형태로 아이콘 방식으로 선택하는 느낌, 기업이 주는 이미지에 대한 키워드 -->
                                             <div class="item" id="auth_Business_KeyContainer">
                                                <label for="auth_Business_Que"><strong>면접 질문</strong></label>
                                                <div class="TypoBox">
                                                    <div class="keyword-inputs">
                                                        <div class="keyword-input">
                                                            <input type="text" name="auth_Business_Que[]" id="auth_Business_Que"
                                                                class="Typo SizeL defalt" style="ime-mode:active"
                                                                autocapitalize="off" placeholder="키워드를 입력하세요." readonly>
                                                            <i class="fas fa-minus remove-keyword-button"></i>
                                                        </div>
                                                    </div>
                                                    <i class="fas fa-plus add-keyword-button"></i>
                                                </div>
                                            </div>





                                            <!-- 채용 마감일 선택 -->
                                            <div class="item">
                                                <label for="auth_Business_Em_Cl"><strong>채용 마감일</strong></label>
                                                <div class="TypoBox">
                                                    <select name="auth_Business_Em_Cl" id="auth_Business_Em_Cl"
                                                        class="Typo SizeL defalt">
                                                        <option value="1주일 이내">1주일 이내</option>
                                                        <option value="2주일 이내">2주일 이내</option>
                                                        <option value="1달 이내">1달 이내</option>
                                                        <option value="1달 이상">1달 이상</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <!-- 키워드 입력란 : 태그 형태로 아이콘 방식으로 선택하는 느낌, 기업이 주는 이미지에 대한 키워드 -->
                                            <div class="item" id="auth_Business_KeyContainer">
                                                <label for="auth_Business_Key"><strong>키워드</strong></label>
                                                <div class="TypoBox">
                                                    <div class="keyword-inputs">
                                                        <div class="keyword-input">
                                                            <input type="text" name="auth_Business_Key[]"
                                                                class="Typo SizeL defalt" style="ime-mode:active"
                                                                autocapitalize="off" placeholder="키워드를 입력하세요." readonly>
                                                            <i class="fas fa-minus remove-keyword-button"></i>
                                                        </div>
                                                    </div>
                                                    <i class="fas fa-plus add-keyword-button"></i>
                                                </div>
                                            </div>

                                            <!-- 선택 입력 사항 -->

                                            <div class="div_empty_top"></div>
                                            <div class="member_center_line">기업 정보 입력 항목 (선택)</div>


                                            <!-- 자격 조건 -->
                                            <div class="item">
                                                <label for="auth_Business_Qu"><strong>자격 조건 및 우대사항</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_Business_Qu" id="auth_Business_Qu"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="예) 컴퓨터공학 전공 또는 컴퓨터 공학 우대">
                                                </div>
                                            </div>






                                            <!-- 예정 면접일 입력란 -->
                                            <div class="item">
                                                <label for="auth_Business_Sc"><strong>예정 면접일</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_Business_Sc" id="auth_Business_Sc"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off"
                                                        placeholder="예) 20231124 금요일 오후 3시 또는 추후 기재">
                                                </div>
                                            </div>



                                            <!-- 채용 프로세스 입력란 -->
                                            <div class="item">
                                                <label for="auth_Business_Pro"><strong>채용 프로세스</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_Business_Pro"
                                                        id="auth_Business_Pro" class="Typo SizeL defalt"
                                                        style="ime-mode:active" autocapitalize="off"
                                                        placeholder="예) 이력서 면접 -> 1차 면접 -> 결과 통보">
                                                </div>
                                            </div>

                                            <!-- 기업 연봉 정책 입력란 -->
                                            <div class="item">
                                                <label for="auth_Business_Pol"><strong>기업 연봉 정책</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_Business_Pol" id="auth_Business_Pol"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="예) 1년마다 재 계약">
                                                </div>
                                            </div>












											<div style="margin-top: 20px;"></div>

                                            <div class="btn_join">
                                                <button type="submit" id="btn_submit"
                                                    class="inp_join BtnType SizeL defalt ga_data_layer submit_btn"
                                                    onclick="end()">
                                                    완료
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

        <script>
            function end() {
                alert("채용 공고가 등록 되었습니다.");
            }
        </script>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

	<!-- 스크립트 라인 -->
    <script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
    <script type="../text/javascript" src="../js/page_jiin_info.js"></script>
    <script type="../text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
    <!-- 스크립트 라인 -->

	</body>
	
</html>