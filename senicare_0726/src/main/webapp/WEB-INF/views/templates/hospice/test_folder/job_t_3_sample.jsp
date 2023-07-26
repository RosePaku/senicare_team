<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
  2) 헤더, 푸터 작업 완료
 -->

<!-- 해당 코드로 수정 -->
<!-- 
  설명 : 구직 신청하기 버튼을 클릭했을 때 처음에 입력하는 값.
  
 -->
<!DOCTYPE html>
<html>
<head>
    <title>구직 신청 페이지</title>

    <link rel="stylesheet" href="../css/style_jiin_job.css">
</head>
<body class="job_t_3_body">
  <!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->

  <div class="info-container">
    <!-- 왼쪽 영역: 구직자 정보 입력란 -->
    <div class="applicant-info">
      <!-- 이전 페이지로 이동 -->
        <button class="btn-stop">중단하기</button>
        <!-- 게이지 바와 중단하기 버튼 -->
        <div class="progress-container">
          <div class="progress-bar">
            <div class="progress" style="width: 50%;"></div>
          </div>
        </div>

        <h2 class="job_t_3_h2">구직자 정보 입력</h2>
        <form>
          <label class="job_label_2" for="name">이름:</label>
          <input type="text" id="name" name="name" required>

          <label class="job_label_2" for="email">이메일:</label>
          <input type="email" id="email" name="email" required>

          <label class="job_label_2" for="phone">전화번호:</label>
          <input type="tel" id="phone" name="phone" required>

          <!-- 성별 라벨과 체크 박스 -->
          <div>
            <label class="job_label_2" for="gender">성별:</label>
            <input type="radio" id="male" name="gender" value="남성" required>
            <label class="job_label_2" for="male">남성</label>
            <input type="radio" id="female" name="gender" value="여성" required>
            <label class="job_label_2" for="female">여성</label>
          </div>

          <!-- 생년월일 입력 -->
          <label class="job_label_2" for="birthdate">생년월일:</label>
          <input type="date" id="birthdate" name="birthdate" required>
          <!-- 다음으로 넘어가기 -->
          <!-- 회원가입 안했을 경우 회원가입창으로 넘기기!! -->
          <input type="submit" value="저장하고 다음으로 이동">
        </form>
      </div>

      <!-- 오른쪽 영역: 구직자 신청 회사 정보 -->
      <div class="company-info">
        <h2 class="job_t_3_h2">신청한 회사 정보</h2>
        <div>
          <div class="company-info">
            <h3>회사 A</h3>
            <p>산업: IT 서비스</p>
            <p>위치: 서울시 강남구</p>
            <p>담당자: 홍길동</p>
            <p>연락처: 010-1234-5678</p>
          </div>
          <div class="company-info">
            <h3>회사 B</h3>
            <p>산업: 금융</p>
            <p>위치: 서울시 중구</p>
            <p>담당자: 이영희</p>
            <p>연락처: 010-9876-5432</p>
          </div>
          <!-- 추가 회사 정보 박스들 -->
        </div>
      </div>
  </div>


    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
		<!-- End footer Area -->


</body>
</html>