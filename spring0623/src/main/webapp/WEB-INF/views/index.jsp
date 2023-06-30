<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h2>메인페이지</h2>
<ul>
<c:if test="${sessionId == null }">
<h2>로그인을 해주세요.</h2>
<li><a href="login">로그인</a></li>
<li>회원가입</li>
</c:if>
<c:if test="${sessionId != null }">
<h2>${sessionId } 님 환영합니다.</h2>
<li>학생성적입력</li>
<li><a href="logout">로그아웃</a></li>
<li>회원정보</li>
</c:if>
</ul>