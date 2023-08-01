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
	<title>Hospice Medical</title>
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
	<link rel="stylesheet" href="../css/style_jiin_job.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style_jiin.css">
	<link rel="stylesheet" href="../css/responsive.css">

	<style>
    /* 헤더 스타일링 */
	.header_job_2_2_1_ {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        
        /* 메인 컨테이너 스타일링 */
        .jobt_job_2_2_1 {
            display: flex;
            justify-content: space-around;
            padding: 20px;
        }
        
        /* 폼 컨테이너 공통 스타일링 */
        .form-container_job_2_2_1 {
            width: 45%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        /* 폼 항목 공통 스타일링 */
        .form-group_job_2_2_1 {
            margin-bottom: 20px;
        }
        
        .label_job_2_2_1 {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .input-text_job_2_2_1, .input-textarea_job_2_2_1 {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .input-file_job_2_2_1 {
            display: none;
        }
        
        .submit_button_job_2_2_1 {
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }


  
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
					<h2>바로 구직</h2>
					<div class="page_link">
						<a href="/">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="../jobs_folder/job_1.jsp">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>

		   <!--================End Banner Area =================-->
		   <div class="div_empty_top"></div>
		   <!-- Start Offered Services Area -->
		   <header class="header_job_2_2_1_">
			   <h1 style="color:#fff">상세 지원</h1>
		   </header>
		   <main class="jobt_job_2_2_1">
			   <!-- 면접 질문 -->
			   <div class="resume-form-container_job_2_2_1 form-container_job_2_2_1">
				   <div>
					   <a href="javascript:history.back();" class="submit_button_job_2_2_1">뒤로가기</a>
				   </div>
				   <h2>면접 질문</h2>
				   <form action="submit_interview" method="post">
					   <div class="form-group_job_2_2_1">
						   <label for="interview_question" class="label_job_2_2_1">면접 질문</label>
						   <textarea name="interview_question" id="interview_question" class="input-textarea_job_2_2_1" placeholder="면접 질문을 입력하세요"></textarea>
					   </div>
					   <button class="submit_button_job_2_2_1" type="submit">제출</button>
				   </form>
			   </div>
   
			   <!-- 면접 질문 폼 -->
			   <div class="interview-form-container_job_2_2_1 form-container_job_2_2_1">
				   <h2>신청한 기업 미리보기</h2>
				   <!-- 신청한 기업 미리보기 데이터 들어오는 칸 -->
				   <form action="submit_interview" method="post">
					   <div class="form-group_job_2_2_1">
					   </div>
				   </form>
			   </div>
		   </main>
   
		   <!--====게시판====-->
   

		<!-- End Offered Services Area -->

		<!-- start footer Area -->
		<%@ include file="../senicare_main_footer.jsp" %>


		<!-- End footer Area -->



		<!-- Optional JavaScript -->
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


</body>

</html>