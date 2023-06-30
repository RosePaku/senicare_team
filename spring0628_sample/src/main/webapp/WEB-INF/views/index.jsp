<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
	  <h2>메인페이지</h2>
	  <ul>
	    <c:if test="${sessionId==null}">
		    <h3>로그인을 해주세요.</h3>
		    <li><a href="login">로그인</a></li>
	    </c:if>
	    <c:if test="${sessionId!=null}">
		    <h3>${sessionName} 님 환영합니다.</h3>
		    <li><a href="logout">로그아웃</a></li>
		    <li><a href="board/boardList">게시판</a></li>
		    <li>회원전체정보</li>
	    </c:if>
	  </ul>
	  
	  
	  
	
	</body>
</html>