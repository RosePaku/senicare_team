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
    <title>회원가입 - 시니케어에 오신 것을 환영합니다!</title>
    <meta name="naver-site-verification" content="86455485e27cab6986d130e4c3b90c5b516820d1">
    <meta name="naver" content="nosublinks">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="ko-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link href="../sri_css/join/sri_css_member_join.css" media="all" rel="stylesheet"
        type="text/css">
    <link href="../sri_css/sri_css_member_etc.css" media="all" rel="stylesheet"
        type="text/css">
    <link href="../sri_css/sric_css_member_login.css" media="all" rel="stylesheet"
        type="text/css">
    <link href="../sri_css/sri_css_member_pattern.css" media="all" rel="stylesheet"
        type="text/css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../vendors/linericon/style.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="../vendors/animate-css/animate.css">
    <link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
    <link href="../sri_css/login.css?v=20230713103234" rel="stylesheet" type="../text/css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_DH2.css">
    <link rel="stylesheet" href="../css/style_jiin.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <link href="/favicon.ico?ver=2" rel="favicon">
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
    <%@ include file="../senicare_sub_header.jsp" %>
    <!--================Header Menu Area =================-->

    <!--================ Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-left">
                    <h2>개인 회원가입</h2>
                    <div class="page_link">
                        <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Banner Area =================-->

    <div class="div_empty_top"></div>
    <div id="sri_section">
        <div id="sri_wrap" style="height: 2700px">

            <div id="join_wrapper" class="join_cont_wrap">
                <div id="member_personal" class="member_cate">
                    <form name="frm" id="frm" method="post"
                    action="/members_folder/member_1_1"
                     >
                        


                        <h3 class="tit_join_member">
                            <p>여러분의 활발한 소통과<br><br>다양한 정보공유를 환영합니다.</p>
                        </h3>
                        <h5>* 아래의 이용약관 및 개인정보 수집 여부에 따른 동의를 거부할 수 있습니다.<br>단, [필수 입력 항목] 동의 거부시 회원 가입이 불가합니다.</h5>

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
        <input name="auth_id" id="auth_id" type="text" class="Typo SizeL defalt" minlength="4" maxlength="20"
            pattern="[A-Za-z0-9]+" style="ime-mode:disabled" autocapitalize="off" autocomplete="off"
            placeholder="4~20자리 / 영문, 숫자 사용가능">
    </div>
    <p class="alert_column focus_txt" id="auth_idFocusMsg" style="display:none">4~20자의 영문, 숫자만 사용해주세요.</p>
    <em class="msgInvalid" id="auth_idCheckMsg1" style="display:none">4~20자의 영문, 숫자만 사용해주세요.</em>
    <!-- 오류 시 텍스트 -->
    <p class="alert_column good_txt" id="auth_idCheckMsg2" style="display:none">사용가능한 아이디에요.</p>
    <!-- 완료 시 텍스트 -->
</div>

                                   <!-- 비밀번호 -->
<div class="item">
    <label for="auth_password" type="PassWord"><strong>비밀번호</strong></label>
    <div class="TypoBox pass_box">
        <input autocapitalize="off" name="auth_password" class="Typo SizeL defalt" id="auth_password" type="password"
            minlength="4" maxlength="20" pattern="[A-Za-z0-9]+" autocomplete="off"
            placeholder="4~20자리 / 영문, 숫자 사용가능">
        <button type="button" toggle="#auth_password" id="masking_auth_password" class="toggle_password field_eye on"
            style="display: none;"></button>
    </div>
    <p class="alert_column focus_txt" id="auth_passwordFocusMsg" style="display:none">4~20자의 영문, 숫자만 사용해주세요.</p>
    <em class="msgInvalid" id="auth_password_warning_txt" style="display:none"><span>4~20자의 영문, 숫자만 사용해주세요.</span>
    </em>
    <p class="alert_column good_txt" id="auth_password_good_txt" style="display:none"></p>
    <p class="pass_safety" id="pw_strnegth_level" style="display:none"></p>
</div>

                                          <!-- 이름 -->
<div class="item">
    <label for="auth_name"><strong>이름</strong></label>
    <div class="TypoBox">
        <input type="text" name="auth_name" id="auth_name" class="Typo SizeL defalt" style="ime-mode:active"
            autocapitalize="off" placeholder="이름 입력">
    </div>
    <em class="msgInvalid" id="auth_name_msg" name="auth_name_msg" style="display:none">이름은 필수 입력 정보 입니다.</em>
</div>

                                            <!-- 성별 -->
                                            <div class="item">
                                                <label for="auth_sex"><strong>성별</strong></label>
                                                <div class="TypoBox radio-container">
                                                    <label for="gender_male">남성</label>
                                                    <input type="radio" name="auth_sex" id="gender_male" value="남" required>
                                                    <label for="gender_female">여성</label>
                                                    <input type="radio" name="auth_sex" id="gender_female" value="여" required>
                                                </div>
                                                <em class="msgInvalid" id="auth_sex_msg" name="auth_sex_msg" style="display:none">성별은 필수 입력 정보입니다.</em>
                                            </div>

                                            <!-- 닉네임 -->
                                            <div class="item">
                                                <label for="auth_nickname"><strong>닉네임</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_nickname" id="auth_nickname"
                                                        class="Typo SizeL defalt" style="ime-mode:active" minlength="2"
                                                        maxlength="8" autocapitalize="off" placeholder="2~8자리 / 한글 입력">
                                                </div>
                                                <em class="msgInvalid" id="auth_nickname_msg" name="auth_nickname_msg"
                                                    style="display:none">닉네임은 필수 입력 정보 입니다.</em>
                                            </div>

                                            <!-- 생년월일 -->
                                            <div class="item">
                                                <label for="auth_birth"><strong>생년월일</strong></label>
                                                <div class="TypoBox">
                                                    <input type="date" name="auth_birth" id="auth_birth"
                                                        minlength="8" maxlength="8" autocapitalize="off"
                                                        placeholder="예: 19630101(숫자만 입력해주세요)" class="Typo SizeL defalt">
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
                                                name="phone_certi_list" required>
                                                <label for="auth_phone_number"><strong>휴대폰</strong></label>
                                                <div class="input_collect TypoBox">
                                                    <input type="number" id="auth_phone_number" name="auth_phone_number"
                                                        placeholder="예: 01099887788(' - ' 빼고 입력)"
                                                        class="Typo SizeL join_input defalt">
                                                </div>
                                                <button type="button" id="sms_send_code"
                                                    class="BtnType SizeL defalt btn_cert_pop collet_btn"
                                                    disabled=""><span>인증요청</span></button>
                                         
                                            </div>

                                            <!-- 휴대폰 인증시 이메일 -->
                                            <li class="item identify_phone">
                                                <label for="auth_email"><strong>이메일</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" id="auth_email" name="auth_email"
                                                        style="ime-mode:inactive" class="Typo SizeL defalt"
                                                        placeholder="email@saramin.co.kr" required>
                                                </div>
                                                <div class="wrap_collection_basis">
                                                    <p class="btn_link" id="email_msg">시니케어 관련 정보를 받을 때 필요해요</p>
                                                </div>
                                            </li>

                                        </div>
                                        <!--     필수 입력 항목 끝      -->
                                        <br><br>

                                        <!--     선택 입력 항목 시작   -->
                                        <div class="write_base">
                                            <div class="member_center_line">선택 입력 항목</div>
                                            <!-- 주소 -->
                                            <div class="item">
                                                <label for="auth_address"><strong>주소 (시/도)</strong></label>
                                                <div class="TypoBox">
                                                    <input name="auth_address" id="auth_address" type="text" class="Typo SizeL defalt"
                                                        maxlength="20" style="ime-mode:disabled" autocapitalize="off"
                                                        autocomplete="off" placeholder="예:서울특별시/강원특별자치도">

                                                    <label for="auth_address_detail"><strong>상세주소 (시/군/구)</strong></label>
                                                    <input name="auth_address_detail" id="auth_address_detail" type="text" class="Typo SizeL defalt"
                                                        maxlength="20" style="ime-mode:disabled" autocapitalize="off"
                                                        autocomplete="off" placeholder="예:중구/평창시">
                                                </div>
                                            </div>


                                            <!-- 기저질환-->
                                            <div class="item">
                                                <label for="auth_under_disease"><strong>기저질환</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="auth_under_disease" id="auth_under_disease"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="먹는 약이 있거나 진단 받은 질환을 적어주세요">
                                                </div>
                                            </div>



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
                        <!-- auth_clause_yn -->
                        <!-- agreeAllPersonal -->
                        <input type="checkbox" class="check_mail" id="auth_clause_yn" value="Y">
                        <label class="check_all check_off Lbl" for="auth_clause_yn">
                            <strong class="all_agree">전체 동의</strong>
                        </label>
                        <!-- 사용 안함 -->
                        <!-- <input type="hidden" name="hidden_check_all" value="0" id="hidden_check_all"> -->
                    </span>
                </div>
            </li>
        </ul>
        <ul class="agree_article depth2">
            <li>
                <div class="agree_desc">
                    <div class="InpBox">
                        <span class="Chk">
                            
                            <input type="checkbox" id="auth_agree_rule1" >
                            <label class="Lbl check_custom check_off" for="agree_rule1">
                                <span><strong>(필수) 개인회원 약관에 동의</strong></span>
                            </label>
                        </span>
                    </div>
                </div>
                <a href="../zf_user/help/terms-of-service/person" class="view_indetail" target="_blank">
                    <span class="blind">개인회원 약관 상세보기</span>
                </a>
            </li>
            <li>
                <div class="agree_desc">
                    <div class="InpBox">
                        <span class="Chk">
                            
                            <input type="checkbox" id="auth_agree_take1" >
                            <label class="Lbl check_custom check_off" for="agree_take1">
                                <span><strong>(필수) 개인정보 수집 및 이용에 동의</strong></span>
                            </label>
                        </span>
                    </div>
                </div>
                <a id="popupClausePrivacyPerson"
                    href="../zf_user/popup/privacy-policy?category=person_privacy_req" class="view_indetail popup_clause_open" target="_blank">
                    <span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
                </a>
            </li>
            <li>
                <div class="agree_desc">
                    <div class="InpBox">
                        <span class="Chk">
                            
                            <input type="checkbox" id="auth_personal_yn" name="auth_personal_yn" value="Y">
                            <label class="Lbl check_custom check_off" for="auth_personal_yn">
                                <spanㅈ>(선택) 개인정보 수집 및 이용에 동의</span>
                            </label>
                        </span>
                    </div>
                </div>
                <a id="popupTermsAgreeLb" href="members_folder/" class="view_indetail popup_clause_open" target="_blank">
                    <span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<!-- 현재 강제적으로 y만 집어 넣었음 // 체크 박스에 대한 value값 전달 기능 필요 -->
<!-- 약관 -->


<!-- 정보보유기간 -->

<div class="cont_division">
    <strong class="terms_agree">정보보유기간</strong>
    <button type="button" aria-describeby="tootip_guide" class="btn_guide"
        onclick="document.getElementById('dormancyTermTip').style.display='inline';"
        style="cursor:pointer"><span class="blind">정보보유기간 설명</span></button>
    <div class="TipBox guide_tooltip Click" id="tootip_guide">
        <div class="TipCont BottomCenter" id="dormancyTermTip" style="display: none;">
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
                <input type="radio" id="dormancy_term_4" name="auth_info" value="탈퇴시">
                <label class="Lbl" for="dormancy_term_4">탈퇴시</label>
            </span>
        </div>
        <div class="InpBox">
            <span class="Rdo">
                <input type="radio" id="dormancy_term_3" class="inp_check" name="auth_info" value="5년">
                <label class="Lbl" for="dormancy_term_3">5년</label>
            </span>
        </div>
        <div class="InpBox">
            <span class="Rdo">
                <input type="radio" id="dormancy_term_2" class="inp_check" name="auth_info" value="3년">
                <label class="Lbl" for="dormancy_term_2">3년</label>
            </span>
        </div>
        <div class="InpBox">
            <span class="Rdo">
                <input type="radio" id="dormancy_term_1" class="inp_check" name="auth_info" value="1년">
                <label class="Lbl" for="dormancy_term_1">1년</label>
            </span>
        </div>
    </div>
</div>
<!-- 정보보유기간 -->

                                        <div class="btn_join">
                                            <button type="submit" id="btn_submit"
                                                class="inp_join BtnType SizeL defalt ga_data_layer submit_btn">
                                                회원가입 완료
                                            </button>
                                        </div>



                                    </div>

                                    <!-- 선택 입력 항목 오른쪽 영역 -->

                                </fieldset>
                            </div>


                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>



    
</section>
<!-- start footer Area -->
<%@ include file="../senicare_sub_footer.jsp" %>
<!-- End footer Area -->





    <!-- 스크립트 라인 -->
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async=""
        src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MK2GBBH"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
    <script type="text/javascript" async=""
        src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=1908866751.1687481206"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
    <script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.js"></script>
    <script type="text/javascript"
        src="../js/libs/secure/PasswordStrength.js?v=20230713103234"></script>
    <script type="text/javascript"
        src="../js/libs/placeholders/jquery.placeholder.js"></script>
    <script type="text/javascript" src="../js/join/join.js?v=20230713103234"></script>
    <script type="text/javascript"
        src="../js/join/join-person.js?v=20230713103234"></script>
    <script type="text/javascript"
        src="../js/join/smsEmailConfirm.js?v=20230713103234"></script>
    <script type="text/javascript" src="../js/libs/secure/rsa.min.js"></script>
    <script type="text/javascript"
        src="../js/libs/secure/secure-login.js?v=131018"></script>
    <script type="text/javascript" src="../js/page_jiin.js"></script>
    <script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
    <script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
    <script src="https://www.saramin.co.kr/js/wl6.js" type="text/javascript"></script>
    <!-- 스크립트 라인 -->

</body>

</html>