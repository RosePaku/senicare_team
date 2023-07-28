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
        <div id="sri_wrap" style="margin-top: 200px; margin-bottom: 200px;" >
            
            <!-- 입력칸  -->
            <div class="container_input_find">
              <h1 class="title" id = "find_id">개인 아이디 찾기</h1>
              <form id="recoverForm" action="../site/main/member/public/recoverMemberId" method="post">
                <input type="hidden" name="_sToken" value="1689229764805_63d40fd05050256f1c820c8151931914e1b821533f57714a0c29c762c7a781de">
           
                <!-- 본인확인 방법 -->
                <div class="form-group">
                  <label><strong class="find_title">본인확인 방법</strong></label>
                  <label for="recoverConfirmMethod1" style="font-size:22px;">
                    <input type="radio" id="recoverConfirmMethod1" name="recoverConfirmMethod" value="phone" checked="checked">
                    휴대전화번호
                  </label>
                  <label for="recoverConfirmMethod2" style="font-size:22px;">
                  <input type="radio" id="recoverConfirmMethod2" name="recoverConfirmMethod" value="email">
                  이메일
                  </label>
                </div>
                <!-- 본인확인 방법 -->
          
                <!-- 이름 줄 -->
                <div class="form-group">
                  <label for="memberName"><strong class="find_title">이름</strong></label>
                  <input id="memberName" name="memberName" type="text" value="">
                </div>
                <!-- 이름 줄 -->
          
                <!-- 휴대전화번호 -->
                <div class="form-group find_phone">
                  <div>
                  <label><strong class="find_title">휴대전화번호</strong></label>
                    <select id="memberMobile1" name="memberMobile1">
                      <option value="">선택</option>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                    -
                    <input type="text" id="memberMobile2" name="memberMobile2" maxlength="4">
                    -
                    <input type="text" id="memberMobile3" name="memberMobile3" maxlength="4">
                    <h5 style="font-size:18px; text-align: center; margin-top:8px; margin-left:110px; color:rgb(64, 64, 64);">회원등록시 입력하신 휴대전화번호를 입력하세요.</h5>
                  </div>
                </div>
                <!-- 휴대전화번호 -->
          
                <!-- 이메일주소 -->
                <div class="form-group1 find_email">        
                  <div>
                      <label for="memberEmail"><strong class="find_title">이메일주소</strong></label>
                      <input id="memberEmail" name="memberEmail" type="text" value=" "style="width:350px;">
                      <h5 style="font-size:18px; text-align: center; margin-top:8px; margin-left:40px; color:rgb(64, 64, 64);">회원등록시 입력하신 이메일 주소를 입력하세요.</h5>
                  </div>
                </div>
                <!-- 이메일주소 -->
          
                <!-- 버튼 -->
                <button type="submit" id="button1">확인</button>      
              </form>
          
              <!-- 비밀번호 찾기 -->
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 1" style="margin-top:150px;">
                <line x1="0" y1="0" x2="100" y2="0" stroke="gray" stroke-width="0.5"/>
              </svg>
              <h1 class="title" id = "find_id"><br><br>개인 비밀번호 찾기</h1>
              <form id="recoverForm" action="/site/main/member/public/recoverMemberId" method="post">
                <input type="hidden" name="_sToken" value="1689229764805_63d40fd05050256f1c820c8151931914e1b821533f57714a0c29c762c7a781de">
           
                <!-- 본인확인 방법 -->
                <div class="form-group1">
                  <label><strong class="find_title">본인확인 방법</strong></label>
                  <label for="recoverConfirmMethod3" style="font-size:22px;">
                    <input type="radio" id="recoverConfirmMethod3" name="recoverConfirmMethod2" value="phone" checked="checked">
                    휴대전화번호
                  </label>
                  <label for="recoverConfirmMethod4" style="font-size:22px;">
                  <input type="radio" id="recoverConfirmMethod4" name="recoverConfirmMethod2" value="email">
                  이메일
                  </label>
                </div>
                <!-- 본인확인 방법 -->
          
                <!-- 이름 줄 -->
                <div class="form-group1">
                  <label for="memberName"><strong class="find_title">이름</strong></label>
                  <input id="memberName" name="memberName" type="text" value="">
                </div>
                <!-- 이름 줄 -->
          
                <!-- 아이디 줄 -->
                <div class="form-group1">
                  <label for="memberName"><strong class="find_title">아이디</strong></label>
                  <input id="memberName" name="memberName" type="text" value=" "style="width:200px;">
                </div>
                <!-- 아이디 줄 -->
          
                <!-- 휴대전화번호 -->
                <div class="form-group1 find_phone2">
                  <div>
                  <label><strong class="find_title">휴대전화번호</strong></label>
                    <select id="memberMobile1" name="memberMobile1">
                      <option value="">선택</option>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                    -
                    <input type="text" id="memberMobile2" name="memberMobile2" maxlength="4">
                    -
                    <input type="text" id="memberMobile3" name="memberMobile3" maxlength="4">
                    <h5 style="font-size:18px; text-align: center; margin-top:8px; margin-left:110px; color:rgb(64, 64, 64);">회원등록시 입력하신 휴대전화번호를 입력하세요.</h5>
                  </div>
                </div>
                <!-- 휴대전화번호 -->
          
                <!-- 이메일주소 -->
                <div class="form-group1 find_email2">        
                  <div>
                      <label for="memberEmail"><strong class="find_title" style="width:200px;">이메일주소</strong></label>
                      <input id="memberEmail" name="memberEmail" type="text" value="" style="width:350px;">
                      <h5 style="font-size:18px; text-align: center; margin-top:8px; margin-left:40px; color:rgb(64, 64, 64);">회원등록시 입력하신 이메일 주소를 입력하세요.</h5>
                  </div>
                </div>
                <!-- 이메일주소 -->
          
                <!-- 버튼 -->
                <button type="submit" id="button1">확인</button>      
              </form>
          
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
	<script src="../js/page_jiin_member_3_2.js"></script>
	<script src="../js/custom.js"></script>
	<script src="../js/page_jiin_header_footer.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

    <!-- 스크립트 라인 -->


</body>

</html>