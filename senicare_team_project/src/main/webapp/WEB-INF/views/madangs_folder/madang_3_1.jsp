<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 복지 혜택 안내 리스트 페이지 2023.07.24 영섭 -->
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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
					<h3>복지 혜택 안내</h3>
					<div class="content_box tab_menu_01">
						<div class="boxtype1">
							<p class="descript">
							<li>각 부처의 복지서비스 정보를 모아 한눈에 볼 수 있도록 제공하고, 실생활 중심의 복지정보와 서비스를 제공합니다.</li>
							<li>개인정보보호를 위해 주민등록번호, 운전면허번호, 연락처 등은 노출되지 않도록 주의하여 주시기 바랍니다.</li>
							<li>( 더 자세한 내용을 보시려면 <a href="https://www.bokjiro.go.kr/ssis-tbu/index.do"> → '복지로' 홈페이지로 이동하기</a> )</li>
							</p>
						</div>
						<script>
							function searchBtn() {
								dataForm.submit();
							}
							
						  // 전국 누르면 전체 선택&해제
						  function checkAll() {
						    if($("#s_locs").is(":checked")){
						      $("input[name=s_loc]").prop("checked", true);
						    }else {
						      $("input[name=s_loc]").prop("checked", false);
						    }
							  
						  }
							  
						  // 체크된 개수에 따라 전국 활성화/비활성화
						  $(document).on("click", "input:checkbox[name=s_loc]", function(e) { // s_loc들 클릭하면
								var chks = document.getElementsByName("s_loc");
								var chksChecked = 0;
								for(var i=0; i<chks.length; i++) {
									var cbox = chks[i];
									if(cbox.checked) chksChecked++; // 체크되어 있으면 체크 개수 증가
								}
								
								if(chks.length == chksChecked){ // 전체 s_loc 개수와 체크된 체크박스 개수 비교
									$("#s_locs").prop("checked", true);
								}else{
									$("#s_locs").prop("checked",false);
								}
							});
								
						</script>
						<div class="col-md-9 contents">
							<div class="block text-center">
								<form name="dataForm" id="dataForm" method="get" action="/madangs_folder/madang_3_1" class="form-inline">
									<fieldset>
										<legend class="sr-only">목록검색조건</legend>
										<div class="block search-condition">
											<div class="form-group">
												<label for="q_searchKeyTy" class="sr-only">항목</label> <select name="s_opt" id="q_searchKeyTy" class="select" style="width: 150px;">
													<option value="all">-- 검색선택 --</option>
													<option value="title">제목</option>
													<option value="content">내용</option>
												</select>
											</div>
											<div class="form-group">
												<label for="q_searchVal" class="sr-only">검색어</label>
												<input type="text" name="s_word" id="q_searchVal" value="${param.s_word }" class="form-control" placeholder="검색어를 입력하세요.">
											</div>
											<br>
											<div class="form-group">
												<label for="q_searchLoc" class="sr-only">지역</label>
												<label class="locs"><input type="checkbox" name="s_loc" value="전국" class="form-control"  id="s_locs" onclick="checkAll()" />전국 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="서울" class="form-control" />서울 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="부산" class="form-control" />부산 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="대구" class="form-control" />대구 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="인천" class="form-control" />인천 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="광주" class="form-control" />광주 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="대전" class="form-control" />대전 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="울산" class="form-control" />울산 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="세종" class="form-control" />세종 </label><br>
												<label class="locs"><input type="checkbox" name="s_loc" value="경기" class="form-control" />경기 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="강원" class="form-control" />강원 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="충북" class="form-control" />충북 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="충남" class="form-control" />충남 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="전북" class="form-control" />전북 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="전남" class="form-control" />전남 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="경북" class="form-control" />경북 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="경남" class="form-control" />경남 </label>
												<label class="locs"><input type="checkbox" name="s_loc" value="제주" class="form-control" />제주 </label>
												<input type="hidden" name="locString" value="" id="locString"/> <!-- 체크박스 값을 받을 문자열 -->
											</div>
											
											<button type="button" class="btn btn-info btn-search" onclick="searchBtn()">검색</button>
											<button type="button" class="btn btn-info" onclick="javascript:location.href='madang_3_1'">초기화</button>
										</div>
									</fieldset>
								</form>
							</div>
							
							<c:forEach var="board" items="${list}">
								<!-- 요기부터 -->
								<li class="gridList">
									<!-- 이미지 영역 -->
									<div class="cimg">
										<img src="https://www.bokjiro.go.kr/ssis-tbu/cms/pc/main/banner/1/__icsFiles/afieldfile/2023/05/10/pc_592-360.jpg?nonCachingUsingTime=1690257568861" style="width: 245px; border-radius: 3%">
									</div>
									<div class="ccont">
										<div class="ccont00">
											<!-- 버튼 -->
											<p class="ctitle" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">
												<a href="/madangs_folder/madang_3_2?bno=${board.board_no}&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">${board.board_title}
													<c:if test="${board.ccnt != 0}">
													&nbsp;[${board.ccnt}]
												</c:if>
												</a>
												<c:if test="${today < board.board_created }">
													<img class="bbsNewImage" src="/img/ico_new.gif" alt="New">
												</c:if>
												<c:if test="${board.board_file != ',,'}">
													<img class="bbsNewImage" src="/img/file.png" style="width: 17px" alt="file">
												</c:if>
											</p>
											<p class="ctext" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">${board.board_contents }</p>
										</div>
									</div>
								</li>
								<!-- 요기까지 -->
							</c:forEach>
							</div>

							<!-- 버튼 -->
						<div class="row block btn-group-wrap" style="clear: both;">
							<div class="col-sm-12 btn-group">
								<div class="pull-right">
									<a href="/madangs_folder/madang_3_3" class="btnType02 btn btn-info">
										<span>글쓰기</span>
									</a>
								</div>
							</div>
						</div>
						<!-- //버튼 -->

							<!-- 페이징 -->
							<ul class="page-num">
								<!-- 첫 페이지 이동 -->
								<c:if test="${pageDto.page != pageDto.startPage}">
									<a href="/madangs_folder/madang_3_1?page=1&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">
										<li class="first"></li>
									</a>
									<!-- 검색결과에 따라 하단 페이지 달라지니까! -->
								</c:if>
								<c:if test="${pageDto.page == pageDto.startPage}">
									<li class="first"></li>
								</c:if>

								<!-- 이전 페이지 이동 -->
								<c:if test="${pageDto.page > 1}">
									<a href="/madangs_folder/madang_3_1?page=${pageDto.page -1}&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">
										<li class="prev"></li>
									</a>
								</c:if>
								<c:if test="${pageDto.page == 1}">
									<li class="prev"></li>
								</c:if>

								<!-- 하단 페이지 번호 넣기 -->
								<c:forEach begin="${pageDto.startPage}" end="${pageDto.maxPage}" step="1" var="num">
									<c:if test="${num != pageDto.page}">
										<a href="/madangs_folder/madang_3_1?page=${num}&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">
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
									<a href="/madangs_folder/madang_3_1?page=${pageDto.page +1}&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">
										<li class="next"></li>
									</a>
								</c:if>
								<c:if test="${pageDto.page == pageDto.maxPage}">
									<li class="next"></li>
								</c:if>

								<!-- 끝 페이지 이동 -->
								<c:if test="${pageDto.page != pageDto.maxPage}">
									<a href="/madangs_folder/madang_3_1?page=${pageDto.maxPage}&s_opt=${s_opt}&s_word=${s_word}&s_loc=${s_loc}">
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