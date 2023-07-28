<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
	<!DOCTYPE html>
	<html>
	<head>
	  <title>홈페이지</title>
	  <style>
		/* 스타일을 추가해 주세요 */
	  </style>
	</head>
	<body>
		<!--================Header Menu Area =================-->
		<%@ include file="../senicare_main_header.jsp" %>
		<!--================Header Menu Area =================-->

	  <header>
		<div class="logo">
		  <!-- 로고 이미지 또는 텍스트를 추가해 주세요 -->
		</div>
		<div class="categories">
		  <ul>
			<li>카테고리1</li>
			<li>카테고리2</li>
			<li>카테고리3</li>
			<li>카테고리4</li>
		  </ul>
		</div>
	  </header>
	  
	  <main>
		<!-- 사진을 추가해 주세요 -->
	  </main>
	  
	  <footer>
		<p>회사 설명 예시를 여기에 추가해 주세요</p>
	  </footer>
	  <!-- start footer Area -->
	  <%@ include file="../senicare_main_footer.jsp" %>
	  <!-- End footer Area -->
	</body>
	</html>


	

	<!-- <div class="Slide-169---1">
		<div class="B_logo">
			<img src="images/logo.png">
		</div>
		<div class="Frame-1">
			<img src="images/login.png">
			<img src="images/join.png">
			<img src="images/idSearch.png">