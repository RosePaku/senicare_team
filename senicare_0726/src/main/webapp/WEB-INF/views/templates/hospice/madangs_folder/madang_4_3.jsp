<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 디지털 교육 안내 게시글 작성 페이지 2023.07.25 시작 (영섭) -->
<!-- 디지털 교육 안내 게시글 작성 페이지 2023.07.25 완료 (영섭) -->
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
<script>
	if (${sessionScope.id == null}) {
		alert("먼저 로그인을 해주세요.");
		location.href ="/members_folder/member_2";
	}
</script>
<body>
	<!--================Header Menu Area =================-->
	<%@ include file="../senicare_main_header.jsp" %>

	<!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-left">
					<h2>디지털 교육 안내</h2>
					<div class="page_link">
						<a href="/">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="madang_4_1">클릭하시면 [ 디지털 교육 안내 ] 페이지를 새로 고침합니다.</a>
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
					<h3>디지털 교육 안내 글쓰기</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>에듀테크 캠퍼스에서 어르신 디지털 온라인 교육과 서울지역 내 스마트 클리닉 센터에서 어디나지원단 오프라인 교육을 병행하는 융합교육 정보를 제공합니다.</li>
							<li>개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기 바랍니다.</li>
							<li>
								( 더 자세한 내용을 보시려면
								<a href="https://sdfedu.seoul.kr/course/course_list.jsp?cid=3&ch=course1"> → '에듀테크 캠퍼스' 홈페이지로 이동하기</a>
								)
							</li>
							</p>
						</div>
						<hr class="bold">
						<div class="block table-responsive grid-view">
							<form action="/madangs_folder/madang_4_3" name="write" method="post" enctype="multipart/form-data">
								<table>
									<colgroup>
										<col width="15%">
										<col width="85%">
									</colgroup>
									<tr>
										<th>작성자 ID</th>
										<td><input type="text" name="auth_id" value="${sessionScope.id}" readonly="readonly"></td>
									</tr>
									<tr>
										<th>닉네임</th>
										<td><input type="text" name="auth_nickname" value="${sessionNickName}" readonly="readonly" ></td>
									</tr>
									<tr>
										<th>제목</th>
										<td><input type="text" name="board_title" placeholder="제목을 입력하세요(최대 20자)" maxlength="20" required></td>
									</tr>
									<tr>
										<th>내용</th>
										<td><textarea name="board_contents" cols="50" rows="10" placeholder="내용을 입력하세요(최대 500자)" maxlength="500" required></textarea></td>
									</tr>
									<tr>
										<th>이미지</th>
										<td>※ (필수) 사진파일을 최소 1개이상 등록해야 합니다.<br>
											<input type="file" name="files" id="file" required><br>
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
											<button type="button" onclick="javascript:location.href='madang_4_1'" class="btnType02 btn btn-info2">
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
	<%@ include file="../senicare_sub_footer.jsp" %>
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