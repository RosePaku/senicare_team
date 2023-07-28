<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 채팅 기능!!!!! -->
<!DOCTYPE html>
<html>
<head>
    <title>채팅 페이지</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f6f6f6;
    }
    .container {
        display: flex;
        height: 100vh;
    }
    .left-side, .right-side {
        padding: 1em;
        overflow-y: auto;
    }
    .left-side {
        flex: 1;
        border-right: 1px solid #ddd;
    }
    .right-side {
        flex: 2;
    }
    .message-box {
        border: 1px solid #ddd;
        margin: 1em 0;
        padding: 1em;
        border-radius: 5px;
        background-color: #fff;
    }
    .message-box h2 {
        margin: 0;
    }
    .message-box p {
        color: #777;
    }
    .message {
        padding: 1em;
        border-bottom: 1px solid #ddd;
        background-color: #fff;
        height: 500px;
    }
    .message .sender {
        font-weight: bold;
    }
    .message .time {
        color: #777;
        font-size: 0.8em;
    }
    .message .text {
        margin-top: 0.5em;
    }
    .message-composer textarea {
        width: 80%;
        padding: 1em;
        border: 1px solid #ddd;
        border-radius: 5px;
        resize: none;
        margin-left: 10%;
    margin-top: 1%;
    }
    .message-composer button {
        display: block;
        width: 100%;
        padding: 1em;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        margin-top: 1em;
        cursor: pointer;
    }
    .myPage_2_2_div{
        display: flex;
    }
    .myPage_2_2_p{
        margin-left: 60%;
    }

    .myPage_2_2_job2{
        border: 1px solid #000;
    }
 
    </style>
</head>
<body>
    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->

    <div class="container">
        <div class="left-side">
            <div class="message-box">
                <div class="myPage_2_2_div"><h2>회원명</h2><p class="myPage_2_2_p">날짜</p></div>
                <p>마지막 대화 내용...</p>
            </div>
        </div>
        <div class="right-side">
            <div class="myPage_2_2_job2"> 
            <div class="message">
                <div class="sender">회원</div>
                <div class="time">10:12</div>
                <div class="text">지원했습니다.</div>
            </div>
            <div class="message-composer">
                <textarea placeholder="메시지 작성"></textarea>
                <button>보내기</button>
                
            </div>
        </div>
        </div>
    </div>

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->

</body>
</html>
