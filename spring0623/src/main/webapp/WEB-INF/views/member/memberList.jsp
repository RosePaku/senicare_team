<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원전체정보</title>
	<style>
		h2 {
			width: 900px;
			text-align: center;
			margin: 20px auto;
		}

		table {
			width: 900px;
			margin: 30px auto;
		}

		table, th, td {
			border: 1px solid black;
			border-collapse: collapse;
		}

		th, td {
			width: 150px;
			height: 40px;
			text-align: center;
		}
	</style>
</head>
<body>
	<h2>회원전체정보</h2>
	<table>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>성별</th>
			<th>취미</th>
		</tr>
		<c:forEach var="member" items="${list}">
			<tr>
				<td>${member.id}</td>
				<td>${member.pw}</td>
				<td><a href="memberView">${member.name}</a></td>
				<td>${member.phone}</td> <!-- 'phone' 오타 수정 -->
				<td>${member.gender}</td>
				<td>${member.hobby}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
