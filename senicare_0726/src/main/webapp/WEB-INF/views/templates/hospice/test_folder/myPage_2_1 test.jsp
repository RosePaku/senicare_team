<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업 회원 채용 대시보드</title>
    <!-- 부트스트랩 CSS 불러오기 -->
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* 추가된 스타일 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        .dashboard {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            display: flex; /* 추가: 대시보드와 사이드바를 옆으로 나열 */
        }
        /* 테이블 스타일 */
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        /* 수정/삭제 버튼 스타일 */
        .edit-delete-buttons {
            display: flex;
        }
        .edit-delete-buttons button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            margin-left: 1rem;
            cursor: pointer;
        }
        .edit-delete-buttons button:hover {
            background-color: #0056b3;
        }

        /* 대시보드바 스타일 */
        .sidebar {
            height: 100%;
            width: 250px;
            background-color: #111;
            padding-top: 20px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 10px;
            text-align: center;
        }
        .sidebar ul li a {
            color: #fff;
            text-decoration: none;
            display: block;
        }
    </style>
</head>
<body>

    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->

    <!-- 대시보드바 추가 -->
    <div class="sidebar" id="sidebar">
        <ul>
            <li><a href="#">채용공고</a></li>
            <li><a href="#">채용</a></li>
            <li><a href="#">응모자</a></li>
            <li><a href="#">채팅(면접)</a></li>
            <li><a href="#" onclick="toggleSidebar()">닫기</a></li>
        </ul>
    </div>
    <div class="dashboard">
        <div>
            <header>
                <h1>기업 회원 채용 대시보드</h1>
            </header>
            <!-- 채용 공고 리스트 테이블 -->
            <table>
                <thead>
                    <tr>
                        <th>채용 공고 제목</th>
                        <th>직무 카테고리</th>
                        <th>근무지</th>
                        <th>작성일</th>
                        <th>상태</th>
                        <th>응모자수</th>
                        <th>클릭수</th>
                        <th>수정/삭제</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="job-listing">
                        <td>채용 공고 제목 1</td>
                        <td>IT</td>
                        <td>서울특별시 강남구</td>
                        <td>2023년 7월 19일</td>
                        <td>채용 중</td>
                        <td>10명</td>
                        <td>100회</td>
                        <td class="edit-delete-buttons">
                            <button onclick="editJobListing()">수정</button>
                            <button onclick="deleteJobListing()">삭제</button>
                        </td>
                    </tr>
                    <tr class="job-listing">
                        <td>채용 공고 제목 2</td>
                        <td>영업</td>
                        <td>부산광역시 서구</td>
                        <td>2023년 7월 18일</td>
                        <td>마감</td>
                        <td>20명</td>
                        <td>150회</td>
                        <td class="edit-delete-buttons">
                            <button onclick="editJobListing()">수정</button>
                            <button onclick="deleteJobListing()">삭제</button>
                        </td>
                    </tr>
                    <!-- 다른 채용 공고도 위와 같은 방식으로 추가 -->
                </tbody>
            </table>
            <div class="add-job-button">
                <button>채용 공고 추가</button>
            </div>
        </div>
    </div>

    <!-- 부트스트랩 자바스크립트 불러오기 -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // 채용 공고 수정 기능
        function editJobListing() {
            // 수정하는 기능 구현
            // 예: 채용 공고를 수정하는 페이지로 이동하거나 팝업창을 띄워 수정 폼을 보여줌
        }

        // 채용 공고 삭제 기능
        function deleteJobListing() {
            // 삭제하는 기능 구현
            // 예: 확인 메시지를 띄운 후, 사용자가 확인을 누르면 해당 채용 공고를 삭제함
        }

        // 대시보드바 토글 기능
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("active");
        }
    </script>

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->
    
</body>
</html>
