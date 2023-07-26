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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채용 사이트</title>
    <link rel="stylesheet" href="../style.css">
    <style>
      /* 전체 페이지 스타일링 */
/* body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
} */

/* 헤더 스타일링 */
header {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
}

/* 메인 컨테이너 스타일링 */
.jobt_t_2_1 {
    display: flex;
    justify-content: space-around;
    padding: 20px;
}

/* 폼 컨테이너 공통 스타일링 */
.form-container {
    width: 45%;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* 폼 항목 공통 스타일링 */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

.input-text, .input-textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.input-file {
    display: none;
}

.submit_button {
    padding: 10px 20px;
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* 푸터 스타일링 */
footer {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
}

    </style>
</head>
<body>
    <!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->
    <header>
        <h1>채용 사이트</h1>
    </header>
    <main class="jobt_t_2_1">
        <!-- 면접 질문 -->
        <div class="resume-form-container form-container">
          <div>
            <a href="javascript:history.back();" class="submit_button">뒤로가기</a>
        </div>
                <h2>면접 질문</h2>
                <form action="submit_interview" method="post">
                    <div class="form-group">
                        <label for="interview_question">면접 질문</label>
                        <textarea name="interview_question" id="interview_question" class="input-textarea" placeholder="면접 질문을 입력하세요"></textarea>
                    </div>
                  </form>
                  <button class="submit_button" type="submit">제출</button>
            </form>
        </div>

        <!-- 면접 질문 폼 -->
        <div class="interview-form-container form-container">
            <h2>신청한 기업 미리보기</h2>
            <!-- 신청한 기업 미리보기 데이터 들어오는 칸 -->
            <form action="submit_interview" method="post">
                <div class="form-group">
                </div>
            </form>
        </div>
    </main>
    <footer>
        <p>ⓒ 2023 채용 사이트. All rights reserved.</p>
    </footer>


    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->

</body>
</html>
