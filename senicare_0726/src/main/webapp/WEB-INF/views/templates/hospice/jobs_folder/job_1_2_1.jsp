<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- 
	0712_1934 작업사항
	1) 헤더, 푸터 작업 완료

	0724 작업사항_고은
	1) jsp 파일로 작업 수정
 -->

		<!doctype html>
		<html lang="en">

		<head>
			<!-- Required meta tags -->
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
			<link rel="icon" href="../img/favicon.png" type="../image/png">
			<title>Hospice Medical</title>
			<!-- Bootstrap CSS -->
			<link rel="stylesheet" href="../css/bootstrap.css">
			<link rel="stylesheet" href="../vendors/linericon/style.css">
			<link rel="stylesheet" href="../css/font-awesome.min.css">
			<link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
			<link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
			<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
			<link rel="stylesheet" href="../vendors/animate-css/animate.css">
			<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
			<!-- main css -->
			<link rel="stylesheet" href="../css/style.css">
			<link rel="stylesheet" href="../css/style_jiin.css">
			<link rel="stylesheet" href="../css/responsive.css">
			<link rel="stylesheet" href="../css/style_jiin_job.css">
			<!-- j쿼리 -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script type="application/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 날짜 포맷함수 -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="../js/jquery.ajaxchimp.min.js"></script>

		</head>
		

		<body>
			<!-- <script>
				$(document).ready(function() {
					$("#supportButton").click(function() {
						$.ajax({
							url: "/jobs_folder/job_1_2_1/increaseAuthBusinessVol",
							type: "POST",
							data: { auth_Business_Vol: ${A_B_Notice.auth_Business_Vol}},
							success: function(response) {
								alert(response);
							},
							error: function() {
								alert("에러가 발생했습니다. 다시 시도해주세요.");
							}
						});
					});
				});
			</script> -->

			<!--================Header Menu Area =================-->
			<%@ include file="../senicare_main_header.jsp" %>
				<!--================Header Menu Area =================-->

				<!--================ Banner Area =================-->
				<section class="banner_area">
					<div class="banner_inner d-flex align-items-center">
						<div class="container">
							<div class="banner_content text-left">
								<h2>바로 구직</h2>
								<div class="page_link">
									<a href="/">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
									<a href="../jobs_folder/job_1.jsp">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
								</div>
							</div>
						</div>
					</div>

					<!--================End Banner Area =================-->

					<!-- Start Offered Services Area -->
					<section class="job_t2_section">
						<div class="div_empty_top">
							<header class="job_t2_header">
								<h1>채용 사이트</h1>
								<nav class="job_t2_nav">
									<!-- 검색 기능을 구현한 부분입니다. -->
									<form id="jobsearch" method="get" action="/jobs">
										<input type="text" id="text-input-what" name="q" placeholder="직종, 키워드, 회사명 등"
											value="">
										<input type="text" id="text-input-where" name="l" placeholder="서울시, 구로구, 역명"
											value="">
										<button type="submit">채용검색</button>
									</form>
								</nav>
							</header>
							<main class="left_col" style="display: flex; padding: 1rem; margin-left: 15%;">
								<!-- 기업 정보를 보여주는 왼쪽 칼럼 -->

								<!-- <li>회원 번호: ${A_B_NoticeList.get(0).getAuth_Business_App()}</li> -->
								<!-- var만큼 반복 -->


								<section>
									<c:forEach items="${A_B_NoticeList}" var="A_B_Notice">
										<div class="company-list" id="company-list">
											<!-- 기업 정보를 그리드 형태로 표시합니다. -->
											<div class="company-item" data-company-id="${A_B_Notice.auth_Business_Wn}" onclick="clickHidden()">       
												<h3>${A_B_Notice.auth_Business_Ko} ${A_B_Notice.auth_Business_Po}</h3>
												<p>${A_B_Notice.auth_Business_Ko}</p>
												<p>${A_B_Notice.auth_Business_W_Gu}, ${A_B_Notice.auth_Business_W_Si},
													${A_B_Notice.auth_Business_W_Loc}</p>
												<p>${A_B_Notice.auth_Business_Key}</p>
												<p>${A_B_Notice.auth_Business_Des}</p>
												<!-- 기업 상세 정보 보기 링크 -->
												<!-- <a href="/A_B_Notice/${A_B_Notice.auth_Business_Wn}">상세 정보 보기</a> -->
											</div>
										</div>
									</c:forEach>
								</section>

								<section>
									<!-- 테스트 공간 -->
									<section>
										<div>
										<c:forEach items="${A_B_NoticeList}" var="A_B_Notice">
										<div class="company-details" id="company-details">
											<!-- 기업 상세 정보를 표시하는 컨테이너입니다. -->
											<div class="company-details-container" data-company-id="1" style="display: none;">
												<div class="company-details-header">
													<div class="" data-company-id="${A_B_Notice.auth_Business_Wn}">
														<h3>${A_B_Notice.auth_Business_Ko} ${A_B_Notice.auth_Business_Po}</h3>
														<p style="font-size: 20px;">${A_B_Notice.auth_Business_Ko}</p>
														<p style="font-size: 20px;">${A_B_Notice.auth_Business_W_Gu}, ${A_B_Notice.auth_Business_W_Si},
															${A_B_Notice.auth_Business_W_Loc}</p>
														<p style="font-size: 20px;">${A_B_Notice.auth_Business_Key}</p>
														<p style="font-size: 20px;">${A_B_Notice.auth_Business_Des}</p>
														<p style="font-size: 20px; border: 3px solid black; width: 30%;">현재 지원자 수 : ${A_B_Notice.auth_Business_Vol}</p>
														<!-- 기업 상세 정보 보기 링크 -->
														<!-- <a href="/A_B_Notice/${A_B_Notice.auth_Business_Wn}">상세 정보 보기</a> -->
													</div>
													<i class="close-button">X</i>
													<!-- <a href="http://" class="job_enter">구직 신청하기</a> -->
													<div class="search_button_1">
														<!-- 고객 마이페이지 -->
														<!-- 간편 지원하면 시퀀스 증가 -->
														<!-- onclick="showApplyAlert()" -->
														<form action="/jobs_folder/job_1_2_1" method="POST" onclick="showApplyAlert()" >
															<!-- 속성값 넘기기 -->
															<input type="hidden" name="auth_Business_Wn" value="${A_B_Notice.auth_Business_Wn}"/>
															<input type="hidden" name="auth_Business_Vol" value="${A_B_Notice.auth_Business_Vol}"/>
															<button class="job_enter" style="width: 300px;" type="submit">
																<!--  -->
																<font style="vertical-align: inherit;">
																	<font style="vertical-align: inherit;">간편 지원하기</font>
																</font>
															</button>
														</form>
														<!-- 데이터 타입에 따라 되면 이야기하기 간편 지원 또는 상세 지원 밖에 안되는 곳 (알럿)-->
	
														<form action="/jobs_folder/job_1_2_1" method="post" onclick="sangse()">
															<button class="job_enter" type="submit" style="width: 300px;">
																<font style="vertical-align: inherit;">
																	<font style="vertical-align: inherit;">상세 지원하기</font>
																</font>
															</button>
														</form>
														<!-- 데이터 타입에 따라 되면 이야기하기 간편 지원 또는 상세 지원 밖에 안되는 곳 (알럿)-->
														<!-- 회원 정보에 이력서 정보가 없다면 알럿 창이 뜨면서 이력서를 등록하라는 창으로 이동-->
													</div>
												</div>
												<div class="company-details-header2"
													style=" overflow-y: scroll; max-height: 1000px; padding: 20px;">
													<h2 style="font-size: 35pt; margin-bottom: 20px; border-bottom: 2px solid black;">상세 정보</h2>
													<div style="font-size: 30pt; margin-bottom: 20px;">
														<p class="j2_info" >기업명</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Ko}</p>
														<p class="j2_info" >급여</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Sal}</p>
														<p class="j2_info" >채용마감일</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Em_Cl}</p>
														<p class="j2_info" >자격 조건 및 우대사항</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Qu}</p>
														<p class="j2_info" >예정 면접일</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Sc}</p>
														<p class="j2_info" >채용 프로세스</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Pro}</p>
														<p class="j2_info" >기업 연봉 정책</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_Pol}</p>
														<p class="j2_info" >지원 방법</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_App}</p>
														<p class="j2_info" >지역</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_W_Gu} ${A_B_Notice.auth_Business_W_Si} ${A_B_Notice.auth_Business_W_Loc}  </p>
														<p class="j2_info" >기업 설명</p>
														<p class="j2_info" style="font-size: 20px;">${A_B_Notice.auth_Business_W_Gu} ${A_B_Notice.auth_Business_W_Si} ${A_B_Notice.auth_Business_Des}  </p>

													
													</div>
														<!-- 기업 간단한 정보, 구직 신청 버튼 등이 들어갈 수 있는 부분입니다. -->
												</div>
											</div>
											<!-- 다른 기업들의 상세 정보 컨테이너도 추가로 표시합니다. -->
										</div>
									</c:forEach>
									</section>
				

									<!-- 테스트 공간 -->
								</section>
								
			
					



						</div>

						<!-- 하단 페이지 바 -->
						<div id="page-buttons">
							<button onclick="goToPreviousPage()">이전</button>
							<button onclick="goToNextPage()">다음</button>
						</div>
						</main>
					</section>
					</main>




								<!-- 테스트 -->
	<!-- Start Offered Services Area -->
	
	
	<!-- 창닫기 기능 -->
	<script>
document.addEventListener('DOMContentLoaded', function () {
  const closeButton = document.querySelectorAll('.close-button');
  const companyDetailsContainers = document.querySelectorAll('.company-details-container');

  closeButton.forEach((button, index) => {
    button.addEventListener('click', () => {
      companyDetailsContainers[index].style.display = 'none';
    });
  });
});
	</script>
	
<script>
	// JavaScript 코드
function clickHidden() {
  const companyItems = document.querySelectorAll('.company-item');
  const companyDetailsContainers = document.querySelectorAll('.company-details-container');

  // 모든 기업 상세 정보 숨기기
  companyDetailsContainers.forEach(container => {
    container.style.display = 'none';
  });

  // 클릭한 기업에 해당하는 상세 정보만 보이도록 설정
  companyItems.forEach((item, index) => {
    item.addEventListener('click', () => {
      companyDetailsContainers[index].style.display = 'block';
    });
  });
}
</script>


    <script>
        function getJobData() {
            $.ajax({
                url: '/getJobData', // 컨트롤러의 경로를 입력합니다.
                type: 'GET',
                dataType: 'json', // 반환되는 데이터의 타입을 지정합니다.
                success: function(data) {
                    // Ajax 요청이 성공한 경우, 받아온 데이터를 화면에 표시합니다.
                    var jobInfoDiv = $("#jobInfo");
                    jobInfoDiv.empty(); // 기존 데이터를 지웁니다.
                    jobInfoDiv.append("<p>직종: " + data.jobTitle + "</p>");
                    jobInfoDiv.append("<p>회사: " + data.company + "</p>");
                },
                error: function() {
                    // Ajax 요청이 실패한 경우, 에러 메시지를 화면에 표시합니다.
                    var jobInfoDiv = $("#jobInfo");
                    jobInfoDiv.empty();
                    jobInfoDiv.append("<p>데이터를 가져오는 데 실패했습니다.</p>");
                }
            });
        }
    </script>

								<!-- 테스트 -->



							<!-- 지원 완료 스크립트 -->
							<script>
								function showApplyAlert() {
									alert("지원이 완료되었습니다.");
								}
								</script>
							<script>
								function sangse() {
									alert("상세 지원이 불가능한 회사입니다.");
								}
								</script>

						<!--====게시판====-->

						<!-- End Offered Services Area -->

						<!-- start footer Area -->
						<%@ include file="../senicare_main_footer.jsp" %>


						



							<!-- Optional JavaScript -->
							<!-- 스크립트 라이브러리 -->
							
							<script src="../js/popper.js"></script>
							<script src="../js/bootstrap.min.js"></script>
							<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
							<script src="../vendors/isotope/isotope-min.js"></script>
							<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
							<script src="../js/jquery.ajaxchimp.min.js"></script>
							<script src="../js/mail-script.js"></script>
							<script src="../js/page_jiin.js"></script>
							<script src="../js/custom.js"></script>
							<script src="../js/page_jiin_header_footer.js"></script>
							<script
								src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
							<script
								src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>



		</body>

		</html>