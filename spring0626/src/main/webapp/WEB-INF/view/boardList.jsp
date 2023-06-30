<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>게시판</title>
<link href="폰트(노토산)">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
    
    <colgroup>

    
    
    </colgroup>






















<!-- 제목 -->
<tr>
    <th></th>
    <th>제목</th>
    <th></th>
    <th></th>
    <th>조회수</th>
</tr>
<!-- 내용부분 -->
<c:forEach var="board" items="${list}">
    <tr>
        <td><span class="table-notice">${board.bno}</span></td>
        <td class="table-title">
            <a href="boardView?bno=${board.bno}">${board.title}</a>
        </td>
        <td>${board.id}</td>
        <td>
            <fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd">
            </fmt:formatDate></td>
        <td>${board.list}</td>
    </tr>
</c:forEach>

</body>
</html>