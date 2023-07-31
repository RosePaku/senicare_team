<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 디지털 교육 안내 게시글 보기 페이지 2023.07.25 시작 (영섭) -->
<!-- 디지털 교육 안내 게시글 보기 페이지 2023.07.25 완료 (영섭) -->
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
<!-- 날짜 포맷함수 -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

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
			<script>
			// 게시글에 이미지 배열을 받아오는 스크립트
				
				// 주소창 파라미터값으로 게시글 번호 받기
				var urlParameter = window.location.search;
				var urlParams = new URLSearchParams(urlParameter);
				var bno = urlParams.get('bno');
				 
				$.ajax({
					url:"/edu/loadImage",
					type:"post",
					data:{"bno":bno},// 게시글 번호 넘김
					success: function(data) {
						 
						var htmlData = "";
						for (var i=0; i<data.length; i++) {
							if (data[i] == "") continue;
							htmlData += "<img src='../upload/"+data[i]+"' style='width: 120%'>";
							$("#imageContainer").html(htmlData); // '내부' 소스코드에 덮어쓰기
						}
					},
					error: function() {
						alert("이미지 로드 실패");
					}
				});// ajax
				
				
				function applyBtn() {
					alert("신청을 위해 '에듀테크 캠퍼스' 사이트가 새로운 창에서 열립니다.");
					window.open("https://sdfedu.seoul.kr/course/course_list.jsp?cid=3&ch=course1");
				}
			</script>
			
			
			<div class="right-area">
				<div class="right_contents_wrap">
					<h3>디지털 교육 안내</h3>
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
						<div class="block table-responsive grid-view">
							<table class="table table-bordered">
								<colgroup>
									<col style="width: 12%;">
									<col>
									<col style="width: 10%;">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th>제목</th>
										<th colspan="3">
											<div class="col-md-12">
												<span>${mdto.getBoard_title()}</span>
											</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>등록일</th>
										<td>${mdto.board_created}
										<c:if test="${mdto.board_modified != null}">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[${mdto.board_modified} 수정]
										</c:if>
										</td>
										<th>조회수</th>
										<td>${mdto.board_view}</td>
									</tr>
									<tr>
										<th>설명</th>
										<td style="word-break:break-all;">${mdto.board_contents}</td>
										<th colspan="2">
										<a onclick="applyBtn()" class="btnType02 btn btn-info">
											<span style="color:white;">신청하기</span>
										</a>
										</th>
									</tr>
									<tr>
										<td colspan="4">
											<div class="col-md-9">


												<script type="text/javascript">
													$(function() {
														var editrUseAt = "N";
														if (1 == 1 && true && editrUseAt != 'Y') {
															if ("value" == "form") {
																var id = "lngtCn";
																var innerText = document.getElementById(id).innerHTML;
																innerText = htmldecode(innerText);
																document.getElementById(id).innerHTML = innerText;
															}
														}
													});
													function htmldecode(s) {
														if (typeof s != "undefined" && s != null && s != "") {
															s = s.replace(/&amp;/g,"&");
															s = s.replace(/&lt;/g,"<");
															s = s.replace(/&gt;/g,">");
															s = s.replace(/&quot;/g,'\"');
															s = s.replace(/&apos;/g,'\'');
															s = s.replace(/&#059;/g,";");
															s = s.replace(/&#091;/g,"[");
															s = s.replace(/&#093;/g,"]");
															s = s.replace(/&#092;/g,"\\");
															s = s.replace(/&#061;/g,"=");
														} else {
															s = '';
														}
														return s;
													};
												</script>
												<div class="board-contents" id="board_contents"><br>
													<div id="imageContainer">
													 	<!-- 이미지가 표시되는 자리 -->
													</div>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //리스트 -->
					</div>

					<div id="mypage">
						<!-- 이전다음글 -->
						<div class="pnDiv web">
							<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
								<colgroup>
									<col width="100px">
									<col width="*">
									<col width="100px">
								</colgroup>
								<tbody>
									<tr>
										<th class="next">다음글</th>
										<c:if test="${nextMdto.board_no == null}">
											<td>(다음 글이 존재하지 않습니다.)</td>
										</c:if>
										<c:if test="${nextMdto.board_no != null}">
											<td><a href="/madangs_folder/madang_4_2?bno=${nextMdto.board_no }">${nextMdto.board_title}</a></td>
										</c:if>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<th class="pre">이전글</th>
										<c:if test="${prevMdto.board_no == null}">
											<td>(이전 글이 존재하지 않습니다.)</td>
										</c:if>
										<c:if test="${prevMdto.board_no != null}">
											<td><a href="/madangs_folder/madang_4_2?bno=${prevMdto.board_no }">${prevMdto.board_title}</a></td>
										</c:if>
										<td>&nbsp;</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //이전다음글 -->
						<script>
							// 1. 댓글 저장
							function commentBtn() {

								if (${sessionScope.id == null}) {
									alert("먼저 로그인을 해주세요.");
									location.href ="/members_folder/member_2";
									return false;
								}
								
								let comment_private;
								const replynumCheckbox = $(".replynum"); // replynum 클래스 이름을 가진 체크박스 요소를 가져옴
								if (replynumCheckbox.prop("checked")==true) {
									comment_private = 1;
								} else {
									comment_private = 0;
								}
								
								if ($("#commentBox").val().length < 2) {
									alert("2글자 이상부터 댓글 등록이 가능합니다.");
									return false;
								}
								
								$.ajax({
									url:"/edu/insertComOne",
									type:"post",
									data: {
										"board_no":"${mdto.board_no}",
										"auth_id":"${sessionScope.id}",
										"auth_nickname":"${sessionNickName}",
										"comment_content":$("#commentBox").val(),
										"comment_private":comment_private
											},
									success: function(data) {
										console.log(data);
										
										var htmlData = "";
										
										htmlData += "<ul id="+data.comment_no+">";
										htmlData += "<li class='name'>"+data.auth_nickname+" <span>["+moment(data.comment_date).format("YYYY-MM-DD HH:mm:ss")+"]</span></li>";
										htmlData += "<li class='txt'>"+data.comment_content+"</li>";
										htmlData += "<li class='btn'>";
										htmlData += "<a onclick=\"updateBtn('"+data.comment_no+"','"+data.auth_nickname+"','"+moment(data.comment_date).format("YYYY-MM-DD HH:mm:ss")+"','"+data.comment_content+"')\" class='rebtn'>수정</a>";
										htmlData += "<a onclick=\"deleteBtn("+data.cno+")\" class='rebtn'>삭제</a>";
										htmlData += "</li></ul>";
										
										$(".replyBox").prepend(htmlData); // 위에 붙여 넣기 => 최신 댓글이 위로!!
										
										if (comment_private == 1) {
											alert("비밀 댓글이 등록되었습니다.");
											$("#commentBox").val(""); // 댓글창 비우기
											$(".replynum").prop("checked", false);// 비밀댓글쓰고 체크박스 초기화
										} else {
											alert("댓글이 등록되었습니다.");
											$("#commentBox").val(""); // 댓글창 비우기
										}
										
										// 댓글 총개수 증가
										var cnum = Number($("#cnum").text())+1;
										$("#cnum").text(cnum);// 아이디 텍스트를 cnum으로 대체
									},
									error: function() {
										alert("댓글 등록 실패");
									}
								});// ajax
							}// commentBtn
							
							
							// 2. 댓글 삭제
							function deleteBtn(cno) {
								if (${sessionScope.id == 'admin'}) { // 관리자이면
									if (confirm("관리자 권한으로 해당 댓글을 삭제하시겠습니까?")) {
										$.ajax({
											url:"/edu/deleteComOne",
											type:"post",
											data:{"cno":cno},
											success: function(data) {
												alert("댓글이 삭제되었습니다.");
												$("#"+cno).remove(); // ???
														
												// 댓글 총개수 감소
												var cnum = Number($("#cnum").text())-1;
												$("#cnum").text(cnum);// 아이디 텍스트를 cnum으로 대체
											},
											error: function() {
												alert("댓글 삭제 실패");
											}
										});// ajax
									}// if-confirm
								} else { // 관리자 아니면
									if (confirm("댓글을 삭제하시겠습니까?")) {
										$.ajax({
											url:"/edu/deleteComOne",
											type:"post",
											data:{"cno":cno},
											success: function(data) {
												alert("댓글이 삭제되었습니다.");
												$("#"+cno).remove(); // ???
														
												// 댓글 총개수 감소
												var cnum = Number($("#cnum").text())-1;
												$("#cnum").text(cnum);// 아이디 텍스트를 cnum으로 대체
											},
											error: function() {
												alert("댓글 삭제 실패");
											}
										});// ajax
									}// if-confirm 
								}// else
							}// deleteBtn
							
							
							// 3. 댓글수정 버튼
							function updateBtn(cno, ann, cdate, ccon) {
								
								var htmlData = "";
								htmlData += "<li class='name'>"+ann+" <span>["+cdate+"]</span></li>";
								htmlData += "<li class='txt'><textarea class='replyType' id='updateText'>"+ccon+"</textarea></li>";
								htmlData += "<li class='btn'>";
								htmlData += "<a onclick=\"updateSave("+cno+")\" class='rebtn'>저장</a>";
								htmlData += "<a onclick=\"cancelBtn('"+cno+"','"+ann+"','"+cdate+"','"+ccon+"')\" class='rebtn'>취소</a>";
								htmlData += "</li>";
								
								// 덮어쓰기
								$("#"+cno).html(htmlData);
							}// updateBtn
							
							
							// 4. 댓글수정취소 버튼
							function cancelBtn(cno, ann, cdate, ccon) {
								var htmlData = "";
								htmlData += "<li class='name'>"+ann+" <span>["+cdate+"]</span></li>";
								htmlData += "<li class='txt'>"+ccon+"</li>";
								htmlData += "<li class='btn'>";
								htmlData += "<a onclick=\"updateBtn('"+cno+"','"+ann+"','"+cdate+"','"+ccon+"')\" class='rebtn'>수정</a>";
								htmlData += "<a onclick=\"deleteBtn('"+cno+"')\" class='rebtn'>삭제</a>";
								htmlData += "</li>";
								
								// 덮어쓰기
								$("#"+cno).html(htmlData);
							}// cancelBtn
							
							
							// 5. 댓글수정저장 버튼
							function updateSave(cno) {
								
								if ($("#updateText").val().length < 2) {
									alert("2글자 이상부터 댓글 등록이 가능합니다.");
									return false;
								}
								
								if (confirm("수정된 댓글을 저장합니다.")) {
									$.ajax({
										url:"/edu/updateComOne",
										type:"post",
										data: {
											"comment_no":cno,
											"comment_content":$("#updateText").val()
												},
										success: function(data) {
											console.log(data);
											
											var htmlData = "";
											
											htmlData += "<li class='name'>"+data.auth_nickname+" <span>["+moment(data.comment_modify).format("YYYY-MM-DD HH:mm:ss")+"] (수정)</span></li>";
											htmlData += "<li class='txt'>"+data.comment_content+"</li>";
											htmlData += "<li class='btn'>";
											htmlData += "<a href='#' class='rebtn'>수정</a>";
											htmlData += "<a onclick=\"deleteBtn("+data.cno+")\" class='rebtn'>삭제</a>";
											htmlData += "</li>";
											
											$("#"+cno).html(htmlData);
										},
										error: function() {
											alert("댓글 수정 실패");
										}
									});// ajax
								}// if

							}// updateSave
							
						</script>


						<!-- 댓글-->
						<div class="replyWrite">
							<ul>
								<li class="in">
									<p class="txt">
										총<span class="orange" id="cnum">${list.size()}</span>개의 댓글이 달려있습니다.
									</p>
									<label>
										<p class="password">
											비밀글 여부 &nbsp;<input role="switch" type="checkbox" class="replynum">
										</p>
									</label>
									<textarea class="replyType" id="commentBox" val="" placeholder="댓글을 입력하세요(최대 50자)" maxlength="50"></textarea>
								</li>
								<li class="btn">
									<a onclick="commentBtn()" class="replyBtn">등록</a>
								</li>
							</ul>
							<p class="ntic">※ 비밀글 버튼을 활성화하시면 게시글 작성자에게만 보이는 비밀글로 등록됩니다.</p>
						</div>

						<div class="replyBox">
							<c:forEach var="cdto" items="${list}">
								<!-- 관리자 권한으로 댓글 삭제 -->
								<c:if test="${sessionScope.id == 'admin' }">
									<ul id="${cdto.comment_no }">
										<li class="name">${cdto.auth_nickname}
											<c:if test="${cdto.comment_modify == null}">
												<span>[${cdto.comment_date}]</span>
											</c:if>
											<c:if test="${cdto.comment_modify != null}">
												<span>[${cdto.comment_modify}] (수정)</span>
											</c:if>
										</li>
										<li class="txt">${cdto.comment_content}</li>
										
										<li class="btn">
											<a onclick="deleteBtn(${cdto.comment_no})" class="rebtn" >삭제</a>
										</li>
									</ul>
								</c:if>
								
								
								<!-- 본인이 쓴 댓글 -->
								<c:if test="${sessionScope.id == cdto.auth_id}">
									<ul id="${cdto.comment_no }">
										<li class="name">${cdto.auth_nickname}
											<c:if test="${cdto.comment_modify == null}">
												<span>[${cdto.comment_date}]</span>
											</c:if>
											<c:if test="${cdto.comment_modify != null}">
												<span>[${cdto.comment_modify}] (수정)</span>
											</c:if>
										</li>
										<li class="txt">${cdto.comment_content}</li>
										
										<li class="btn">
											<a onclick="updateBtn('${cdto.comment_no}','${cdto.auth_nickname}','${cdto.comment_date}','${cdto.comment_content}')" class="rebtn">수정</a>
											<a onclick="deleteBtn(${cdto.comment_no})" class="rebtn">삭제</a>
										</li>
									</ul>
								</c:if>


								<c:if test="${sessionScope.id != 'admin' }">
								<c:if test="${sessionScope.id != cdto.auth_id}">
									<!-- 일반댓글, 다른사람이 쓴 댓글 -->
									<c:if test="${cdto.comment_private == 0}">
										<ul id="${cdto.comment_no }">
											<li class="name">${cdto.auth_nickname}
												<c:if test="${cdto.comment_modify == null}">
													<span>[${cdto.comment_date}]</span>
												</c:if>
												<c:if test="${cdto.comment_modify != null}">
													<span>[${cdto.comment_modify}] (수정)</span>
												</c:if>
											</li>
											<li class="txt">${cdto.comment_content}</li>
										</ul>
									</c:if>
									<!-- 비밀댓글, 다른사람이 쓴 댓글 -->
									<c:if test="${cdto.comment_private == 1}">
										<ul id="${cdto.comment_no }">
											<li class="name">${cdto.auth_nickname}
												<c:if test="${cdto.comment_modify == null}">
													<span>[${cdto.comment_date}]</span>
												</c:if>
												<c:if test="${cdto.comment_modify != null}">
													<span>[${cdto.comment_modify}] (수정)</span>
												</c:if>
											</li>
											<li class="txt">
												<a href="password.html" class="passwordBtn">
													<span class="orange">※ 비밀글입니다.</span>
												</a>
											</li>
										</ul>
									</c:if>
								</c:if>
								</c:if>

							</c:forEach>
						</div>
						<!-- //댓글 -->
						
						<script>
							// 1. 게시글 삭제하기
							function deleteBrdBtn(bno) {
								if (${sessionScope.id == 'admin'}) {// 관리자이면
									if(confirm("관리자 권한으로 해당 게시글을 삭제하시겠습니까?")) {
										$.ajax({
											url: "/edu/deleteBrdOne",
											type: "post",
											data: {"bno":bno},
											success: function(data) {
												if (data=="deleted") {
													alert("게시글이 삭제 되었습니다.");
													location.href = document.referrer; // 뒤로가기 후 새로고침!
												}
											},
											error: function() {
											}
										});// ajax
									}// if-confirm 
								} else {// 관리자 아니면
									if(confirm("해당 게시글을 삭제하시겠습니까?")) {
										$.ajax({
											url: "/edu/deleteBrdOne",
											type: "post",
											data: {"bno":bno},
											success: function(data) {
												if (data=="deleted") {
													alert("게시글이 삭제 되었습니다.");
													location.href = document.referrer; // 뒤로가기 후 새로고침!
												}
											},
											error: function() {
											}
										});// ajax
									}// if-confirm
								}// else
							}// deleteBrdBtn
						</script>
						
						<!-- 게시글 버튼 -->
						<div class="row block btn-group-wrap">
							<div class="col-sm-12 btn-group">
								<div class="pull-right">
								
									
									<c:if test="${mdto.auth_id == sessionScope.id }">
										<a href="/madangs_folder/madang_4_4?bno=${mdto.board_no}" class="btnType02 btn btn-info">
											<span>수정</span>
										</a>
										<c:if test="${sessionScope.id != 'admin' }">
										<a onclick="deleteBrdBtn(${mdto.board_no})" class="btnType02 btn btn-info">
											<span style="color:white;">삭제</span>
										</a>
										</c:if>
									</c:if>
									
									<!-- 관리자 권한으로 게시글 삭제 -->
									<c:if test="${sessionScope.id == 'admin' }">
									<a onclick="deleteBrdBtn(${mdto.board_no})" class="btnType02 btn btn-info">
											<span style="color:white;" >삭제</span>
										</a>
									</c:if>
									
									<a href="/madangs_folder/madang_4_1?s_opt=${param.s_opt}&s_word=${param.s_word}&s_loc=${param.s_loc}&rowPP=${param.rowPP}" class="btnType02 btn btn-info">
										<span>목록</span>
									</a>
								</div>
							</div>
						</div>
						<!-- //게시글 버튼 -->
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