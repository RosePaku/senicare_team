<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	0712_1934 작업사항
	1) 헤더, 푸터 작업 완료
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
 -->

<!-- 기존 작업할꺼 폐지 -->
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
</head>

<body>



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
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="../job_1.jsp">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start Offered Services Area -->

<section class="service_area section_gap1">
	<div class="container1">
		<div class="left-area">
			<!-- 메인 페이지 영역 카테고리 메뉴 -->
			<div data-include-path="../jobs_folder/job_list.jsp"></div>
			<!-- 메인 페이지 영역 카테고리 메뉴 -->
		</div>

		<div class="right-area">
	<!--====게시판====-->
	<div class="right-area">
		<div class="right_contents_wrap">
			<h3>바로 / 구직</h3>
			<div class="content_box tab_menu_01">
				<div class="boxtype1">

					<p class="descript">
						본 게시판은 인제군 관내 구직을 위한 게시판입니다.<br>
						본래의 취지와 관계없는 광고, 온라인 회원 모집, 휴대폰 가입홍보 등의 광고 글은 사전예고없이 삭제 되오니 이점 양해하여 주시기 바라며, 게시물의
						특성상 연락처를 올리실 경우 개인정보가 유출될 수 있으니 주의하여 주시고 일정 시간일 지난 후 자동삭제 되도록 조치하여 주시기 바랍니다.&nbsp;
					</p>
				</div>

				<div class="boSrchArea">
					<div class="boMeta">

						<span class="boMeta-pt"> 총 </span>
						36828
						건
					</div>
					<!-- 게시판 검색창 바 -->
					<form name="mForm" method="post" class="boSrch ">
						<input type="hidden" name="pageIndex" value="1"> <input type="hidden" name="mode">
						<input type="hidden" name="firstYN" value="N">
						<fieldset>
							<div class="txSrch">
								<select id="boSelect" class="boSrch-selectBox skinSelectBox"
									name="searchCondition">
									<option value="TITLE">제목</option>
									<option value="NAME">작성자</option>
									<option value="CONTENT">내용</option>
								</select>
								<input type="text" id="boSearch" name="searchKeyword" value="검색어를 입력해 주세요."
									onfocus="if (this.value== '검색어를 입력해 주세요.') {this.value='';};"
									class="boSrch-iptTxt skinIptTxt"> <input type="submit" value="검색"
									onclick="linkPage('1');" class="boSrch-btnBo skinBtnBo skinBtnBo-data-pos">
							</div>
						</fieldset>
					</form>
				</div>


				<div>
					<table class="skinTb skinTb-data-resList skinTb-data-bgEven">
						<!-- <caption class="blind">게시판 제목</caption> -->
						<thead data-hidden="mob" class="board_thead">
							<tr>
								<th scope="col" data-hidden="tablet">번호</th>
								<th scope="col" class="skinTb-sbj" data-seq="first">제목</th>

								<th scope="col">작성자</th>
								<th scope="col" class="skinTb-date">등록일</th>

								<th scope="col" data-hidden="tablet">조회수</th>
							</tr>
						</thead>
						<tbody class="board_tbody" >

							<tr>
								<td class="skinTxa-center" data-hidden="tablet">
									36828
								</td>
								<td class="skinTb-sbj" data-seq="first">
									<a href="../portal/participation/job/recruit?articleSeq=212311"
										onclick="goPage(this.href); return false;">
										인제자담치킨 알바생 구합니다.

										<img src="../page/common/images/ico-new.png" alt="새 게시물" class="icoNew">
									</a>
								</td>

								<td class="skinTb-name skinTxa-center">
									박융희
								</td>
								<td class="skinTb-date skinTxa-center">2023-07-16</td>

								<td class="skinTxa-center" data-hidden="tablet">95</td>
							</tr>

							<tr>
								<td class="skinTxa-center" data-hidden="tablet">
									36827
								</td>
								<td class="skinTb-sbj" data-seq="first">
									<a href="../portal/participation/job/recruit?articleSeq=212308"
										onclick="goPage(this.href); return false;">
										구인합니다.(학생지원가능)

										<img src="../page/common/images/ico-new.png" alt="새 게시물" class="icoNew">
									</a>
								</td>

								<td class="skinTb-name skinTxa-center">
									이성오
								</td>
								<td class="skinTb-date skinTxa-center">2023-07-16</td>

								<td class="skinTxa-center" data-hidden="tablet">107</td>
							</tr>

							<tr>
								<td class="skinTxa-center" data-hidden="tablet">
									36826
								</td>
								<td class="skinTb-sbj" data-seq="first">
									<a href="../portal/participation/job/recruit?articleSeq=212295"
										onclick="goPage(this.href); return false;">
										중소형 이사운반 및 작업보조 아르바이트 구합니다.
									</a>
								</td>
								<td class="skinTb-name skinTxa-center">
									이벽
								</td>
								<td class="skinTb-date skinTxa-center">2023-07-15</td>

								<td class="skinTxa-center" data-hidden="tablet">120</td>
							</tr>

							<tr>
								<td class="skinTxa-center" data-hidden="tablet">
									36825
								</td>
								<td class="skinTb-sbj" data-seq="first">

									<a href="../portal/participation/job/recruit?articleSeq=212286"
										onclick="goPage(this.href); return false;">
										(합자)용대향토기업 채용공고
									</a>
								</td>

								<td class="skinTb-name skinTxa-center">
									송민아
								</td>
								<td class="skinTb-date skinTxa-center">2023-07-14</td>

								<td class="skinTxa-center" data-hidden="tablet">147</td>
							</tr>

							<tr>
								<td class="skinTxa-center" data-hidden="tablet">
									36824
								</td>
								<td class="skinTb-sbj" data-seq="first">
									<a href="../portal/participation/job/recruit?articleSeq=212285"
										onclick="goPage(this.href); return false;">
										2023 주식회사 북설악 채용 공고
									</a>
								</td>
								<td class="skinTb-name skinTxa-center">
									권영준
								</td>
								<td class="skinTb-date skinTxa-center">2023-07-14</td>

								<td class="skinTxa-center" data-hidden="tablet">190</td>


						</tbody>
					</table>
				</div>
				<div class="pager">
					<a href="?pageIndex=1" class="pager-link pager-link-data-first"
						onclick="linkPage(1);return false;">
						<i class="fas fa-fast-backward" aria-label="10페이지 앞으로 이동
							"></i></a>
					<a href="?pageIndex=1" class="pager-link pager-link-data-prev"
						onclick="linkPage(1);return false;">
						<i class="fas fa-step-backward" aria-label="1페이지 앞으로 이동"></i>
					</a>
					<span class="pager-num">1/1842</span>
					<a onclick="return false;" class="pager-link active">1</a>
					<a href="?pageIndex=2" class="pager-link" onclick="linkPage(2);return false;">
						2
					</a>
					<a href="?pageIndex=3" class="pager-link" onclick="linkPage(3);return false;">
						3
					</a>
					<a href="?pageIndex=4" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(4);return false;">
						4
					</a>
					<a href="?pageIndex=5" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(5);return false;">
						5
					</a>
					<a href="?pageIndex=6" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(6);return false;">
						6
					</a>
					<a href="?pageIndex=7" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(7);return false;">
						7
					</a>
					<a href="?pageIndex=8" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(8);return false;">
						8
					</a>
					<a href="?pageIndex=9" class="pager-link pager-link-data-ellipsis"
						onclick="linkPage(9);return false;">
						9
					</a>
					<a href="?pageIndex=10" class="pager-link" onclick="linkPage(10);return false;">
						10
					</a>
					<a href="?pageIndex=2" onclick="linkPage(2);return false;"
						class="pager-link pager-link-data-next" aria-label="1페이지 뒤로 이동">
						<i class="fas fa-step-forward"></i>
					</a>
					<a href="?pageIndex=11" onclick="linkPage(11);return false;"
						class="pager-link pager-link-data-last">
						<i class="fas fa-fast-forward" aria-label="10페이지 뒤로 이동"></i>
					</a>


				</div>


				<div class="skinTxa-right">
					<a href="../portal/participation/job/recruit?mode=write" class="skinBtnBo_write" >
						글쓰기 </a>
				</div>









				<div class="popAlert popAlert-data-passConfirm skinTxa-center" data-alert-name="passConfirm"
					style="display: none;" id="passConfirmContainer">
					<div class="popAlert-inner">
						<div class="popAlert-tit">
							비밀번호 확인
						</div>

						<form id="confirmFormCopy" method="post" name="confirmFormCopy"></form>
						<form id="confirmForm" name="confirmForm" method="post">
							<input type="hidden" name="returnUrl" value="../portal/participation/job/recruit">
							<input type="hidden" name="boardCode" value="BD000145">
							<input type="hidden" name="articleSeq" value="0">
							<label for="PassWord" class="skinMb-small">글 작성 시 입력한 비밀번호를 입력해주세요.</label>
							<input type="password" id="PassWord" name="password"
								class="skinIptPass col7 skinMb-small passFormEnterPress" autocomplete="off"
								maxlength="20">
						</form>

						<div>
							<a href="#nolink" onclick="confirmFormCheck();"
								class="col5 skinFont-bold skinTxa-center skinBtnBo skinBtnBo-data-neg">확인</a>
							<a href="#nolink" onclick="passConfirmContainerClose();"
								class="col5 skinFont-bold skinTxa-center skinBtnBo skinBtnBo-data-pos">취소</a>
						</div>
					</div>
				</div>
</section>
</div>
</div>
</div>
<!--====게시판====-->
		</div>
	</div>
</section>
	<!-- End Offered Services Area -->



	<!-- 왼쪽 카테고리 영역 -->

	<!-- <section class="service_area section_gap">
		 <div class="container">
			 <div class="row justify-content-center section-title-wrap">
				 <div class="col-lg-12">
					 <h1>게시판</h1>
					 <p>
						 게시판 영역
					 </p>
				 </div>
			 </div>
	</section> -->

	<!-- <div class="row">
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-rocket"></span>
						 <a href="#">
							 <h4>24/7 Emergency</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-heart-pulse"></span>
						 <a href="#">
							 <h4>Expert Consultation</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-bug"></span>
						 <a href="#">
							 <h4>Intensive Care</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6 mb-60">
					 <div class="single_service">
						 <span class="lnr lnr-users"></span>
						 <a href="#">
							 <h4>Family Planning</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-rocket"></span>
						 <a href="#">
							 <h4>24/7 Emergency</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-heart-pulse"></span>
						 <a href="#">
							 <h4>Expert Consultation</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-bug"></span>
						 <a href="#">
							 <h4>Intensive Care</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
				 <div class="col-lg-3 col-md-6">
					 <div class="single_service">
						 <span class="lnr lnr-users"></span>
						 <a href="#">
							 <h4>Family Planning</h4>
						 </a>
						 <p>
							 inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
						 </p>
					 </div>
				 </div>
			 </div>
		 </div> -->

	<!-- End Offered Services Area -->

	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>


	<!-- End footer Area -->



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<script>
		window.addEventListener('load', function () {
			var allElements = document.getElementsByTagName('*');
			Array.prototype.forEach.call(allElements, function (el) {
				var includePath = el.dataset.includePath;
				if (includePath) {
					var xhttp = new XMLHttpRequest();
					xhttp.onreadystatechange = function () {
						if (this.readyState == 4 && this.status == 200) {
							el.outerHTML = this.responseText;
						}
					};
					xhttp.open('GET', includePath, true);
					xhttp.send();
				}
			});
		});
	</script>
	
</body>

</html>