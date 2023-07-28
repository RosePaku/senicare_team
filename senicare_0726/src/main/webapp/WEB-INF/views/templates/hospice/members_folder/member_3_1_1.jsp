<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 아이디 / 비밀번호 찾기 클릭 시 -->
<!-- 지원자 정보 입력 -->


<html lang="ko">

<head>
    <title>회원가입 - 시니케어에 오신 것을 환영합니다!</title>
    <meta name="naver-site-verification" content="86455485e27cab6986d130e4c3b90c5b516820d1">
    <meta name="naver" content="nosublinks">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_DH2.css">
    <link rel="stylesheet" href="../css/style_jiin.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <link rel="stylesheet" href="../css/kim_2.css">
    <!-- 스위칭 스크립트 적용 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <link href="../favicon.ico?ver=2" rel="favicon">
    <style>
        .find_email, .find_email2{display: none;}
        #recoverForm{width: 780px;}
     </style>

    
</head>

<body>

    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->
    <div class="div_empty_bottom"></div>



    <!-- 입력 페이지 -->
    <div id="sri_section" >
        <div id="sri_wrap" style="margin-top: 200px;" >
            
            <!-- 입력칸  -->
            <div class="container_input_find">


            
                <!-- 비밀번호 찾기 -->
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 1" style="margin-top:50px;">
                  <line x1="0" y1="0" x2="100" y2="0" stroke="gray" stroke-width="0.5"/>
                </svg>
                <h1 class="title" id = "find_id"><br><br>회원님의 아이디는 [ ] 입니다.</h1>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 1" style="margin-bottom: 50px;">
                  <line x1="0" y1="0" x2="1000" y2="0" stroke="gray" stroke-width="0.5"/>
                </svg>
            
                </div>
            <!-- 입력칸  -->
        </div>
    </div>


    <!-- start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->




    <!-- 스크립트 라인 -->
    
    <!-- 메인 스크립트는 여기로 -->
    <script type="text/javascript" src="../js/page_jiin_info_VOL.js"></script>
    <!-- 메인 스크립트는 여기로 -->
    <script type="text/javascript" src="../js/page_jiin.js"></script>
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
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