<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	  <title>홈페이지</title>
	  <style>
		/* 스타일을 추가해 주세요 */
	  </style>
	</head>
	<body>
	  <header>
		<div class="logo">
		  <!-- 로고 이미지 또는 텍스트를 추가해 주세요 -->
		</div>
		<div class="categories">
		<script>
			if (${result == "success"}) {
				alert("${sessionName}님, 로그인 되었습니다");
			}
			
			if (${logout == "logout"}) {
				alert("로그아웃 되었습니다.");
			}
		</script>
			<h2><a href="/member/login"><h2>로그인 </h2></a></h2>
			<h2><a href="/member/logout"><h2>로그아웃 </h2></a></h2>
		  <ul>
			<li><a href="/searchHoss_folder/searchHos_1">내 주변 의료기관 찾기</a></li>
			<li><a href="/madangs_folder/madang_1_1">자유/일상게시판</a></li>
			<li><a href="/madangs_folder/madang_2_1">취미/친목게시판</a></li>
			<li><a href="/healths_folder/health_1">나의 건강관리</a></li>
		  </ul>
		</div>
	  </header>
	  
	  <main>
		<!-- 사진을 추가해 주세요 -->
	  </main>
	  
	  <footer>
		<p>회사 설명 예시를 여기에 추가해 주세요</p>
	  </footer>
	</body>
	</html>
	

	<div class="Slide-169---1">
		<div class="B_logo">
			<img src="images/logo.png">
		</div>
		<div class="Frame-1">
			<img src="images/login.png">
			<img src="images/join.png">
			<img src="images/idSearch.png">