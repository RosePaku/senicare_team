<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!-- 
	0712_1934 작업사항
	1) 헤더, 푸터 작업 완료
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
 -->

		<!doctype html>
		<html lang="euc-kr">

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
			<!-- <div data-include-path="../senicare_main_header.jsp"></div> -->
			<%@ include file="../senicare_main_header.jsp" %>
				<!--================Header Menu Area =================-->

				<!--================ Banner Area =================-->
				<section class="banner_area">
					<div class="banner_inner d-flex align-items-center">
						<div class="container">
							<div class="banner_content text-left">
								<h2>바로 구직</h2>
								<div class="page_link">
									<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
									<a href="../jobs_folder/job_1">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
								</div>
							</div>
						</div>
					</div>

					<!--================End Banner Area =================-->

					<!-- Start Offered Services Area -->
					<div id="jobsearch-Main">
						<div id="jobsearch-HomePage"><span id="jobsearch-HomepageBody" class="dd-privacy-allow">
								<div class="jobsearch-Container jobsearch-Spacer"></div>
								<div id="mosaic-belowNav" class="mosaic-zone"></div>

								<c:if test="${sessionScope.a_bid!=null}">
									<form action="/myPages_business_folder/myPages_business_2_1" method="post">
										<div class="search_button_guin" id="asdsad1">
											<button class="blue-button" type="submit" id="ssada">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">기업 회원 구인 구직 등록하기</font>
												</font>
											</button>
										</div>
									</form>
								</c:if>

								<c:if test="${sessionScope.id!=null}">
									<form action="/myPages_business_folder/myPages_business_2_1" method="post">
										<div class="search_button_guin" id="asdsad1">
											<button class="blue-button" type="submit" id="ssada">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">개인 회원 이력서 작성하기</font>
												</font>
											</button>
										</div>
									</form>
								</c:if>


								<div class="jobsearch-Container jobsearch-Spacer"></div>
								<div class="jobsearch-Container jobsearch-Spacer_1" style="margin-bottom: 20px;">구인구직할 키워드를 입력하세요</div>


								<div role="main" data-testid="jobsearch-Content" class="css-7i63eu eu4oa1w0">
									<div data-testid="jobSearch-Yosegi" class="css-118xbze eu4oa1w0">
										<div class="jobsearch-MosaicProviderRichSearch css-19ms49m eu4oa1w0">
											<div id="MosaicProviderRichSearchDaemon"
												class="mosaic MosaicProviderRichSearchDaemon mosaic-provider-hydrated">
												<div role="search" class="dd-privacy-allow">
													<div class="yosegi-InlineWhatWhere">
														<form class="yosegi-InlineWhatWhere-form" id="jobsearch"
															method="get" action="/jobs?q=&amp;l=&amp;from=searchOnHP">
															<div class="yosegi-InlineWhatWhere-searchBox">
																<div
																	class="yosegi-EmbeddedLabelInput yosegi-InlineWhatWhere-what">
																	<div>
																		<div class="icl-TextInputClearable">
																			<div class="icl-TextInput">
																				<div class="icl-TextInput-labelWrapper">
																					<label id="label-text-input-what"
																						class="icl-TextInput-label"
																						for="text-input-what"
																						tabindex="-1">
																						<font
																							style="vertical-align: inherit;">
																							<font
																								style="vertical-align: inherit;">
																								키워드</font>
																						</font>
																					</label>
																				</div>
																				<div class="icl-TextInput-wrapper">
																					<input type="text"
																						aria-labelledby="label-text-input-what"
																						id="text-input-what" name="q"
																						placeholder="직종, 키워드, 회사명 등"
																						value="" autocomplete="off"
																						aria-owns="text-input-what-suggestion-list"
																						class="icl-TextInput-control icl-TextInput-control--withIconRight"
																						aria-invalid="false"><span
																						class="icl-TextInput-icon iconRight"
																						aria-hidden="true"><span
																							aria-hidden="true"
																							class=""><svg
																								xmlns="http://www.w3.org/2000/svg"
																								width="21" height="20"
																								fill="none"
																								aria-hidden="true">
																								<defs></defs>
																								<path fill="#767676"
																									fill-rule="evenodd"
																									d="M11.4038 12.3048C10.7084 12.7451 9.88397 13 9 13c-2.48528 0-4.5-2.0147-4.5-4.5C4.5 6.01472 6.51472 4 9 4c2.4853 0 4.5 2.01472 4.5 4.5 0 .87711-.2509 1.6956-.6849 2.3876l3.5089 3.5089c.1952.1953.1952.5119 0 .7071l-.7071.7072c-.1953.1952-.5119.1952-.7071 0l-3.506-3.506zM11.5 8.5c0 1.38071-1.1193 2.5-2.5 2.5-1.38071 0-2.5-1.11929-2.5-2.5S7.61929 6 9 6c1.3807 0 2.5 1.11929 2.5 2.5z"
																									clip-rule="evenodd">
																								</path>
																							</svg></span></span>
																				</div>
																			</div>
																		</div>
																		<div class="autocomplete-container"
																			style="z-index:2;position:relative;margin:0px;padding:0px">
																			<div id="text-input-what-suggestion-list">
																				<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
																					style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px;">
																					<span aria-live="polite"
																						aria-atomic="true" role="status"
																						class="icl-Autocomplete-ariaResultsAvailable"></span>
																				</div>
																				<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
																					style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px;">
																					<span aria-live="polite"
																						aria-atomic="true" role="status"
																						class="icl-Autocomplete-ariaResultsAvailable"></span>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="yosegi-EmbeddedLabelInput yosegi-InlineWhatWhere-where">
																	<div>
																		<div class="icl-TextInputClearable">
																			<div class="icl-TextInput">
																				<div class="icl-TextInput-labelWrapper">
																					<label id="label-text-input-where"
																						class="icl-TextInput-label"
																						for="text-input-where"
																						tabindex="-1">
																						<font
																							style="vertical-align: inherit;">
																							<font
																								style="vertical-align: inherit;">
																								근무지</font>
																						</font>
																					</label>
																				</div>
																				<div class="icl-TextInput-wrapper">
																					<input type="text"
																						aria-labelledby="label-text-input-where"
																						id="text-input-where" name="l"
																						placeholder="서울시, 구로구, 역명"
																						value="" autocomplete="off"
																						aria-owns="text-input-where-suggestion-list"
																						class="icl-TextInput-control icl-TextInput-control--withIconRight"
																						aria-invalid="false"><span
																						class="icl-TextInput-icon iconRight"
																						aria-hidden="true"><span
																							aria-hidden="true"
																							class=""><svg
																								xmlns="http://www.w3.org/2000/svg"
																								width="20" height="20"
																								fill="none"
																								aria-hidden="true">
																								<defs></defs>
																								<path fill="#767676"
																									fill-rule="evenodd"
																									d="M5.81104 8.2c0-2.322 1.87303-4.2 4.18889-4.2 2.31587 0 4.18887 1.878 4.18887 4.2 0 2.581-2.8123 6.1691-3.8282 7.3811-.1906.2274-.5307.2274-.72131 0C8.62332 14.3691 5.81104 10.781 5.81104 8.2zm4.1889 2.0029c1.10456 0 1.99996-.89545 1.99996-2.00002 0-1.10457-.8954-2-1.99996-2-1.10457 0-2 .89543-2 2s.89543 2.00002 2 2.00002z"
																									clip-rule="evenodd">
																								</path>
																							</svg></span></span>
																				</div>
																			</div>
																		</div>
																		<div class="autocomplete-container"
																			style="z-index:2;position:relative;margin:0px;padding:0px">
																			<div id="text-input-where-suggestion-list">
																				<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
																					style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px;">
																					<span aria-live="polite"
																						aria-atomic="true" role="status"
																						class="icl-Autocomplete-ariaResultsAvailable"></span>
																				</div>
																				<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
																					style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px;">
																					<span aria-live="polite"
																						aria-atomic="true" role="status"
																						class="icl-Autocomplete-ariaResultsAvailable"></span>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<!-- 문제 해결 필요 -->
															<div class="search_button" id="ss">
																<form action="../jobs_folder/job_1_2_2" method="post"
																	id="dsdsd1">
																	<button class="yosegi-InlineWhatWhere-primaryButton"
																		type="submit">
																		<font style="vertical-align: inherit;">
																			<font style="vertical-align: inherit;">상세
																				입력하여
																				검색</font>
																		</font>
																	</button>
																</form>
																<form action="../jobs_folder/job_1_2_1" method="post"
																	id="dsdsd12">
																	<button class="yosegi-InlineWhatWhere-primaryButton"
																		type="submit">
																		<font style="vertical-align: inherit;">
																			<font style="vertical-align: inherit;">바로
																				전체검색</font>
																		</font>
																	</button>
																</form>
															</div>
														</form>

													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="mosaic-aboveJobFeed" class="mosaic-zone"></div>
									<div data-testid="jobsearch-PromoContainer" class="css-g6tyia eu4oa1w0"></div>
									<div class="dd-privacy-mask css-kyg8or eu4oa1w0" data-testid="jobsearch-Messages">
										<div id="messages"></div>
									</div>
									<div class="jobsearch-Spacer"></div>
								</div>
							</span>
						</div>
					</div>

					<!--====게시판====-->

					<!-- End Offered Services Area -->


					<!--================ footer Area =================-->
					<%@ include file="../senicare_sub_footer.jsp" %>
						<!--================ footer Area =================-->




						<!-- Optional JavaScript -->
						<!-- 스크립트 라이브러리 -->
						<!-- <script src="../js/jquery-3.2.1.min.js"></script>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
 -->

		</body>

		</html>