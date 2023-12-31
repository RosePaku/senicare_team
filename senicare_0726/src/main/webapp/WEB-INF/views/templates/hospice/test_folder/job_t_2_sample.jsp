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
  <title>채용 사이트 예시</title>
  <link rel="stylesheet" href="../css/style_jiin_job.css">
</head>

<body class = "job_t2_body">
  <!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>
	<!--================Header Menu Area =================-->
<section class = "job_t2_section">
  <header class="job_t2_header">
    <h1>채용 사이트 (job_1_2_2로 넣기)</h1>
    <nav class="job_t2_nav">
      <!-- 검색 기능을 구현한 부분입니다. -->
      <form id="jobsearch" method="get" action="/jobs">
        <input type="text" id="text-input-what" name="q" placeholder="직종, 키워드, 회사명 등" value="">
        <input type="text" id="text-input-where" name="l" placeholder="서울시, 구로구, 역명" value="">
        <button type="submit">채용검색</button>
      </form>
    </nav>
  </header>
  <main class="job_t2_main">
    <!-- 기업 정보를 보여주는 왼쪽 칼럼 -->
    <div class="company-list" id="company-list">
      <!-- 기업 정보를 그리드 형태로 표시합니다. -->
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="2">
        <h3>기업 이름 2</h3>
        <p>기업 2의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="3">
        <h3>기업 이름 3</h3>
        <p>기업 3의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="4">
        <h3>기업 이름 4</h3>
        <p>기업 4의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="5">
        <h3>기업 이름 5</h3>
        <p>기업 5의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="6">
        <h3>기업 이름 6</h3>
        <p>기업 6의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="7">
        <h3>기업 이름 7</h3>
        <p>기업 7의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="8">
        <h3>기업 이름 8</h3>
        <p>기업 8의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="9">
        <h3>기업 이름 9</h3>
        <p>기업 9의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="10">
        <h3>기업 이름 10</h3>
        <p>기업 10의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <div class="company-item" data-company-id="1">
        <h3>기업 이름 1</h3>
        <p>기업 1의 정보를 미리보기로 표시합니다</p>
      </div>
      <!-- 다른 기업 정보들도 추가로 표시합니다. -->
    </div>
    <!-- 기업 상세 정보를 보여주는 오른쪽 칼럼 -->
    <div class="company-details" id="company-details">
      <!-- 기업 상세 정보를 표시하는 컨테이너입니다. -->
      <div class="company-details-container" data-company-id="1">
		<div class="company-details-header">
			<p class="job_t2" id="">창고 내 작업</p>
			<p class="job_t2" id="">야마토 포장 주식회사</p>
			<p class="job_t2" id="">홋카이도 삿포로시 시라이시구 기쿠스이역</p>
			<p class="job_t2" id="">일급 7,400엔 ~ 11,000엔- 아르바이트 파트</p>
			<i class="close-button" onclick="hideCompanyDetails(1)">X</i>
			<!-- <a href="http://" class="job_enter">구직 신청하기</a> -->
      <div class="search_button_1">
      <button class="job_enter"
      type="submit">
      <!--  -->
      <font style="vertical-align: inherit;">
        <font style="vertical-align: inherit;">간편 지원하기</font>
      </font>
    </button>
    <!-- 데이터 타입에 따라 되면 이야기하기 간편 지원 또는 상세 지원 밖에 안되는 곳 (알럿)-->
    <form action="jobs_folder/job_1_2_2" method="post" id="ss">
    <button class="job_enter"
    type="submit">
    <font style="vertical-align: inherit;">
      <font style="vertical-align: inherit;">상세 지원하기</font>
    </font>
  </button>
</form>
  <!-- 데이터 타입에 따라 되면 이야기하기 간편 지원 또는 상세 지원 밖에 안되는 곳 (알럿)-->
  <!-- 회원 정보에 이력서 정보가 없다면 알럿 창이 뜨면서 이력서를 등록하라는 창으로 이동-->
  </div>
		  </div>
        <div class="company-details-header2" style="overflow-y: scroll; max-height: 1000px;">
			<h2>기업 이름 2 상세 정보</h2>

			<p class="j2_info" id="">기업 정보가 여기에 표시됩니다.</p>
			<p class="j2_info" id="">기업 정보가 여기에 표시됩니다.</p>
			<p class="j2_info" id="">기업 정보가 여기에 표시됩니다.</p>
			<p class="j2_info" id="">기업 정보가 여기에 표시됩니다.</p>
			<p class="j2_info" id="">기업 정보가 여기에 표시됩니다.</p>
          <!-- 기업 간단한 정보, 구직 신청 버튼 등이 들어갈 수 있는 부분입니다. -->
        </div>
      </div>
      <!-- 다른 기업들의 상세 정보 컨테이너도 추가로 표시합니다. -->
    </div>
</main>

  <!-- 하단 페이지 바 -->
  <div id="page-buttons">
    <button onclick="goToPreviousPage()">이전</button>
    <button onclick="goToNextPage()">다음</button>
  </div>
  <script>
    // JavaScript를 사용하여 기업 상세 정보를 표시하는 기능을 구현합니다.
    const companyList = document.querySelectorAll('.company-item');
    const companyDetailsContainers = document.querySelectorAll('.company-details-container');
    const pageButtonsContainer = document.getElementById('page-buttons');

    const companiesPerPage = 5;
    const totalCompanies = companyList.length;
    let currentPage = 1;

    function showPage(pageNumber) {
      const startIndex = (pageNumber - 1) * companiesPerPage;
      const endIndex = startIndex + companiesPerPage;

      companyList.forEach((item, index) => {
        if (index >= startIndex && index < endIndex) {
          item.classList.add('active'); // 해당 페이지에 해당하는 기업 정보를 보여줍니다.
        } else {
          item.classList.remove('active'); // 해당 페이지에 해당하지 않는 기업 정보를 숨깁니다.
        }
      });
    }

    function showCompanyDetails(companyId) {
      companyDetailsContainers.forEach((container) => {
        if (container.getAttribute('data-company-id') === companyId) {
          container.classList.add('active'); // 선택한 기업의 상세 정보를 보여줍니다.
        } else {
          container.classList.remove('active'); // 선택하지 않은 기업의 상세 정보를 숨깁니다.
        }
      });
    }

    function createPageButtons() {
      const totalPages = Math.ceil(totalCompanies / companiesPerPage);
      let buttonsHTML = '';

      for (let i = 1; i <= totalPages; i++) {
        buttonsHTML += `<button onclick="showPage(${i})">${i}</button>`;
      }

      pageButtonsContainer.innerHTML = buttonsHTML;
    }

    // 이전 페이지로 이동하는 함수
    function goToPreviousPage() {
      if (currentPage > 1) {
        currentPage--;
        showPage(currentPage);
      }
    }

	

    // 다음 페이지로 이동하는 함수
    function goToNextPage() {
      const totalPages = Math.ceil(totalCompanies / companiesPerPage);
      if (currentPage < totalPages) {
        currentPage++;
        showPage(currentPage);
      }
    }

    // 각 기업 정보를 클릭했을 때 상세 정보를 보여주는 이벤트를 추가합니다.
    companyList.forEach((item) => {
      item.addEventListener('click', () => {
        const companyId = item.getAttribute('data-company-id');
        showCompanyDetails(companyId);
      });
    });

    createPageButtons();
    showPage(currentPage); // 페이지 버튼이 만들어진 후 처음에 첫 페이지의 기업 정보를 보여줍니다.
  </script>
  <script>
	// 해당 기업 상세 정보를 숨기는 함수
	function hideCompanyDetails(companyId) {
	  companyDetailsContainers.forEach((container) => {
		if (container.getAttribute('data-company-id') === String(companyId)) {
		  container.classList.remove('active');
		}
	  });
	}
  </script>
  <section class = "job_t2_section">

  <!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->
</body>

</html>
