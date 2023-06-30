<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>글수정</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/write.css">
  <script>
    function updateBtn(){
    	if(confirm("게시글을 수정하시겠습니까?")){
    		update.submit();
    	}
    }
  </script>
</head>
<body>
<section>
    <h1>게시글수정</h1>
    <hr>

    <form action="boardUpdate" name="update" method="post" enctype="multipart/form-data">
      <table>
      <input type="hidden" name="bno" value="${bdto.bno}">
      <input type="hidden" name="bfile" value="${bdto.bfile}">
      <input type="hidden" name="page" value="${page}">
      <input type="hidden" name="category" value="${category}">
      <input type="hidden" name="s_word" value="${s_word}">
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" name="id" value="${bdto.id}" readonly>
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="btitle" value="${bdto.btitle}">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="bcontent" cols="50" rows="10">${bdto.bcontent}
           
            </textarea>
          </td>
        </tr>
        <tr>
          <th>파일</th>
          <td>${bdto.bfile}</td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <input type="file" name="file" id="file">
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="button" onclick="updateBtn()" class="write">수정완료</button>
        <button type="button" class="cancel" onclick="javascript:location.href='boardList'">취소</button>
      </div>
    </form>

  </section>

</body>
</html>