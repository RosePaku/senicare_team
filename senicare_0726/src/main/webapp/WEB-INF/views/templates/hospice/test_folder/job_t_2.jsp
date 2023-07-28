<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 해당 코드로 수정 -->
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
						<a href="job_1.jsp">클릭하시면 [ 바로 구직 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>

		<!--================End Banner Area =================-->

		<!-- Start Offered Services Area -->

		<!--====게시판====-->

		<!-- 채용검색 -->

		<div class="jobsearch-JapanPageLayout jobsearch-JapanSerpContainer is-i18n css-u6c04m eu4oa1w0">
			<div id="mosaic-belowNav" class="mosaic-zone"></div>
			<div class="jobsearch-RichSearch">
				<div class="jobsearch-RichSearchBody">
					<div id="MosaicProviderRichSearchDaemon"
						class="mosaic MosaicProviderRichSearchDaemon mosaic-provider-hydrated">
						<div role="search" class="dd-privacy-allow">
							<div class="yosegi-InlineWhatWhere">
								<form class="yosegi-InlineWhatWhere-form" id="jobsearch" method="get"
									action="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C">
									<div class="yosegi-InlineWhatWhere-searchBox">
										<div class="yosegi-EmbeddedLabelInput yosegi-InlineWhatWhere-what">
											<div>
												<div class="icl-TextInputClearable">
													<div class="icl-TextInput">
														<div class="icl-TextInput-labelWrapper"><label
																id="label-text-input-what" class="icl-TextInput-label"
																for="text-input-what" tabindex="-1">
																<font style="vertical-align: inherit;">
																	<font style="vertical-align: inherit;">키워드</font>
																</font>
															</label></div>
														<div class="icl-TextInput-wrapper"><input type="text"
																aria-labelledby="label-text-input-what"
																id="text-input-what" name="q"
																placeholder="직종, 키워드, 회사명 등" value="正社員"
																autocomplete="off"
																aria-owns="text-input-what-suggestion-list"
																class="icl-TextInput-control icl-TextInput-control--withIconRight"
																aria-invalid="false"><span
																class="icl-TextInput-icon iconRight"
																aria-hidden="true"><span aria-hidden="true"
																	class=""><svg xmlns="http://www.w3.org/2000/svg"
																		width="21" height="20" fill="none"
																		aria-hidden="true">
																		<defs></defs>
																		<path fill="#767676" fill-rule="evenodd"
																			d="M11.4038 12.3048C10.7084 12.7451 9.88397 13 9 13c-2.48528 0-4.5-2.0147-4.5-4.5C4.5 6.01472 6.51472 4 9 4c2.4853 0 4.5 2.01472 4.5 4.5 0 .87711-.2509 1.6956-.6849 2.3876l3.5089 3.5089c.1952.1953.1952.5119 0 .7071l-.7071.7072c-.1953.1952-.5119.1952-.7071 0l-3.506-3.506zM11.5 8.5c0 1.38071-1.1193 2.5-2.5 2.5-1.38071 0-2.5-1.11929-2.5-2.5S7.61929 6 9 6c1.3807 0 2.5 1.11929 2.5 2.5z"
																			clip-rule="evenodd"></path>
																	</svg></span></span></div>
													</div>
												</div>
												<div class="autocomplete-container"
													style="z-index:2;position:relative;margin:0px;padding:0px">
													<div id="text-input-what-suggestion-list">
														<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
															style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px">
															<span aria-live="polite" aria-atomic="true" role="status"
																class="icl-Autocomplete-ariaResultsAvailable"></span>
														</div>
														<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
															style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px">
															<span aria-live="polite" aria-atomic="true" role="status"
																class="icl-Autocomplete-ariaResultsAvailable"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="yosegi-EmbeddedLabelInput yosegi-InlineWhatWhere-where">
											<div>
												<div class="icl-TextInputClearable">
													<div class="icl-TextInput">
														<div class="icl-TextInput-labelWrapper"><label
																id="label-text-input-where" class="icl-TextInput-label"
																for="text-input-where" tabindex="-1">
																<font style="vertical-align: inherit;">
																	<font style="vertical-align: inherit;">근무지</font>
																</font>
															</label></div>
														<div class="icl-TextInput-wrapper"><input type="text"
																aria-labelledby="label-text-input-where"
																id="text-input-where" name="l"
																placeholder="도도부현, 시구정촌, 역명" value="大阪府"
																autocomplete="off"
																aria-owns="text-input-where-suggestion-list"
																class="icl-TextInput-control icl-TextInput-control--withIconRight"
																aria-invalid="false"><span
																class="icl-TextInput-icon iconRight"
																aria-hidden="true"><span aria-hidden="true"
																	class=""><svg xmlns="http://www.w3.org/2000/svg"
																		width="20" height="20" fill="none"
																		aria-hidden="true">
																		<defs></defs>
																		<path fill="#767676" fill-rule="evenodd"
																			d="M5.81104 8.2c0-2.322 1.87303-4.2 4.18889-4.2 2.31587 0 4.18887 1.878 4.18887 4.2 0 2.581-2.8123 6.1691-3.8282 7.3811-.1906.2274-.5307.2274-.72131 0C8.62332 14.3691 5.81104 10.781 5.81104 8.2zm4.1889 2.0029c1.10456 0 1.99996-.89545 1.99996-2.00002 0-1.10457-.8954-2-1.99996-2-1.10457 0-2 .89543-2 2s.89543 2.00002 2 2.00002z"
																			clip-rule="evenodd"></path>
																	</svg></span></span></div>
													</div>
												</div>
												<div class="autocomplete-container"
													style="z-index:2;position:relative;margin:0px;padding:0px">
													<div id="text-input-where-suggestion-list">
														<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
															style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px">
															<span aria-live="polite" aria-atomic="true" role="status"
																class="icl-Autocomplete-ariaResultsAvailable"></span>
														</div>
														<div class="icl-Autocomplete-ariaResultsAvailableWrapper"
															style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px">
															<span aria-live="polite" aria-atomic="true" role="status"
																class="icl-Autocomplete-ariaResultsAvailable"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div><button class="yosegi-InlineWhatWhere-primaryButton" type="submit">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">채용검색</font>
										</font>
									</button>
								</form>
							</div>
							<!-- 채용검색 -->


						</div><span aria-live="assertive" class="css-1b6omqv esbq1260"></span><span
							aria-live="assertive" class="css-1b6omqv esbq1260"></span><span aria-live="polite"
							class="css-1b6omqv esbq1260"></span><span aria-live="polite"
							class="css-1b6omqv esbq1260"></span>
					</div>
				</div>
			</div>
		</div>
		<div id="mosaic-belowFilters" class="mosaic-zone"></div>
		<div class="jobsearch-Banner">
			<div id="mosaic-aboveResults" class="mosaic-zone">
				<div id="mosaic-provider-serpreportjob"
					class="mosaic mosaic-provider-serpreportjob mosaic-provider-hydrated">
					<div class="mosaic-reportcontent-wrapper" aria-live="assertive"></div>
				</div>
			</div>
		</div>
		<div class="jobsearch-SerpMainContent ">
			<!-- 왼쪽 영역 jobsearch-LeftPane -->
			<div class="jobsearch-LeftPane">
				<div class="jobsearch-QueryReplaceContainer"></div>
				<div id="mosaic-aboveJobCards" class="mosaic-zone"></div>
				<div class="jobsearch-JobCountAndSortPane css-lrjfwh eu4oa1w0">
					<h1 class="css-novqjp e1tiznh50">
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">정규직 채용 - 오사카부</font>
						</font>
					</h1>
					<div class="css-5iwi5f eu4oa1w0">
						<div class="css-4o6amg eu4oa1w0">
							<div class="css-15b2pfd eu4oa1w0"><span>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">정렬: </font>
									</font>
								</span><span><b>
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">관련성</font>
										</font>
									</b>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;"> - </font>
									</font><a
										href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;sort=date"
										rel="nofollow" class="css-1iu4dmb emf9s7v0">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">날짜순</font>
										</font>
									</a>
								</span></div>
							<div class="jobsearch-JobCountAndSortPane-jobCount css-1af0d6o eu4oa1w0"><span>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">270,863개의 채용</font>
									</font>
								</span><span class="css-kyg8or eu4oa1w0"><button
										class="jobsearch-ResultsInfo-button css-14u3rfk eu4oa1w0"
										aria-label="도움말 아이콘"><svg role="img" aria-label="도움말 아이콘" viewBox="0 0 24 24"
											class="css-1grwnuz eu4oa1w0">
											<g class="css-kyg8or eu4oa1w0">
												<path
													d="M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20zm0 2a12 12 0 1 1 0-24 12 12 0 0 1 0 24zm-1.56-8.8v2.46h2.5V15.2h-2.5zM7.88 9.94h2.34c0-.29.03-.56.1-.8.06-.26.16-.47.29-.66a1.48 1.48 0 0 1 1.25-.61c.43 0 .76.11 1 .35.24.23.36.6.36 1.08 0 .29-.04.53-.16.72-.1.19-.25.36-.43.52-.18.16-.38.32-.6.48-.2.16-.4.35-.6.57a3.26 3.26 0 0 0-.77 1.94v.71h2.16v-.6c.04-.32.14-.59.3-.8.17-.21.36-.4.57-.57.22-.16.44-.33.68-.49a3.3 3.3 0 0 0 1.15-1.44 3.4 3.4 0 0 0 0-2.26 2.8 2.8 0 0 0-.66-1c-.31-.3-.72-.56-1.22-.77a5 5 0 0 0-3.48-.02 3.52 3.52 0 0 0-1.99 2.07c-.19.48-.28 1-.3 1.58z"
													class="css-kyg8or eu4oa1w0"></path>
											</g>
										</svg></button></span></div>
						</div>
					</div>
				</div>
				<div id="mosaic-jobResults" class="mosaic-zone">
					<div id="mosaic-provider-jobcards" class="mosaic mosaic-provider-jobcards mosaic-provider-hydrated">
						<ul class="jobsearch-ResultsList css-0">
							<li>
								<div
									class="cardOutline tapItem dd-privacy-allow result job_6d0d95c4de72e4af resultWithShelf sponTapItem desktop vjs-highlight css-kyg8or eu4oa1w0">
									<div class="slider_container css-8xisqv eu4oa1w0" dir="auto">
										<div class="slider_list css-kyg8or eu4oa1w0">
											<div class="slider_item css-kyg8or eu4oa1w0">
												<div class="job_seen_beacon" style="border-top:">
													<table class="jobCard_mainContent" cellpadding="0" cellspacing="0"
														role="presentation">
														<tbody>
															<tr>
																<td class="resultContent">
																	<div class="css-1m4cuuf e37uo190">
																		<h2 class="jobTitle jobTitle-newJob css-bdjp2m eu4oa1w0"
																			tabindex="-1"><a id="job_6d0d95c4de72e4af"
																				data-mobtk="1h5jht77ek4e4800"
																				data-jk="6d0d95c4de72e4af"
																				data-hiring-event="false"
																				data-hide-spinner="true" role="button"
																				aria-label="의류 판매 채용 정보"
																				class="jcs-JobTitle css-jspxzf eu4oa1w0"
																				href="../rc/clk?jk=6d0d95c4de72e4af&amp;fccid=29cbfbd6869f338c&amp;vjs=3"><span
																					title="의류 판매"
																					id="jobTitle-6d0d95c4de72e4af">アパレル販売</span></a>
																		</h2>
																		<div class="new css-ud6i3y eu4oa1w0"><span
																				class="label css-1qj35nq eu4oa1w0">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						신착</font>
																				</font>
																			</span></div>
																	</div>
																	<div
																		class="heading6 company_location tapItem-gutter companyInfo">
																		<span class="companyName"><a
																				data-tn-element="companyName"
																				class="turnstileLink companyOverviewLink"
																				target="_blank"
																				href="../cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03"
																				rel="noopener">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						COLLAGE GALLARDAGALANTE (콜라주
																						갈랴 다가란테) ...</font>
																				</font>
																			</a></span><span
																			class="ratingsDisplay withRatingLink"><a
																				data-tn-variant="cmplinktst2"
																				class="ratingLink" target="_blank"
																				href="../cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03/reviews"
																				title="COLLAGE GALLARDAGALANTE(콜라주 갈랴다가란테) 한큐 산반가점 reviews"
																				rel="noopener"><span
																					class="ratingNumber"
																					aria-label="3.1 out of five stars rating"
																					role="img"><span aria-hidden="true">
																						<font
																							style="vertical-align: inherit;">
																							<font
																								style="vertical-align: inherit;">
																								3.1</font>
																						</font>
																					</span><svg width="12" height="12"
																						role="presentation"
																						class="starIcon"
																						aria-hidden="true"
																						viewBox="0 0 16 16" fill="none"
																						xmlns="http://www.w3.org/2000/svg">
																						<path
																							d="M8 12.8709L12.4542 15.5593C12.7807 15.7563 13.1835 15.4636 13.0968 15.0922L11.9148 10.0254L15.8505 6.61581C16.1388 6.36608 15.9847 5.89257 15.6047 5.86033L10.423 5.42072L8.39696 0.640342C8.24839 0.289808 7.7516 0.289808 7.60303 0.640341L5.57696 5.42072L0.395297 5.86033C0.015274 5.89257 -0.13882 6.36608 0.149443 6.61581L4.0852 10.0254L2.90318 15.0922C2.81653 15.4636 3.21932 15.7563 3.54584 15.5593L8 12.8709Z"
																							fill="#767676"></path>
																					</svg></span></a></span>
																		<div class="companyLocation">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					오사카부 오사카시 기타구 우메다역</font>
																			</font>
																		</div>
																	</div>
																	<div
																		class="jobsearch-JobCard-tagContainer css-rp1udm eu4oa1w0">
																		<span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					사회 보험 완비</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					상여 있음</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					유니폼 대여</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					평일에만 OK</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					공백 OK</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					직원 등용 있음</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag jobsearch-JobCard-moreTag css-an4ryk eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					12+</font>
																			</font>
																		</span>
																	</div>
																	<div
																		class="heading6 tapItem-gutter metadataContainer">
																		<div class="metadata salary-snippet-container">
																			<div aria-label="시급 1,300엔"
																				class="salary-snippet"><span>時給
																					1,300円</span></div>
																		</div>
																		<div class="metadata">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					아르바이트 파트</font>
																			</font>
																		</div>
																	</div>
																	<div class="heading6 error-text tapItem-gutter">
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
													<table class="jobCardShelfContainer" role="presentation">
														<tbody>
															<tr class="jobCardShelf"></tr>
															<tr class="underShelfFooter">
																<td>
																	<div class="heading6 tapItem-gutter result-footer">
																		<div class="job-snippet"><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						정직원</font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					등용 제도 있음 ] </font>
																				<font style="vertical-align: inherit;">
																					펄에서는 연 2 회 (2 월과 8 월) 타이밍에 적극적으로
																					정규직 등용을 실시하고 있기 때문에 정규직을 목표
																				</font>
																			</font><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						로</font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					하는
																				</font>
																			</font><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						것도 </font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																			</font><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						가능</font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					...
																				</font>
																				<font style="vertical-align: inherit;">
																					추천합니다. </font>
																				<font style="vertical-align: inherit;">
																					6개월 이상...</font>
																			</font>
																		</div><span class="date"><span
																				class="visually-hidden">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						Posted</font>
																				</font>
																			</span>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					7일 전</font>
																			</font>
																		</span>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
													<div aria-live="polite"></div>
												</div>
											</div>
											<div class="slider_sub_item css-kyg8or eu4oa1w0"></div>
										</div>
									</div>

							</li>
							<li>
								<div
									class="cardOutline tapItem dd-privacy-allow result job_a134c325666d2a64 resultWithShelf sponTapItem desktop css-kyg8or eu4oa1w0">
									<div class="slider_container css-8xisqv eu4oa1w0" dir="auto">
										<div class="slider_list css-kyg8or eu4oa1w0">
											<div class="slider_item css-kyg8or eu4oa1w0">
												<div class="job_seen_beacon" style="border-top:">
													<table class="jobCard_mainContent" cellpadding="0" cellspacing="0"
														role="presentation">
														<tbody>
															<tr>
																<td class="resultContent">
																	<div class="css-1m4cuuf e37uo190">
																		<h2 class="jobTitle jobTitle-newJob css-bdjp2m eu4oa1w0"
																			tabindex="-1"><a id="job_a134c325666d2a64"
																				data-mobtk="1h5jht77ek4e4800"
																				data-jk="a134c325666d2a64"
																				data-hiring-event="false"
																				data-hide-spinner="true" role="button"
																				aria-label="【베이스 야드 도쿄】 숍 판매의 구인의 상세"
																				class="jcs-JobTitle css-jspxzf eu4oa1w0"
																				href="../rc/clk?jk=a134c325666d2a64&amp;fccid=225fc7629b0077fd&amp;vjs=3"><span
																					title="【베이스 야드 도쿄】 숍 판매"
																					id="jobTitle-a134c325666d2a64">【ベースヤード
																					トーキョー】ショップ販売</span></a></h2>
																		<div class="new css-ud6i3y eu4oa1w0"><span
																				class="label css-1qj35nq eu4oa1w0">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						신착</font>
																				</font>
																			</span></div>
																	</div>
																	<div
																		class="heading6 company_location tapItem-gutter companyInfo">
																		<span class="companyName">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					베이스 야드 도쿄 LUCUA</font>
																			</font>
																		</span>
																		<div class="companyLocation">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					오사카부 오사카시 기타구 오사카역</font>
																			</font>
																		</div>
																	</div>
																	<div
																		class="jobsearch-JobCard-tagContainer css-rp1udm eu4oa1w0">
																		<span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					토, 일, 공휴일만 OK</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					사회 보험 완비</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					직원 등용 있음</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					네일 OK</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					잔업 없음</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag css-aq8ybz eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					헤어스타일・헤어색 자유</font>
																			</font>
																		</span><span
																			class="jobsearch-JobCard-tag jobsearch-JobCard-moreTag css-an4ryk eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					5+</font>
																			</font>
																		</span>
																	</div>
																	<div
																		class="heading6 tapItem-gutter metadataContainer">
																		<div class="metadata salary-snippet-container">
																			<div aria-label="시급 1,080엔"
																				class="salary-snippet"><span>時給
																					1,080円</span></div>
																		</div>
																		<div class="metadata">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					아르바이트 파트</font>
																			</font>
																		</div>
																	</div>
																	<div class="heading6 error-text tapItem-gutter">
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
													<table class="jobCardShelfContainer" role="presentation">
														<tbody>
															<tr class="jobCardShelf"></tr>
															<tr class="underShelfFooter">
																<td>
																	<div class="heading6 tapItem-gutter result-footer">
																		<div class="job-snippet">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					월까지) 교통비 일부 지급 고용 형태: 아르바이트/파트
																					정사원 등용
																				</font>
																			</font><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						제도</font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					있어 【대우 예: 아르바이트 기간 6개월 이상 후, 정사원
																					등용의
																				</font>
																			</font><b>
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						경우</font>
																				</font>
																			</b>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					】</font>
																			</font>
																		</div><span class="date"><span
																				class="visually-hidden">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						Posted</font>
																				</font>
																			</span>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					4일 전</font>
																			</font>
																		</span>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
													<div aria-live="polite"></div>
												</div>
											</div>
											<div class="slider_sub_item css-kyg8or eu4oa1w0"></div>
										</div>
									</div>
									<div class="kebabMenu"
										aria-labelledby="jobActionButton-a134c325666d2a64 jobTitle-a134c325666d2a64"
										role="group"><span aria-live="polite" class="visually-hidden"></span><button
											id="jobActionButton-a134c325666d2a64"
											aria-label="Job Actions menu is collapsed" aria-haspopup="true"
											aria-expanded="false" class="kebabMenu-button"><svg width="24" height="24"
												role="presentation" aria-hidden="true" viewBox="0 0 24 24" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M12 7C13.1 7 14 6.1 14 5C14 3.9 13.1 3 12 3C10.9 3 10 3.9 10 5C10 6.1 10.9 7 12 7ZM12 10C10.9 10 10 10.9 10 12C10 13.1 10.9 14 12 14C13.1 14 14 13.1 14 12C14 10.9 13.1 10 12 10ZM12 17C10.9 17 10 17.9 10 19C10 20.1 10.9 21 12 21C13.1 21 14 20.1 14 19C14 17.9 13.1 17 12 17Z"
													fill="#2d2d2d"></path>
											</svg></button></div>
								</div><span aria-live="polite" class="visually-hidden"></span>
							</li>

							<!-- 하단 -->
						</ul>
						<div id="toast" aria-live="polite"></div>
					</div>
				</div>
				<div id="mosaic-provider-jobsearch-feedback"
					class="mosaic mosaic-provider-jobsearch-feedback mosaic-provider-hydrated">
					<div class="dd-privacy-allow  glci">
						<div id="ratingForm" class="smileyRatingForm">
							<div class="css-wk54xg esu7hk30">
								<div class="css-kg11vx e1gufzzf0">
									<div class="ipl-smiley-rating css-kyg8or eu4oa1w0">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="mosaic-serpBottomBody" class="mosaic-zone"></div>
				<div id="mosaic-endResults" class="mosaic-zone">
					<div id="mosaic-provider-dislike-feedback" class="mosaic mosaic-provider-dislike-feedback">
					</div>
				</div>

				<!-- 하단 페이지 바 -->
				<nav role="navigation" aria-label="pagination" class="css-jbuxu0 ecydgvn0">
					<div class="css-tvvxwd ecydgvn1"><button data-testid="pagination-page-current"
							class="css-ns2mzi e8ju0x51">1</button></div>
					<div class="css-tvvxwd ecydgvn1"><a data-testid="pagination-page-2" rel="nofollow" aria-label="2"
							href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;start=20"
							class="css-1qt7hdn e8ju0x50">2</a></div>
					<div class="css-tvvxwd ecydgvn1"><a data-testid="pagination-page-3" rel="nofollow" aria-label="3"
							href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;start=40"
							class="css-1qt7hdn e8ju0x50">3</a></div>
					<div class="css-tvvxwd ecydgvn1"><a data-testid="pagination-page-4" rel="nofollow" aria-label="4"
							href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;start=60"
							class="css-1qt7hdn e8ju0x50">4</a></div>
					<div class="css-tvvxwd ecydgvn1"><a data-testid="pagination-page-5" rel="nofollow" aria-label="5"
							href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;start=80"
							class="css-1qt7hdn e8ju0x50">5</a></div>
					<div class="css-tvvxwd ecydgvn1"><a data-testid="pagination-page-next" rel="nofollow"
							aria-label="Next Page"
							href="../jobs?q=%E6%AD%A3%E7%A4%BE%E5%93%A1&amp;l=%E5%A4%A7%E9%98%AA%E5%BA%9C&amp;start=20"
							class="css-13p07ha e8ju0x50"><svg xmlns="http://www.w3.org/2000/svg" focusable="false"
								role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"
								class="css-1xqhio eac13zx0">
								<path
									d="M9.888 5.998a.506.506 0 00-.716-.008l-.707.707a.506.506 0 00.01.716L13.06 12l-4.587 4.587c-.2.2-.204.521-.009.716l.707.707a.507.507 0 00.717-.009l5.647-5.648c.1-.1.148-.233.144-.366a.492.492 0 00-.144-.34v-.001a.611.611 0 00-.009-.009L9.888 5.998z">
								</path>
							</svg></a></div>
				</nav>
				<div id="mosaic-belowJobResultsPagination" class="mosaic-zone"></div>
				<div id="mosaic-belowMoreJobs" class="mosaic-zone">
					<div id="mosaic-provider-desktopserp-jobalert-form"
						class="mosaic mosaic-provider-desktopserp-jobalert-form">
						<div data-reactroot=""></div>
					</div>
				</div>
				<div data-test="jobsearch-RelatedQueries" class="css-ci7a53 eu4oa1w0">

					<div data-test="jobsearch-RelatedQueries-queryList" class="css-t4kr2i eu4oa1w0"><a
							href="../q-%e6%ad%a3%e7%a4%be%e5%93%a1-300%e4%b8%87%e5%86%86-l-%e5%a4%a7%e9%98%aa%e5%ba%9c-%e6%b1%82%e4%ba%ba.jsp"
							class="jobsearch-RelatedQueries-queryItem css-bmc2da eu4oa1w0"><span
								class="css-1cnu4h8 eu4oa1w0">
					</div>
				


				</div>
				<div id="serpBottomRelatedLinks" class="mosaic mosaic-empty-zone"></div>
				<div id="bottomSerpSpace" class="mosaic mosaic-empty-zone"></div>
			</div>
			<!-- 왼쪽 영역 jobsearch-LeftPane -->


			<!-- 오른쪽 데이터 미리보기 영역 -->
			<div class="jobsearch-RightPane">
				<div id="jobsearch-ViewjobPaneWrapper" aria-labelledby="jobsearch-JobFullDetailsTitle" tabindex="-1"
					class="css-n0exdb eu4oa1w0"><button class="visible-on-focus-only top css-toliiu eu4oa1w0">
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">Return to Search Result</font>
						</font>
					</button>
					<h2 id="jobsearch-JobFullDetailsTitle" class="screenreader-text">
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">Job Post Details</font>
						</font>
					</h2>
					<div><button class="jobsearch-ClosableViewJobPage-button-close css-19l33n6 e8ju0x51"
							aria-label="Close job details"><svg xmlns="http://www.w3.org/2000/svg" focusable="false"
								role="img" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"
								class="css-1xqhio eac13zx0">
								<rect width="24" height="24" rx="12" fill="#fff" fill-opacity=".5"></rect>
								<path
									d="M15.536 7.899a.5.5 0 0 0-.707 0L12 10.727 9.172 7.9a.5.5 0 0 0-.707 0l-.566.565a.5.5 0 0 0 0 .707L10.728 12l-2.829 2.828a.5.5 0 0 0 0 .707l.566.566a.5.5 0 0 0 .707 0L12 13.273 14.83 16.1a.5.5 0 0 0 .707 0l.566-.566a.5.5 0 0 0 0-.707L13.273 12l2.829-2.829a.5.5 0 0 0 0-.707l-.566-.565z"
									clip-rule="evenodd" fill="#2d2d2d" fill-rule="evenodd"></path>
							</svg></button>
						<div
							class="jobsearch-ViewJobLayout mobRefresh jasxrefreshcombotst jobsearch-ViewJobLayout--embedded css-lbzl5r eu4oa1w0">
							<div
								class="icl-Container--fluid dd-privacy-allow jobsearch-ViewJobLayout-fluidContainer is-JP">
								<div id="ssrVJModals" class="mosaic mosaic-empty-zone"></div>
								<div
									class="icl-Grid jobsearch-ViewJobLayout-content jobsearch-ViewJobLayout-mainContent css-okmmzf eu4oa1w0">
									<div class="jobsearch-ViewJobLayout-innerContent icl-Grid-col icl-u-xs-span12">
										<div class="icl-Grid jobsearch-ViewJobLayout-innerContentGrid">
											<div
												class="jobsearch-ViewJobLayout-jobDisplay icl-Grid-col icl-u-xs-span12">
												<div class="jobsearch-JobComponent icl-u-xs-mt--sm jobsearch-JobComponent--embedded css-axjo09 eu4oa1w0"
													style="height: 538.578px;">
													<div
														class="jobsearch-JobComponent-embeddedHeader css-doa9cz eu4oa1w0">
														<div class="jobsearch-InfoHeaderContainer">
															<div>
																<div
																	class="jobsearch-JobInfoHeader-title-container  css-bbq8li eu4oa1w0">
																	<h2
																		class="icl-u-xs-mb--xs icl-u-xs-mt--none jobsearch-JobInfoHeader-title is-embedded">
																		<span>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					의류 판매</font>
																			</font><span class="css-1syol37 esbq1260">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						- job post</font>
																				</font>
																			</span>
																		</span>
																	</h2>
																</div>
																<div data-testid="jobsearch-CompanyInfoContainer"
																	class="css-2wyr5j eu4oa1w0">
																	<div
																		class="jobsearch-CompanyInfoWithoutHeaderImage jobsearch-CompanyInfoWithReview css-kyg8or eu4oa1w0">
																		<div>
																			<div class="css-1qz04qx eu4oa1w0">
																				<div class="css-1h46us2 eu4oa1w0">
																					<div data-company-name="true"
																						data-testid="inlineHeader-companyName"
																						class="css-1cjkto6 eu4oa1w0">
																						<a href="https://jp.indeed.com/cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03?campaignid=mobvjcmp&amp;from=mobviewjob&amp;tk=1h5jhtal7k4fl806&amp;fromjk=6d0d95c4de72e4af"
																							target="_blank">
																							<font
																								style="vertical-align: inherit;">
																								<font
																									style="vertical-align: inherit;">
																									COLLAGE
																									GALLARDAGALANTE(콜라주
																									갈랴다가란테) 한큐 산반가점
																								</font>
																							</font>
																						</a>
																					</div>
																					<div class="css-1vlzuzk eu4oa1w0">
																						<div
																							class="css-1unnuiz e37uo190">
																							<div role="img"
																								aria-label="59개의 직원 평가로 별 5개 중 3.1"
																								class="css-ln09g1 e1wrtnu61">
																								<svg xmlns="http://www.w3.org/2000/svg"
																									focusable="false"
																									role="img"
																									fill="currentColor"
																									viewBox="0 0 24 24"
																									aria-hidden="true"
																									class="css-1xqhio eac13zx0">
																									<path
																										d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																									</path>
																								</svg><svg
																									xmlns="http://www.w3.org/2000/svg"
																									focusable="false"
																									role="img"
																									fill="currentColor"
																									viewBox="0 0 24 24"
																									aria-hidden="true"
																									class="css-1xqhio eac13zx0">
																									<path
																										d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																									</path>
																								</svg><svg
																									xmlns="http://www.w3.org/2000/svg"
																									focusable="false"
																									role="img"
																									fill="currentColor"
																									viewBox="0 0 24 24"
																									aria-hidden="true"
																									class="css-1xqhio eac13zx0">
																									<path
																										d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																									</path>
																								</svg>
																								<div aria-hidden="true"
																									class="css-1h39hw1 e1wrtnu60">
																									<svg xmlns="http://www.w3.org/2000/svg"
																										focusable="false"
																										role="img"
																										fill="currentColor"
																										viewBox="0 0 24 24"
																										class="css-1xqhio eac13zx0">
																										<path
																											fill-rule="evenodd"
																											d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																											clip-rule="evenodd">
																										</path>
																									</svg><svg
																										xmlns="http://www.w3.org/2000/svg"
																										focusable="false"
																										role="img"
																										fill="currentColor"
																										viewBox="0 0 24 24">
																										<defs>
																											<linearGradient
																												id="ifl-StarRating-fill-1"
																												x1="0"
																												x2="100%"
																												y1="0"
																												y2="0">
																												<stop
																													offset="26%"
																													stop-color="currentColor">
																												</stop>
																												<stop
																													offset="26%"
																													stop-color="transparent">
																												</stop>
																											</linearGradient>
																										</defs>
																										<path
																											fill="url(#ifl-StarRating-fill-1)"
																											d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																										</path>
																									</svg>
																								</div><svg
																									xmlns="http://www.w3.org/2000/svg"
																									focusable="false"
																									role="img"
																									fill="currentColor"
																									viewBox="0 0 24 24"
																									aria-hidden="true"
																									class="css-1xqhio eac13zx0">
																									<path
																										fill-rule="evenodd"
																										d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																										clip-rule="evenodd">
																									</path>
																								</svg>
																							</div><span
																								class="css-xvmbeo e1wnkr790"><a
																									href="https://jp.indeed.com/cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03/reviews?campaignid=mobvjcmp&amp;cmpratingc=mobviewjob&amp;from=mobviewjob&amp;tk=1h5jhtal7k4fl806&amp;fromjk=6d0d95c4de72e4af&amp;jt=%E3%82%A2%E3%83%91%E3%83%AC%E3%83%AB%E8%B2%A9%E5%A3%B2"
																									class="css-picdch emf9s7v0">
																									<font
																										style="vertical-align: inherit;">
																										<font
																											style="vertical-align: inherit;">
																											59개 이용
																											후기
																										</font>
																									</font>
																								</a></span>
																						</div>
																					</div>
																				</div>
																				<div data-testid="inlineHeader-companyLocation"
																					class="css-6z8o9s eu4oa1w0">
																					<div>
																						<font
																							style="vertical-align: inherit;">
																							<font
																								style="vertical-align: inherit;">
																								오사카부 오사카시 기타구 우메다역
																							</font>
																						</font>
																					</div>
																				</div>
																				<div class="css-6z8o9s eu4oa1w0">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="css-kyg8or eu4oa1w0">
																<div>
																	<div id="salaryInfoAndJobType"
																		class="jobsearch-JobMetadataHeader-item ">
																		<span class="css-2iqe2o eu4oa1w0">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					시급 1,300엔</font>
																			</font>
																		</span><span
																			class="jobsearch-JobMetadataHeader-item  icl-u-xs-mt--xs">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					- </font>
																			</font>
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					아르바이트 파트</font>
																			</font>
																		</span>
																	</div>
																</div>
															</div>
															<div class="icl-Grid icl-Grid--gutters">
																<div id="jobsearch-ViewJobButtons-container"
																	class="jobsearch-ViewJobButtons-container is-embedded icl-Grid-col icl-u-xs-span12 css-188irao eu4oa1w0">
																	<div id="aboveViewjobButtons"
																		class="mosaic mosaic-empty-zone"></div>
																	<div id="viewJobButtonLinkContainer"
																		class="icl-u-lg-inlineBlock viewJobButtonLinkContainer css-1xyxxgq eu4oa1w0">
																		<div id="applyButtonLinkContainer" class="">
																			<div>
																				<div class="css-199trha eu4oa1w0">
																					<button aria-haspopup="dialog"
																						type="button" buttonsize="block"
																						buttontype="primary"
																						contenthtml="応募先へ進む"
																						href="https://jp.indeed.com/applystart?jk=6d0d95c4de72e4af&amp;from=vj&amp;pos=bottom&amp;mvj=0&amp;jobsearchTk=1h5jht77ek4e4800&amp;spon=0&amp;sjdu=9GgPZsLGyzJsJxB2A8JTOIDDplm6SwWjHcxyoDIphKl0ixorJzhjW9NMgQbN8jodkN0wkll9wDHc3mnStM4Hmg&amp;vjfrom=tp-semfirstjob&amp;astse=2c01673972be1852&amp;assa=432"
																						newtabwarningtext="opens in a new tab"
																						occupationids="4KW6R,A8YSF,C3XKZ,NTGY4"
																						profilemicrocontentnegativeresponsevalue="3"
																						referrerpolicy="origin"
																						rel="noopener" target="_blank"
																						uipmosaicproviderenv="https://micro-content-api.indeed.com/generate-question?pageSrc=viewjob&amp;jobKey="
																						aria-label="지원 대상으로 이동 (새 탭에서 열림)"
																						class="css-1tur86y e8ju0x51">
																						<font
																							style="vertical-align: inherit;">
																							<font
																								style="vertical-align: inherit;">
																								응모처로 진행</font>
																						</font>
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div id="saveJobButtonContainer"
																		class="icl-u-lg-inlineBlock"
																		aria-hidden="false">
																		<div class="">
																			<div aria-live="assertive"><button
																					data-dd-action-name="save-job"
																					aria-label="이 직업을 저장"
																					aria-haspopup="true"
																					class="css-166k7et e8ju0x51"><svg
																						xmlns="http://www.w3.org/2000/svg"
																						focusable="false" role="img"
																						fill="currentColor"
																						viewBox="0 0 24 24"
																						class="css-1xqhio eac13zx0">
																						<title>保存アイコン</title>
																						<path fill-rule="evenodd"
																							d="M10.577 6.995c-.513-.513-1.007-.997-1.566-1.369-.543-.36-1.033-.536-1.511-.536-.706 0-1.52.183-2.16.634C4.784 6.118 4.203 6.82 4 8.217c.027 1.787.614 3.043 1.97 4.573 1.01 1.138 2.308 2.288 4.01 3.793.618.548 1.29 1.143 2.02 1.8.73-.657 1.402-1.252 2.02-1.8 1.702-1.505 3-2.655 4.01-3.793 1.356-1.53 1.943-2.786 1.97-4.573-.202-1.397-.783-2.099-1.34-2.493-.64-.451-1.454-.634-2.16-.634-.478 0-.968.175-1.51.536-.56.372-1.054.856-1.567 1.37L12 8.418l-1.423-1.424zM22 8.09c0 4.098-2.351 6.181-6.778 10.103-.88.779-1.841 1.63-2.882 2.585a.503.503 0 01-.68 0c-1.04-.955-2.002-1.806-2.882-2.585C4.351 14.27 2 12.188 2 8.09c.5-4 3.5-5 5.5-5 1.98 0 3.47 1.47 4.47 2.47l.02.021.01.01.01-.01.02-.021c1-1 2.49-2.47 4.47-2.47 2 0 5 1 5.5 5z"
																							clip-rule="evenodd">
																						</path>
																					</svg></button></div>
																		</div>
																	</div>
																	<div id="belowViewjobButtons"
																		class="mosaic mosaic-empty-zone"></div>
																</div>
															</div>
															<ul class="css-12rkhor e37uo190">
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">사회 보험
																			완비</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">상여 있음
																		</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">유니폼
																			대여</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">평일에만
																			OK</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">공백 OK
																		</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">직원 등용
																			있음</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">오프닝
																			스태프</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">학생 환영
																		</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">회사 할인
																			있음</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">
																			부업·W워크 OK</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">역 근처
																			5분 이내</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">연수 있음
																		</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">주
																			1일부터 OK</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">미경험자
																			환영</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">주부·주부
																			환영</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">승급 있음
																		</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">프리터
																			환영</font>
																	</font>
																</li>
																<li class="css-8fx8lh e37uo190">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">교통비
																			지급</font>
																	</font>
																</li>
															</ul>
														</div>
														<div></div>
													</div>
													<div
														class="jobsearch-JobComponent-embeddedBody css-d95737 eu4oa1w0">
														<div id="aboveExtractedJobDescription"
															class="mosaic mosaic-empty-zone"></div>
														<div class="jobsearch-JobComponent-description css-125gxbb eu4oa1w0"
															tabindex="0">
															<div id="jobHighlights" class="mosaic mosaic-empty-zone">
															</div>
															<div id="aboveFullJobDescription"
																class="mosaic mosaic-empty-zone"></div>
															<div class="css-1mkidpk eu4oa1w0">
																<div class="css-29lcrl eu4oa1w0">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">기업명
																		</font>
																	</font>
																</div>
																<div class="css-vlojn6 eu4oa1w0">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">
																			COLLAGE GALLARDAGALANTE(콜라주 갈랴다가란테) 한큐
																			산반가점</font>
																	</font><a
																		href="https://jp.indeed.com/cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03/reviews?campaignid=mobvjcmp&amp;cmpratingc=mobviewjob&amp;from=mobviewjob&amp;tk=1h5jhtal7k4fl806&amp;fromjk=6d0d95c4de72e4af&amp;jt=%E3%82%A2%E3%83%91%E3%83%AC%E3%83%AB%E8%B2%A9%E5%A3%B2"
																		aria-label="59개의 직원 평가로 별 5개 중 3.1"
																		class="css-1ot7s emf9s7v0">
																		<div role="img" class="css-1qhdppi e1wrtnu61">
																			<svg xmlns="http://www.w3.org/2000/svg"
																				focusable="false" role="img"
																				fill="currentColor" viewBox="0 0 24 24"
																				aria-hidden="true"
																				class="css-1xqhio eac13zx0">
																				<path
																					d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																				</path>
																			</svg><svg
																				xmlns="http://www.w3.org/2000/svg"
																				focusable="false" role="img"
																				fill="currentColor" viewBox="0 0 24 24"
																				aria-hidden="true"
																				class="css-1xqhio eac13zx0">
																				<path
																					d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																				</path>
																			</svg><svg
																				xmlns="http://www.w3.org/2000/svg"
																				focusable="false" role="img"
																				fill="currentColor" viewBox="0 0 24 24"
																				aria-hidden="true"
																				class="css-1xqhio eac13zx0">
																				<path
																					d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																				</path>
																			</svg>
																			<div aria-hidden="true"
																				class="css-1h39hw1 e1wrtnu60"><svg
																					xmlns="http://www.w3.org/2000/svg"
																					focusable="false" role="img"
																					fill="currentColor"
																					viewBox="0 0 24 24"
																					class="css-1xqhio eac13zx0">
																					<path fill-rule="evenodd"
																						d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																						clip-rule="evenodd"></path>
																				</svg><svg
																					xmlns="http://www.w3.org/2000/svg"
																					focusable="false" role="img"
																					fill="currentColor"
																					viewBox="0 0 24 24">
																					<defs>
																						<linearGradient
																							id="ifl-StarRating-fill-3"
																							x1="0" x2="100%" y1="0"
																							y2="0">
																							<stop offset="26%"
																								stop-color="currentColor">
																							</stop>
																							<stop offset="26%"
																								stop-color="transparent">
																							</stop>
																						</linearGradient>
																					</defs>
																					<path
																						fill="url(#ifl-StarRating-fill-3)"
																						d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																					</path>
																				</svg></div><svg
																				xmlns="http://www.w3.org/2000/svg"
																				focusable="false" role="img"
																				fill="currentColor" viewBox="0 0 24 24"
																				aria-hidden="true"
																				class="css-1xqhio eac13zx0">
																				<path fill-rule="evenodd"
																					d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																					clip-rule="evenodd"></path>
																			</svg>
																		</div><span class="css-1bpsydk e1wnkr790">
																			<font style="vertical-align: inherit;">
																				<font style="vertical-align: inherit;">
																					59개 이용 후기</font>
																			</font>
																		</span>
																	</a>
																</div>
																<div
																	class="jobsearch-CompanyReview css-1fa12x6 eu4oa1w0">
																	<div tabindex="0" role="navigation"
																		class="css-1sj8cni e37uo190"><a
																			href="https://jp.indeed.com/cmp/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%83%91%E3%83%AB-c359cc03/reviews?campaignid=mobvjcmp&amp;cmpratingc=mobviewjob&amp;from=mobviewjob&amp;tk=1h5jhtal7k4fl806&amp;fromjk=6d0d95c4de72e4af&amp;jt=%E3%82%A2%E3%83%91%E3%83%AC%E3%83%AB%E8%B2%A9%E5%A3%B2"
																			class="css-btm7l eu4oa1w0">
																			<h2
																				class="jobsearch-CompanyReview--heading css-1m3ntr8 e1tiznh50">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						COLLAGE GALLARDAGALANTE(콜라주
																						갈랴다가란테) 한큐 산반가점</font>
																				</font>
																			</h2>
																			<div class="css-r12c9e e37uo190">
																				<div role="img"
																					aria-label="59개의 직원 평가로 별 5개 중 3.1"
																					class="css-7cbdkx e1wrtnu61">
																					<svg xmlns="http://www.w3.org/2000/svg"
																						focusable="false" role="img"
																						fill="currentColor"
																						viewBox="0 0 24 24"
																						aria-hidden="true"
																						class="css-1xqhio eac13zx0">
																						<path
																							d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																						</path>
																					</svg><svg
																						xmlns="http://www.w3.org/2000/svg"
																						focusable="false" role="img"
																						fill="currentColor"
																						viewBox="0 0 24 24"
																						aria-hidden="true"
																						class="css-1xqhio eac13zx0">
																						<path
																							d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																						</path>
																					</svg><svg
																						xmlns="http://www.w3.org/2000/svg"
																						focusable="false" role="img"
																						fill="currentColor"
																						viewBox="0 0 24 24"
																						aria-hidden="true"
																						class="css-1xqhio eac13zx0">
																						<path
																							d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																						</path>
																					</svg>
																					<div aria-hidden="true"
																						class="css-1qck6b8 e1wrtnu60">
																						<svg xmlns="http://www.w3.org/2000/svg"
																							focusable="false" role="img"
																							fill="currentColor"
																							viewBox="0 0 24 24"
																							class="css-1xqhio eac13zx0">
																							<path fill-rule="evenodd"
																								d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																								clip-rule="evenodd">
																							</path>
																						</svg><svg
																							xmlns="http://www.w3.org/2000/svg"
																							focusable="false" role="img"
																							fill="currentColor"
																							viewBox="0 0 24 24">
																							<defs>
																								<linearGradient
																									id="ifl-StarRating-fill-4"
																									x1="0" x2="100%"
																									y1="0" y2="0">
																									<stop offset="26%"
																										stop-color="currentColor">
																									</stop>
																									<stop offset="26%"
																										stop-color="transparent">
																									</stop>
																								</linearGradient>
																							</defs>
																							<path
																								fill="url(#ifl-StarRating-fill-4)"
																								d="M12 18.698l6.125 3.696a.593.593 0 00.883-.642l-1.625-6.967 5.412-4.688a.593.593 0 00-.339-1.04l-7.124-.604-2.786-6.573a.593.593 0 00-1.092 0L8.668 8.453l-7.124.605a.593.593 0 00-.339 1.039l5.412 4.688-1.625 6.967c-.12.51.435.913.884.642L12 18.698z">
																							</path>
																						</svg>
																					</div><svg
																						xmlns="http://www.w3.org/2000/svg"
																						focusable="false" role="img"
																						fill="currentColor"
																						viewBox="0 0 24 24"
																						aria-hidden="true"
																						class="css-1xqhio eac13zx0">
																						<path fill-rule="evenodd"
																							d="M12 16.249l4.157 2.51-1.103-4.73 3.675-3.184-4.834-.41L12 5.965l-1.895 4.47-4.834.41 3.675 3.184-1.103 4.73L12 16.248zm-6.124 6.145a.593.593 0 01-.884-.642l1.625-6.967-5.412-4.688a.593.593 0 01.339-1.04l7.124-.604 2.786-6.573a.593.593 0 011.092 0l2.786 6.573 7.124.605a.593.593 0 01.338 1.039l-5.411 4.688 1.625 6.967a.593.593 0 01-.883.642L12 18.698l-6.124 3.696z"
																							clip-rule="evenodd">
																						</path>
																					</svg>
																				</div><span
																					class="css-1cxc9zk e1wnkr790">
																					<font
																						style="vertical-align: inherit;">
																						<font
																							style="vertical-align: inherit;">
																							59개 이용 후기</font>
																					</font>
																				</span>
																			</div>
																		</a><svg xmlns="http://www.w3.org/2000/svg"
																			focusable="false" role="img"
																			fill="currentColor" viewBox="0 0 20 20"
																			class="css-1nhvvuv eac13zx0">
																			<path
																				d="M8.41 5.404a.5.5 0 00-.708 0l-.353.353a.5.5 0 000 .707L10.884 10 7.35 13.536a.5.5 0 000 .707l.353.353a.5.5 0 00.707 0l4.243-4.242a.5.5 0 000-.708L8.409 5.404z">
																			</path>
																		</svg></div>
																</div>
																<div class="css-bbq8li eu4oa1w0">
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						고용 형태</font>
																				</font>
																			</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				<font style="vertical-align: inherit;">
																					<font
																						style="vertical-align: inherit;">
																						아르바이트 파트</font>
																				</font>
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																			</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				23年秋 NEW OPEN! 【COLLAGE
																				GALLARDAGALANTE】販売スタッフ1期生募集!
																				<br>
																				<br> 【給与】
																				<br>時給1300円以上
																				<br>
																				<br> 【シフト】
																				<br>週1日以上　1日3時間以上
																				<br>
																				<br> 【勤務地】
																				<br>大阪府 大阪市北区
																				<br>
																				<br> 【最寄駅】梅田駅
																				<br>
																				<br> 販売や接客業が未経験の方、ご安心ください!
																				<br>充実した研修システムがあるので、接客にも自信がつきます。
																				<br>もちろん、経験者の方やブランクがある方も大歓迎!
																				<br>接客が好き!という方でしたら楽しくお仕事ができますよ
																				<br>面倒見の良いスタッフ達があなたをお待ちしています!
																				<br>
																				<br> &lt;注目ポイント&gt;『COLLAGE
																				GALLARDAGALANTE(コラージュ ガリャルダガランテ)』
																				<br>コラージュすることで、大人のライフスタイルを楽しむ、知的で遊び心がわかるすべての女性に向けたセレクトショップ。
																				<br>そんな自分らしさを優しく表現できるようなオリジナルアイテムを展開。
																				<br>流行を意識しながらも自分らしいスタイルを持ちファッションを楽しむ女性。
																				<br>
																				<br>
																				~エレガンスだけれどほどよく肩の力が抜けたオシャレを楽しみたい~
																				<br>
																				<br>
																				ベーシックな中にもさりげないディテールと遊び心がある。着心地や機能性がよい大人の日常着とライフスタイルを提案します。
																				<br>
																				<br> そんなCOLLAGE
																				GALLARDAGALANTEで一緒に働きませんか?
																				<br>是非、ご応募ください。
																				<br>
																				<br>
																				https://www.palcloset.jp/collage/
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				勤務期間</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				長期(3ヶ月以上)</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				お仕事内容</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				主な仕事内容
																				<br>・接客
																				<br>・コーディネートの提案
																				<br>・お会計、ラッピング
																				<br>・在庫管理
																				<br>・店内ディスプレイ
																				<br>・店内美化 など
																				<br>
																				<br> 接客業務やアパレル未経験という方でも安心です。
																				<br>洋服のたたみ方、接客マナーなどの基礎知識は一からレクチャーいたします。
																				<br>まずは笑顔で明るく挨拶するところから始めていきましょう。
																				<br>働いているうちにコミュニケーションスキルがどんどんアップしていきます。
																				<br>
																				<br>
																				社員登用制度もあるので、頑張りしだいではステップアップも可能です。
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				特徴・メリット</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				オープニングスタッフ</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				応募資格</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				1日3時間以上の勤務が可能な方、募集中!
																				<br>
																				<ul>
																					<li>フルタイム勤務希望の方、大歓迎</li>
																					<li>フリーター・学生(高卒以上)・主婦(夫)・Wワークの方、歓迎!
																					</li>
																					<li>アパレル未経験者、ブランクがある方も大歓迎</li>
																					<li>経験者優遇</li>
																					<li>長期短期大歓迎</li>
																					<li>制服貸出あり、月1着</li>
																					<li>短期勤務希望の方、ご相談ください。　未経験者歓迎/経験者優遇/フリーター歓迎/Wワーク歓迎/大学生歓迎/二部学生歓迎/主婦(夫)歓迎/高校卒業以上
																					</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				シフト・勤務時間</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				週1日以上　1日3時間以上
																				<br>9時30分~21時30分
																				<br>シフト制
																				<br>9:30-18:00
																				<br>10:00-18:30
																				<br>10:30-19:00
																				<br>11:00-19:30
																				<br>13:00-21:30
																				<br>勤務時間帯はご相談ください。
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				アクセス</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				<ul>
																					<li>阪急神戸本線梅田駅より徒歩0分</li>
																					<li>御堂筋線梅田駅より徒歩1分</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				給与</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				時給1300円以上
																				<br><br>
																				<ul>
																					<li>昇給あり</li>
																					<li>交通費は最大15,000円/月まで支給!</li>
																					<li>支払い方法:月1回</li>
																				</ul>
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				待遇・福利厚生</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				社保完備/社員登用あり/制服貸与/社員割引あり/交通費支給/昇給あり
																				<br>
																				<br> 【受動喫煙対策について】
																				<br>店舗内は原則として全面禁煙となっております。
																				<br>休憩時間に喫煙される方は、勤務先の規則をご確認ください。
																				<br>
																				<br> 【中途採用比率】
																				<br>
																				<ul>
																					<li>2020年2月期(2019年3月~2020年2月)
																					</li>
																				</ul> 44%
																				<br>
																				<ul>
																					<li>2021年2月期(2020年3月~2021年2月)
																					</li>
																				</ul> 26%
																				<br>
																				<ul>
																					<li>2022年2月期(2021年3月~2022年2月)
																					</li>
																				</ul> 40%
																				<br>
																				<br> 【正社員登用制度あり】
																				<br>パルでは年2回(2月と8月)のタイミングで積極的に正社員登用を行っていますので正社員を目指す事も可能です。
																				<br>目標の達成度や業務習熟度などを日ごろコミュニケーションをとっている身近な上司が評価し正社員に推薦します。
																				<br>6か月以上で期間に定めは無く実力次第となります。
																				<br>
																				<br>
																				<b>【待遇例:</b>アルバイト期間6ケ月以上の後、正社員登用の場合】
																				<br>
																				<b>月額給与:</b>220,000円~　※残業代別途支給
																				<br>
																				<b>登用時　22歳以上　220,000円　20歳以上22歳未満の方:</b>213,000円　20歳未満の方:202,500円
																				<br>賞与年2回(7月・12月)
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				応募方法</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				応募ボタンよりご応募ください。</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				応募後のプロセス</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				応募の際にご入力いただきました情報にて、一次選考を行ないます。
																				登録情報はできる限り詳しくご記入頂くようお願いいたします。
																				<br><br>
																				【ご応募完了後】
																				<br>7日以内にPAL
																				GROUP採用担当からメールかお電話でご連絡をさせて頂きます。
																				<br>迷惑メールなどの設定をされている場合は@palgroup.co.jp　及び　@entrypocket.jpからのメールが受信できるよう設定をお願い致します。
																				<br><br>
																				【WEBでのご応募が難しい方】
																				<br>TEL　03-5778-0103までご連絡ください。
																				<br>営業時間　9:30~18:30 【平日のみ】
																			</div>
																		</div>
																	</div>
																	<div class="icl-u-borderTop css-kyg8or eu4oa1w0">
																		<div class="css-kyg8or eu4oa1w0">
																			<div
																				class="icl-u-textBold icl-u-xs-mt--md css-kyg8or eu4oa1w0">
																				所在地</div>
																			<div
																				class="icl-u-xs-my--sm css-1pbd3f3 eu4oa1w0">
																				大阪府 大阪市北区 芝田町1-1-3 阪急三番街　B1</div>
																		</div>
																	</div>
																</div>
															</div>
															<div id="belowFullJobDescription"
																class="mosaic mosaic-empty-zone"></div>
														</div>
														<div class="jobsearch-JobTab-content css-1fxabfd eu4oa1w0">
															<div id="belowJobDescription"
																class="mosaic mosaic-empty-zone"></div>
															<div
																class="jobsearch-JobMetadataFooter css-1s84a6q eu4oa1w0">
																<div class="css-1axw7mm eu4oa1w0">株式会社パル</div>
																<div>7日前</div>
																<div id="mosaic-provider-reportcontent"
																	class="mosaic mosaic-provider-reportcontent"
																	style="--mosaic-placeholder-width: 0; --mosaic-placeholder-height: 0;">
																	<div class="mosaic-reportcontent-wrapper button">
																		<button
																			class="mosaic-reportcontent-button desktop css-16q8vsx e8ju0x51"><span
																				class="mosaic-reportcontent-button-icon"></span>問題を報告する</button>
																		<div class="mosaic-reportcontent-content">
																		</div>
																	</div>
																</div>
																<div class="css-1tz4ej1 eu4oa1w0">
																	<font style="vertical-align: inherit;">
																		<font style="vertical-align: inherit;">
																			Indeed는 구직자에게 돈을 요구하지 않습니다. </font>
																		<font style="vertical-align: inherit;">의심스러운
																			구인이나 메일 등이 있었을 경우는 「문제를 보고」로부터 보고해 주세요.
																		</font>
																	</font><a
																		href="https://support.indeed.com/hc/ja/articles/216354123">
																		<font style="vertical-align: inherit;">
																			<font style="vertical-align: inherit;">
																				안전한 직업 검색을 위한 가이드라인</font>
																		</font>
																	</a>
																</div>
															</div>
														</div>
													</div>
													<div id="successfullySignedInModal"></div>
												</div>
											</div>
											<div class="jobsearch-ViewJobLayout-segment icl-u-xs-hide">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">kr_default</font>
												</font>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><button class="visible-on-focus-only bottom css-toliiu eu4oa1w0">
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">Return to Search Result</font>
						</font>
					</button>
				</div>
			</div>
			<!-- 오른쪽 데이터 미리보기 영역 -->

		</div>
		<div id="mosaic-belowPageContent" class="mosaic-zone"></div>
		</div>

		<!--====게시판====-->

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

		<div data-include-path="../senicare_sub_footer.jsp"></div>
		<!-- End footer Area -->

</body>

</html>