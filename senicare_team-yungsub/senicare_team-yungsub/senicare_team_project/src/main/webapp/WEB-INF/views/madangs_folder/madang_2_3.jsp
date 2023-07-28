<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 취미/친목 게시판 게시글 작성 페이지 2023.07.24 영섭 -->
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <link rel="icon" href="../img/favicon.png" type="../image/png"> -->
<link rel="icon" href="../img/favicon.png" type="../image/png">
<title>Hospice Medical</title>
<!-- i class 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script type="application/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

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
<link rel="stylesheet" href="../css/style_jiin.css">
<link rel="stylesheet" href="../css/style_ys.css">
<link rel="stylesheet" href="../css/style_ys_write.css"> <!-- 게시판 테이블용 css -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/responsive.css">
</head>

<body>
	<!--================Header Menu Area =================-->
	<div data-include-path="../senicare_sub_header"></div>

	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>취미 / 친목 게시판</h2>
					<div class="page_link">
						<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="madang_2_1">클릭하시면 [ 취미 / 친목 게시판 ] 페이지를 새로 고침합니다.</a>
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
				<!-- 사이드바 영역 카테고리 메뉴 -->
				<div data-include-path="/madangs_folder/madang_list"></div>
				<!-- 사이드바 영역 카테고리 메뉴 -->
			</div>
			<!--====게시판====-->
			<div class="right-area">
				<div class="right_contents_wrap">
					<h3>취미 / 친목  게시판 글쓰기</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>특정 개인 및 단체에 대한 비난, 상업성 광고, 허위사실 유포, 동일 또는 유사한 내용의 반복적 게시 등 법령을 위반하거나 홈페이지의 정상적인 운영에 지장을 초래하는 경우는 운영규칙에 의거하여 삭제될 수 있습니다.</li>
							<li>또한, 개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기 바랍니다.</li>
							</p>
						</div>
						<hr class="bold">
						<div class="block table-responsive grid-view">
							<form action="/madangs_folder/madang_2_3" name="write" method="post" enctype="multipart/form-data">
								<table>
									<colgroup>
										<col width="15%">
										<col width="85%">
									</colgroup>
									<tr>
										<th>작성자 ID</th>
										<td><input type="text" name="auth_id" value="${sessionId}" readonly="readonly"></td>
									</tr>
									<tr>
										<th>닉네임</th>
										<td><input type="text" name="auth_nickname" value="${sessionNickName}" readonly="readonly" ></td>
									</tr>
									<tr>
										<th>지역</th>
										<td>
										<input type="radio" name="meet_loc" value="전국" checked>전국 
										<input type="radio" name="meet_loc" value="서울">서울 
										<input type="radio" name="meet_loc" value="부산">부산 
										<input type="radio" name="meet_loc" value="대구">대구 
										<input type="radio" name="meet_loc" value="인천">인천 
										<input type="radio" name="meet_loc" value="광주">광주 
										<input type="radio" name="meet_loc" value="대전">대전 
										<input type="radio" name="meet_loc" value="울산">울산 
										<input type="radio" name="meet_loc" value="세종">세종 <br>
										<input type="radio" name="meet_loc" value="경기">경기 
										<input type="radio" name="meet_loc" value="강원">강원 
										<input type="radio" name="meet_loc" value="충북">충북 
										<input type="radio" name="meet_loc" value="충남">충남 
										<input type="radio" name="meet_loc" value="전북">전북 
										<input type="radio" name="meet_loc" value="전남">전남 
										<input type="radio" name="meet_loc" value="경북">경북 
										<input type="radio" name="meet_loc" value="경남">경남 
										<input type="radio" name="meet_loc" value="제주">제주 
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<td><input type="text" name="board_title"></td>
									</tr>
									<tr>
										<th>내용</th>
										<td><textarea name="board_contents" cols="50" rows="10"></textarea></td>
									</tr>
									<tr>
										<th>이미지</th>
										<td>※ 사진파일은 최대 3개까지 올릴 수 있습니다.<br>
											<input type="file" name="files" id="file"><br>
											<input type="file" name="files" id="file"><br>
											<input type="file" name="files" id="file">
										</td>
									</tr>
								</table>
								<hr class="bold">

								<!-- 버튼 -->
								<div class="row block btn-group-wrap">
									<div class="col-sm-12 btn-group">
										<div class="pull-right">
											<button type="submit" class="btnType02 btn btn-info">
												<span>작성완료</span>
											</button>
											<button type="button" onclick="javascript:location.href='madang_2_1'" class="btnType02 btn btn-info2">
												<span>취소</span>
											</button>
										</div>
									</div>
								</div>
								<!-- //버튼 -->
							</form>
						</div>
						<!-- //리스트 -->
					</div>

				</div>
				<script type="text/javascript" src="/resources/libs/form-3.51.0/jquery.form.js"></script>
			</div>
		</div>
		<!--====게시판====-->
		</div>
	</section>

	<!-- End Offered Services Area -->
	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
	<!-- End footer Area -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- 스크립트 라이브러리 -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<!-- <script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script> -->
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<!-- 스크립트 : 링크 연결 -->
	<script>
		window.addEventListener('load', function() {
			var allElements = document.getElementsByTagName('*');
			Array.prototype.forEach.call(allElements, function(el) {
				var includePath = el.dataset.includePath;
				if (includePath) {
					var xhttp = new XMLHttpRequest();
					xhttp.onreadystatechange = function() {
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