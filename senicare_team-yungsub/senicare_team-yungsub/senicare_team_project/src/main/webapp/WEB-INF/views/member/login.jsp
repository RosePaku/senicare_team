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
		<script>
			if (${result=="fail"}) {
				alert("로그인 실패");
			}
		</script>
		<div class="categories">
		  <form action="/member/login" name="loginFrm" method="post">
		  	아이디<input type="text" id="id" name="id"><br>
		  	비밀번호<input type="text" id="pw" name="pw"><br>
		  	<input type="submit" value="전송">
		  </form>
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
			<img src="../images/logo.png">
		</div>
		<div class="Frame-1">
			<img src="../images/login.png">
			<img src="../images/join.png">
			<img src="../images/idSearch.png">