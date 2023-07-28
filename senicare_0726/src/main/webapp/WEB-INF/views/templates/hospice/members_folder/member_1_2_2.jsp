<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	0712_1934 작업사항
	1) 헤더, 푸터 작업 완료
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
    <link href="../favicon.ico?ver=2" rel="favicon">


    <style>

    </style>
</head>

<body>

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
                        <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Banner Area =================-->

    <div id="sri_section">
        <div id="sri_wrap" style="height: 1500px">
            <div id="join_wrapper" class="join_cont_wrap">
                <div id="member_personal" class="member_cate">
                    <form name="frm" id="frm" method="post"
                        action="/members_folder/member_1_2_2">
                        <h3 class="tit_join_member">
                            <p>기업 회원 계정 만들기 </p>
                        </h3>
                        <h5>로그인에 필요한 정보를 입력합니다.</h5>
                        <div class="input_container">
                            <div class="left_area">
                                <fieldset class="fieldset_class1">
                                    <div class="cont_division">
                                        <!-- 필수 입력 항목 -->
                                        <div class="write_base">
                                            <!-- 아이디 -->
                                            <div class="member_center_line">기업 회원 정보 입력</div>
                                            <div class="item">
                                                <label for="auth_business_id"><strong>아이디</strong></label>
                                                <div class="TypoBox">
                                                    <input name="auth_business_id" id="auth_business_id" type="text"
                                                        class="Typo SizeL defalt" minlength="4" maxlength="20"
                                                        style="ime-mode:disabled" autocapitalize="off"
                                                        autocomplete="off" placeholder="4~20자리 / 영문, 숫자 사용가능">
                                                </div>
                                                <p class="alert_column focus_txt" id="auth_idFocusMsg"
                                                    style="display:none">4~20자의 영문, 숫자만 사용해주세요.</p>
                                                <em class="msgInvalid" id="auth_idCheckMsg1"
                                                    style="display:none">4~20자의 영문,숫자만 사용해주세요.</em>
                                                <!-- 오류 시 텍스트 -->
                                                <p class="alert_column good_txt" id="auth_idCheckMsg2"
                                                    style="display:none">
                                                    사용가능한 아이디에요.</p>
                                                <!-- 완료 시 텍스트 -->
                                            </div>
                                            <!-- 비밀번호 -->
                                            <div class="item">
                                                <label for="auth_password"><strong>비밀번호</strong></label>
                                                <div class="TypoBox pass_box">
                                                    <input autocapitalize="off" name="auth_business_password"
                                                        class="Typo SizeL defalt" id="auth_business_password"
                                                        type="password" minlength="4" maxlength="20"
                                                        autocomplete="off" placeholder="4~20자리 / 영문, 숫자 사용가능">
                                                    <button type="button" toggle="#auth_business_password"
                                                        id="masking_auth_business_password"
                                                        class="toggle_password field_eye on"
                                                        style="display: none;"></button>
                                                </div>
                                                <p class="alert_column focus_txt" id="auth_passwordFocusMsg"
                                                    style="display:none">4~20자의 영문, 숫자만 사용해주세요.</p>
                                                <em class="msgInvalid" id="auth_password_warning_txt"
                                                    style="display:none"><span>4~20자의 영문, 숫자만 사용해주세요.</span></em>
                                                <p class="alert_column good_txt" id="auth_password_good_txt"
                                                    style="display:none"></p>
                                                <p class="pass_safety" id="pw_strnegth_level"
                                                    style="display:none"></p>
                                            </div>
                                            <!-- 닉네임 -->
                                            <div class="item">
                                                <label for="auth_nickname"><strong>닉네임</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_business_nickname" id="auth_business_nickname"
                                                        class="Typo SizeL defalt" style="ime-mode:active" minlength="2"
                                                        maxlength="8" autocapitalize="off" placeholder="2~8자리 / 한글 입력">
                                                </div>
                                                <em class="msgInvalid" id="auth_nickname_msg"
                                                    name="auth_nickname_msg" style="display:none">닉네임은 필수 입력 정보 입니다.</em>
                                            </div>
                                            <!-- 휴대폰 인증 -->
                                            <div class="item identify_phone" id="phone_certi_list"
                                                name="phone_certi_list">
                                                <label for="auth_business_phone_number"><strong>휴대폰</strong></label>
                                                <div class="input_collect TypoBox">
                                                    <input type="text" id="auth_business_phone_number" name="auth_business_phone_number"
                                                        placeholder="예: 01099887788(' - ' 빼고 입력)"
                                                        class="Typo SizeL join_input defalt">
                                                </div>
                                                <button type="button" id="sms_send_code"
                                                    class="BtnType SizeL defalt btn_cert_pop collet_btn"
                                                    disabled=""><span>인증요청</span></button>
                                                <button type="button" id="sms_re_send_code"
                                                    class="BtnType SizeL collet_btn re_btn" style="display:none"
                                                    onclick="sendCodeAction()"><span>재발송</span></button>
                                                <em class="msgInvalid" id="sms_phone_msg"
                                                    style="display:none"><span>잘못된 휴대폰 번호입니다. 휴대폰 번호를 정확하게 입력해주세요.</span></em>
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
                                                <p class="alert_column good_txt" id="sms_msg_good"
                                                    style="display:none">인증이 완료되었습니다.</p>
                                            </div>
                                            <!-- 휴대폰 인증시 이메일 -->
                                            <div class="item identify_phone">
                                                <label for="auth_business_email"><strong>이메일</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" id="auth_business_email" name="auth_business_email"
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
                                                <p class="alert_column good_txt" id="msg_email2"
                                                    style="display:none">인증되었습니다</p>
                                                <div class="wrap_collection_basis">
                                                    <p class="btn_link" id="email_msg">시니케어 관련 정보를 받을 때 필요해요</p>
                                                </div>
                                            </div>
                           
                                            <div class="btn_join">
                                                <button type="submit" id="btn_submit"
                                                    class="inp_join BtnType SizeL defalt ga_data_layer submit_btn"
                                                    >
                                                    회원가입 완료
                                                </button>
                                            </div>
                                        </div>
                                    </div>
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
                                <a href="../zf_user/helpdesk/idpw-find" class="BtnType SizeM search_user">아이디/비밀번호 찾기</a>
                                <a href="../zf_user/auth" class="BtnType SizeM">로그인</a>
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
                                class="sl_naver ga_data_layer" data-provider="naver"><span class="wrap_icon"><svg
                                        class="icon">
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
    <div class="img_svg_layout" style="display: none">
    </div>
	<!-- start footer Area -->
	<%@ include file="../senicare_sub_footer.jsp" %>
	<!-- End footer Area -->



	<!-- 스크립트 라이브러리 -->
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


    <!-- 스크립트 라인 -->
</body>

</html>