<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 복지 혜택 안내 게시글 수정 페이지 2023.07.24 시작 (영섭) -->
<!-- 복지 혜택 안내 게시글 수정 페이지 2023.07.24 완료 (영섭) -->
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
					<h2>복지 혜택 안내</h2>
					<div class="page_link">
						<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="madang_3_1">클릭하시면 [ 복지 혜택 안내 ] 페이지를 새로 고침합니다.</a>
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
					<h3>복지 혜택 안내 글 수정하기</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>각 부처의 복지서비스 정보를 모아 한눈에 볼 수 있도록 제공하고, 실생활 중심의 복지정보와 서비스를 제공합니다.</li>
							<li>개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기 바랍니다.</li>
							<li>( 더 자세한 내용을 보시려면 <a href="https://www.bokjiro.go.kr/ssis-tbu/index.do"> → '복지로' 홈페이지로 이동하기</a> )</li>
							</p>
						</div>
						<hr class="bold">
						<div class="block table-responsive grid-view">
							<form action="/madangs_folder/madang_3_4" name="update" method="post" enctype="multipart/form-data">
							
							
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
										<input type="radio" name="meet_loc" value="전국" 
										<c:if test="${fn:contains(mdto.meet_loc, '전국') }">checked</c:if>/>
										<label for="전국">전국</label>
										<input type="radio" name="meet_loc" value="서울" 
										<c:if test="${fn:contains(mdto.meet_loc, '서울') }">checked</c:if>/>
										<label for="서울">서울</label>
										<input type="radio" name="meet_loc" value="부산" 
										<c:if test="${fn:contains(mdto.meet_loc, '부산') }">checked</c:if>/>
										<label for="부산">부산</label>
										<input type="radio" name="meet_loc" value="대구" 
										<c:if test="${fn:contains(mdto.meet_loc, '대구') }">checked</c:if>/>
										<label for="대구">대구</label>
										<input type="radio" name="meet_loc" value="인천" 
										<c:if test="${fn:contains(mdto.meet_loc, '인천') }">checked</c:if>/>
										<label for="인천">인천</label>
										<input type="radio" name="meet_loc" value="광주" 
										<c:if test="${fn:contains(mdto.meet_loc, '광주') }">checked</c:if>/>
										<label for="광주">광주</label>
										<input type="radio" name="meet_loc" value="대전" 
										<c:if test="${fn:contains(mdto.meet_loc, '대전') }">checked</c:if>/>
										<label for="대전">대전</label>
										<input type="radio" name="meet_loc" value="울산" 
										<c:if test="${fn:contains(mdto.meet_loc, '울산') }">checked</c:if>/>
										<label for="울산">울산</label>
										<input type="radio" name="meet_loc" value="세종" 
										<c:if test="${fn:contains(mdto.meet_loc, '세종') }">checked</c:if>/>
										<label for="세종">세종</label><br>
										
										<input type="radio" name="meet_loc" value="경기" 
										<c:if test="${fn:contains(mdto.meet_loc, '경기') }">checked</c:if>/>
										<label for="경기">경기</label>
										<input type="radio" name="meet_loc" value="강원" 
										<c:if test="${fn:contains(mdto.meet_loc, '강원') }">checked</c:if>/>
										<label for="강원">강원</label>
										<input type="radio" name="meet_loc" value="충북" 
										<c:if test="${fn:contains(mdto.meet_loc, '충북') }">checked</c:if>/>
										<label for="충북">충북</label>
										<input type="radio" name="meet_loc" value="충남" 
										<c:if test="${fn:contains(mdto.meet_loc, '충남') }">checked</c:if>/>
										<label for="충남">충남</label>
										<input type="radio" name="meet_loc" value="전북" 
										<c:if test="${fn:contains(mdto.meet_loc, '전북') }">checked</c:if>/>
										<label for="전북">전북</label>
										<input type="radio" name="meet_loc" value="전남" 
										<c:if test="${fn:contains(mdto.meet_loc, '전남') }">checked</c:if>/>
										<label for="전남">전남</label>
										<input type="radio" name="meet_loc" value="경북" 
										<c:if test="${fn:contains(mdto.meet_loc, '경북') }">checked</c:if>/>
										<label for="경북">경북</label>
										<input type="radio" name="meet_loc" value="경남" 
										<c:if test="${fn:contains(mdto.meet_loc, '경남') }">checked</c:if>/>
										<label for="경남">경남</label>
										<input type="radio" name="meet_loc" value="제주" 
										<c:if test="${fn:contains(mdto.meet_loc, '제주') }">checked</c:if>/>
										<label for="제주">제주</label>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<td><input type="text" name="board_title" value="${mdto.board_title}" maxlength="20" required></td>
									</tr>
									<tr>
										<th>내용</th>
										<td><textarea name="board_contents" cols="50" rows="10" maxlength="500" required>${mdto.board_contents}</textarea></td>
									</tr>
									<tr>
										<th>파일</th>
											<td>
												<c:forEach var="imgNm" items="${arrImg }">
													${imgNm }<br>
												</c:forEach>
											</td>
									</tr>
									<tr>
										<th>이미지</th>
										<td>※ 사진파일은 최대 3개까지 올릴 수 있습니다.<br>
											<input type="hidden" name="board_file" value="${arrImg[0]}"><!-- 원본파일명 -->
											<input type="hidden" name="board_file" value="${arrImg[1]}"><!-- 원본파일명 -->
											<input type="hidden" name="board_file" value="${arrImg[2]}"><!-- 원본파일명 -->
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
												<span>수정완료</span>
											</button>
											<button type="button" onclick="javascript:location.href = document.referrer;" class="btnType02 btn btn-info2">
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