<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <h2>회원가입 정보</h2>
	  <h3>아이디: ${mdto.id }</h3>
	  <h3>패스워드: ${mdto.pw }</h3>
	  <h3>이름: ${mdto.name }</h3>
	  <h3>성별: ${mdto.gender }</h3>
	  <h3>취미: ${mdto.hobby }</h3>
	  <form action="updateMForm" method="post" name="frm">
	    <input type="hidden" name="id" value="${mdto.id }">
	    <input type="hidden" name="pw" value="${mdto.pw }">
	    <input type="hidden" name="name" value="${mdto.name }">
	    <input type="hidden" name="gender" value="${mdto.gender }">
	    <input type="hidden" name="hobby" value="${mdto.hobby }">
	    <input type="submit" value="수정하기">
	  
	  </form>
	  
	</body>
</html>