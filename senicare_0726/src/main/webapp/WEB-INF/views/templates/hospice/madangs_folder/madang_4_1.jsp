<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 디지털 교육 안내 리스트 페이지 2023.07.25 시작 (영섭) -->
<!-- 디지털 교육 안내 리스트 페이지 2023.07.25 완료 (영섭) -->
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

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
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/responsive.css">

<style>
/* 다음 스타일을 추가합니다. */
.cimg {
	position: relative;
	height: 180px; /* 이미지 컨테이너의 고정 높이를 설정합니다. */
	overflow: hidden; /* 내용이 넘치는 경우 숨깁니다. */
}
</style>
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
					<h3>디지털 교육 안내</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>에듀테크 캠퍼스에서 어르신 디지털 온라인 교육과<br>서울지역 내 스마트 클리닉 센터에서 어디나지원단 오프라인 교육을 병행하는 융합교육 정보를 제공합니다.</li>
							<li>
								( 더 자세한 내용을 보시려면
								<a href="https://sdfedu.seoul.kr/course/course_list?cid=3&ch=course1"> → '에듀테크 캠퍼스' 홈페이지로 이동하기</a>
								)
							</li>
							</p>
						</div>
						<script>
							function searchBtn() {
								if ($("#q_searchVal").val().length < 2) {
									alert("2글자 이상부터 검색이 가능합니다.");
									$("#q_searchVal").focus();
									return false;
								}

								dataForm.submit();

							}
						</script>
						<div class="col-md-9 contents" style="min-width:768px">
							<div class="block text-center">
								<form name="dataForm" id="dataForm" method="get" action="/madangs_folder/madang_4_1" class="form-inline">
									<fieldset>
										<legend class="sr-only">목록검색조건</legend>
										<div class="block search-condition">
											<div class="form-group">
												<label for="q_searchKeyTy" class="sr-only">항목</label> <select name="s_opt" id="q_searchKeyTy" class="select" style="width: 150px;">
													<option value="all" <c:if test="${param.s_opt == 'all'}"> selected </c:if>>-- 검색선택 --</option>
													<option value="title" <c:if test="${param.s_opt == 'title'}"> selected </c:if>>제목</option>
													<option value="content" <c:if test="${param.s_opt == 'content'}"> selected </c:if>>내용</option>
												</select>
											</div>
											<div class="form-group">
												<label for="q_searchVal" class="sr-only">검색어</label>
												<input type="text" name="s_word" id="q_searchVal" value="${param.s_word }" class="form-control" placeholder="검색어를 입력하세요.">
											</div>
											<br>
											<button type="button" class="btn btn-info btn-search" onclick="searchBtn()">검색</button>
											<button type="button" onclick="javascript:location.href='madang_4_1'" class="btn btn-info">초기화</button>
										</div>
									</fieldset>
								</form>
							</div>

							<c:forEach var="board" items="${list}">
								<!-- 요기부터 -->
								<a href="/madangs_folder/madang_4_2?bno=${board.board_no}&s_opt=${s_opt}&s_word=${s_word}&rowPP=${rowPP}">
								<li class="gridList">
									<!-- 이미지 영역 -->
									<div class="cimg">
										<img src="../upload/${board.board_file}" style="width: 351px; position: absolute; clip: rect(0, 351px, 180px, 0); border-radius: 3%">
									</div>
									<div class="ccont">
										<div class="ccont00">
											<!-- 버튼 -->
											<p class="ctitle" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">
												<c:if test="${today < board.board_created }">
													<img class="bbsNewImage" src="/img/ico_new.gif" alt="New">
												</c:if>
												<a href="/madangs_folder/madang_4_2?bno=${board.board_no}&s_opt=${s_opt}&s_word=${s_word}&rowPP=${rowPP}">${board.board_title}
													<c:if test="${board.ccnt != 0}">
										              &nbsp;[${board.ccnt}]
										            </c:if>
												</a>
												<c:if test="${board.board_file != ',,'}">
													<img class="bbsNewImage" src="/img/file.png" style="width: 17px" alt="file">
												</c:if>
											</p>
											<p class="ctext" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${board.board_contents }</p>
										</div>
									</div>
								</li>
								</a>
								<!-- 요기까지 -->
							</c:forEach>

						</div>

						<!-- 버튼 -->
						<div class="row block btn-group-wrap" style="clear: both;">
							<div class="col-sm-12 btn-group">
								<div class="pull-right">
									<c:if test="${sessionScope.id == 'admin'}">
										<a href="/madangs_folder/madang_4_3" class="btnType02 btn btn-info">
											<span>글쓰기</span>
										</a>
									</c:if>
								</div>
							</div>
						</div>
						<!-- //버튼 -->

						<!-- 페이징 -->
						<ul class="page-num">
							<!-- 첫 페이지 이동 -->
							<c:if test="${pageDto.page != pageDto.startPage}">
								<a href="/madangs_folder/madang_4_1?page=1&s_opt=${s_opt}&s_word=${s_word}">
									<li class="first"></li>
								</a>
								<!-- 검색결과에 따라 하단 페이지 달라지니까! -->
							</c:if>
							<c:if test="${pageDto.page == pageDto.startPage}">
								<li class="first"></li>
							</c:if>

							<!-- 이전 페이지 이동 -->
							<c:if test="${pageDto.page > 1}">
								<a href="/madangs_folder/madang_4_1?page=${pageDto.page -1}&s_opt=${s_opt}&s_word=${s_word}">
									<li class="prev"></li>
								</a>
							</c:if>
							<c:if test="${pageDto.page == 1}">
								<li class="prev"></li>
							</c:if>

							<!-- 하단 페이지 번호 넣기 -->
							<c:forEach begin="${pageDto.startPage}" end="${pageDto.maxPage}" step="1" var="num">
								<c:if test="${num != pageDto.page}">
									<a href="/madangs_folder/madang_4_1?page=${num}&s_opt=${s_opt}&s_word=${s_word}">
										<li class="num">
											<div>${num}</div>
										</li>
									</a>
								</c:if>
								<c:if test="${num == pageDto.page}">
									<li class="num on">
										<div>${num}</div>
									</li>
								</c:if>
							</c:forEach>

							<!-- 다음 페이지 이동 -->
							<c:if test="${pageDto.page < pageDto.maxPage}">
								<a href="/madangs_folder/madang_4_1?page=${pageDto.page +1}&s_opt=${s_opt}&s_word=${s_word}">
									<li class="next"></li>
								</a>
							</c:if>
							<c:if test="${pageDto.page == pageDto.maxPage}">
								<li class="next"></li>
							</c:if>

							<!-- 끝 페이지 이동 -->
							<c:if test="${pageDto.page != pageDto.maxPage}">
								<a href="/madangs_folder/madang_4_1?page=${pageDto.maxPage}&s_opt=${s_opt}&s_word=${s_word}">
									<li class="last"></li>
								</a>
							</c:if>
							<c:if test="${pageDto.page == pageDto.maxPage}">
								<li class="last"></li>
							</c:if>
						</ul>
						<!-- //페이징 -->
						<script type="text/javascript" src="/resources/libs/form-3.51.0/jquery.form.js"></script>

					</div>
				</div>
			</div>
			<!--====게시판====-->
		</div>
		</div>
		
	</section>

	<!-- End Offered Services Area -->


	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
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