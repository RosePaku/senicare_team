<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 검색버튼 테스트 -->
<!DOCTYPE html>
<html>
<head>
    <title>검색창 바</title>
    <style>
        /* 검색창 스타일링 */
        .search-bar {
            display: flex;
            align-items: center;
        }
        
        .search-bar input[type="text"] {
            margin-right: 10px;
            padding: 5px;
        }
        
        .search-bar select {
            margin-right: 10px;
            padding: 5px;
        }
        
        .search-bar button {
            padding: 5px 10px;
        }
    </style>
</head>
<body>

    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->

    <div class="search-bar">
        <input type="text" id="search-input" placeholder="검색 내용 입력">
        <select id="search-type">
            <option value="title">제목</option>
            <option value="author">작성자</option>
            <option value="content">내용</option>
        </select>
        <button onclick="search()">검색</button>
    </div>

    <script>
        function search() {
            var searchInput = document.getElementById("search-input").value;
            var searchType = document.getElementById("search-type").value;

            // 검색 동작을 수행하는 코드를 작성합니다.
            // 예시: 검색어와 검색 타입을 서버로 전송하고 결과를 받아옵니다.
            // 이후 결과를 처리하는 로직을 추가하세요.
        }
    </script>

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->
    
</body>
</html>
