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
	<h2>view</h2>
	<h3>아이디 : ${member.id} </h3>
	<h3>패스워드 : ${member.pw}  </h3>
	<h3>이름 : ${member.name} </h3>
	<h3>전화번호 : ${member.phone} </h3>
	<h3>성별 : ${member.gender} </h3>
	<h3>취미 : ${member.hobby} </h3>
	<button><a href="member/memberList">회원목록</a></button>

</body>
</html>
