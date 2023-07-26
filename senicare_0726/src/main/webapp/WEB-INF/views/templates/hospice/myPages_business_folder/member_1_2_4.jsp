<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!-- 기업회원가입 입력란1 -->
<html lang="ko">

<head>
    <title>회원가입 - 시니케어에 오신 것을 환영합니다!</title>
    <meta name="naver-site-verification" content="86455485e27cab6986d130e4c3b90c5b516820d1">
    <meta name="naver" content="nosublinks">
    <meta http-equiv="Content-Type" content="../text/jsp; charset=utf-8">
    <meta http-equiv="Content-Language" content="ko-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link href="../sri_css/join/sri_css_member_join.css" media="all" rel="stylesheet" type="../text/css">
    <link href="../sri_css/sri_css_member_etc.css" media="all" rel="stylesheet" type="../text/css">
    <link href="../sri_css/sric_css_member_login.css" media="all" rel="stylesheet" type="../text/css">
    <link href="../sri_css/sri_css_member_pattern.css" media="all" rel="stylesheet" type="../text/css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../vendors/linericon/style.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="../vendors/animate-css/animate.css">
    <link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
    <link href="../sri_css/login.css?v=20230713103234" rel="stylesheet" type="text/css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_DH2.css">
    <link rel="stylesheet" href="../css/style_jiin.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <link href="../favicon.ico?ver=2" rel="favicon">
    <link href="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.css" media="screen" rel="stylesheet"
        type="../text/css">



    <meta http-equiv="origin-trial"
        content="A8JfNlJkey0MFKnz6XNz8nRPAhS9Pk1KdhzNHXdfaz7ediAYHhDf/bW0PKE8IDoMWFZG6uRlHwzxV6IR+zh0EAsAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
    <meta http-equiv="origin-trial"
        content="A8+GUOvok5j8ovF5eDgcRkHjjwMRBeKryCemTXvbp0vtb//sDFgNbQ+1h5AEm6m7NkU/FuBEEqP3YH/3StuCyQ4AAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
    <meta http-equiv="origin-trial"
        content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">

    <style>

    </style>
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
                    <h2>기업 회원가입</h2>
                    <div class="page_link">
                        <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Banner Area =================-->

    <!-- 입력 페이지 -->
    <div id="sri_section">
        <div id="sri_wrap">

            <div id="join_wrapper" class="join_cont_wrap">
                <div id="member_personal" class="member_cate">
                    <form name="frm" id="frm" method="post"
                        action="https://www.saramin.co.kr/zf_user/member/registration/submit-personal">

                        <h3 class="tit_join_member">
                            <p>채용 기업 계정 만들기 P2</p>
                        </h3>
                        <h5>기업의 정보를 입력합니다.</h5>
                        <div class="input_container">
                            <div class="left_area">
                                <fieldset class="fieldset_class1">
                                    <div class="cont_division">

                                        <!-- 필수 입력 항목 -->
                                        <div class="write_base">
                                            <!-- 아이디 -->
                                            <div class="member_center_line">기업 정보 입력 항목</div>
                                            <!-- 대표자명 -->
                                            <div class="item">
                                                <label for="ceo_name"><strong>대표자명</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="ceo_name" id="ceo_name"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="대표자명 입력">
                                                </div>
                                            </div>

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
        <label for="other_work_location_input1"><strong>근무지 - 기타 (시)</strong></label>
        <div class="TypoBox">
            <input type="text" name="other_work_location_input1" id="other_work_location_input1" class="Typo SizeL defalt" placeholder="예) 전라남도">
        </div>
    </div>
    <div class="item">
        <label for="other_work_location_input2"><strong>근무지 - 기타 (군)</strong></label>
        <div class="TypoBox">
            <input type="text" name="other_work_location_input2" id="other_work_location_input2" class="Typo SizeL defalt" placeholder="예) 무안군">
        </div>
    </div>
</div>



                                       <!-- 직종 카테고리 -->
<div class="item">
    <label for="job_category"><strong>직종 카테고리</strong></label>
    <div class="TypoBox">
        <select name="job_category" id="job_category" class="Typo SizeL defalt" onchange="checkOtherOption()">
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
        <label for="other_job_category_input"><strong>직종 카테고리 - 기타</strong></label>
        <div class="TypoBox">
            <input type="text" name="other_job_category_input" id="other_job_category_input" class="Typo SizeL defalt" placeholder="예시) 인사직">
        </div>
    </div>
</div>


                            <div class="btn_join">
                                                <button type="button" id="btn_submit"
                                                    class="inp_join BtnType SizeL defalt ga_data_layer submit_btn"
                                                    onmousedown="loggingEventAndTagManager(['company_join','join_complete','saramin',''],['ga_lead','company_join','join_complete', 'saramin'])">
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


    <!-- 입력 페이지 -->




    <!-- End Google Tag Manager -->
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.jsp?id=GTM-MK2GBBH" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div id="_sticky_warp" role="complementary"></div>




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
                        <a href="../zf_user/member/registration/join" target="_blank" class="sign_up">회원가입</a>
                        <a href="../zf_user/helpdesk/idpw-find" target="_blank" class="forgotten">아이디/비밀번호 찾기</a>
                    </div>
                    <div class="social_login_tit">
                        <p class="tit">소셜 계정으로 간편 로그인</p>
                    </div>
                    <ul class="social_login" id="wrap_social_login">
                        <li class="login_naver">
                            <a href="../zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
                                class="sl_naver ga_data_layer" data-provider="naver"><span class="wrap_icon"><svg class="icon">
                                        <use xlink:href="#icon_login_naver"></use>
                                    </svg></span></a>
                        </li>
                        <li class="login_kakao">
                            <a href="../zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
                                class="sl_kakao ga_data_layer" data-provider="kakao"><span class="wrap_icon"><svg
                                        class="icon">
                                        <use xlink:href="#icon_login_kakao"></use>
                                    </svg></span></a>
                        </li>
                        <li class="login_google">
                            <a href="../zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
                                class="sl_google ga_data_layer" data-provider="google"><span class="wrap_icon"><svg
                                        class="icon">
                                        <use xlink:href="#icon_login_google"></use>
                                    </svg></span></a>
                        </li>
                        <li class="login_facebook">
                            <a href="../zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
                                class="sl_facebook ga_data_layer" data-provider="facebook"><span class="wrap_icon"><svg
                                        class="icon">
                                        <use xlink:href="#icon_login_facebook"></use>
                                    </svg></span></a>
                        </li>
                        <li class="login_apple">
                            <a href="../zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
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


    </div>
    <div class="img_svg_layout" style="display: none"><!--
svg 파일 수정시 nocache 수동갱신 필요
default-layout.js
search-header.js
-->

  
        <!--
svg 파일 수정시 nocache 수동갱신 필요
default-layout.js
search-header.js
-->
    </div>


    <!-- 스크립트 라인 -->
    <script type="../text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="../text/javascript" async=""
        src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MK2GBBH"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
    <script type="text/javascript" async=""
        src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=1908866751.1687481206"></script>
    <script type="../text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
    <script type="../text/javascript" src="../js/libs/secure/PasswordStrength.js?v=20230713103234"></script>
    <script type="../text/javascript" src="../js/libs/placeholders/jquery.placeholder.js"></script>
    <script type="../text/javascript" src="../js/join/join.js?v=20230713103234"></script>
    <script type="../text/javascript" src="../js/join/join-person.js?v=20230713103234"></script>
    <script type="../text/javascript" src="../js/join/smsEmailConfirm.js?v=20230713103234"></script>
    <script type="../text/javascript" src="../js/libs/secure/rsa.min.js"></script>
    <script type="../text/javascript" src="../js/libs/secure/secure-login.js?v=131018"></script>
    <script type="../text/javascript" src="../js/page_jiin.js"></script>
    <script type="../text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>


    <!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->


    <!-- 스크립트 라인 -->

</body>

</html>