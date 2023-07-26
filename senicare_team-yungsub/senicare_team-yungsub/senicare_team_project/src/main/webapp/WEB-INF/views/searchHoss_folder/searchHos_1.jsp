<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="../img/favicon.png" type="image/png">
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
<link rel="stylesheet" href="../css/responsive.css">
<link rel="stylesheet" href="../css/style_jiin.css">
<link rel="stylesheet" href="../css/style_ys.css">
<link rel="stylesheet" href="../css/style_ys_map.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
					<h2>내 주변 의료기관 찾기</h2>
					<div class="page_link">
						<a href="../senicare_main">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="searchHos_1">클릭하시면 [ 내 주변 의료기관 찾기 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->
	<!--================Contact Area =================-->
	<section class="contact_area p_120">
		<div class="container">
			<div id="searchList" style="width: 30%; float: left; position: relative; top: 0px">
				<form name="searchData" method="get" action="../searchData" class="form-inline">
					<input type="text" name="hosnm" id="hosnm" style="width: 270px; height: 35px;">
					<button type="button" onclick="searchBtn(hosnm)" class="btn btn-info">검색</button>
				</form>
				<button type="button" onclick="hosBtn()" class="btn btn-info">병원</button>
				<button type="button" onclick="pharmBtn()" class="btn btn-info">약국</button>
				<button type="button" onclick="nursBtn()" class="btn btn-info">요양병원</button>
				<div style="height: 500px; overflow: auto; margin: 10px auto">
					<table style="border: 1px solid black;">
						<tbody id="hosList">
						</tbody>
					</table>
				</div>
			</div>
			<div id="mapBox" class="mapBox" style="width: 70%; height: 560px"></div>
	</section>
	<!--================Contact Area =================-->

	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
	<!-- End footer Area -->

	<!--================Contact Success and Error message Area =================-->
	<div id="success" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i class="fa fa-close"></i>
					</button>
					<h2>Thank you</h2>
					<p>Your message is successfully sent...</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Modals error -->

	<div id="error" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i class="fa fa-close"></i>
					</button>
					<h2>Sorry !</h2>
					<p>Something went wrong</p>
				</div>
			</div>
		</div>
	</div>
	<div id="map"></div>



	<!--==================== 여기서부터 ====================-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8704aeb10138e02bdeb9cb9fef81ab9"></script>
	<script>
		// 전체 불러오기
		allData();
		function allData() {
			alert("전체 데이터 받아오기");
			$.ajax({
				url : "../allData",
				type : "get",
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						let htmlData = "";
						htmlData += "<tr><td>--------------------</td></tr>";
						htmlData += "<tr><th><a onclick='clickHere("
								+ data[i].hno
								+ ")' style='color:orange; cursor:pointer'>"
								+ data[i].hosnm + "</a></th></tr>";
						htmlData += "<tr><td>진료과목: " + data[i].sbjnm
								+ "</td></tr>";
						htmlData += "<tr><td>주소: " + data[i].addr
								+ "</td></tr>";
						htmlData += "<tr><td onclick='test()'>전화번호: "
								+ data[i].tel + "</td></tr>";
						$("#hosList").append(htmlData);
					}

					// 데이터 전체 호출
					allBtn(data);
				},
				error : function(data) {
					alert("실패");
				}
			});// ajax
		}// allData

		/*========== 데이터 전체 호출하는 함수 ==========*/
		function allBtn(data) {
			//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
			if (navigator.geolocation) {
				// GeoLocation을 이용해서 접속 위치를 얻어옵니다
				navigator.geolocation
						.getCurrentPosition(function(position) {
							var lat = position.coords.latitude, // 위도
							lon = position.coords.longitude; // 경도

							var mapContainer = document
									.getElementById('mapBox'), // 지도를 표시할 div  
							mapOption = {
								center : new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
								level : 5
							// 지도의 확대 레벨
							};
							var map = new kakao.maps.Map(mapContainer,
									mapOption); // 지도를 생성합니다
							// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
							var mapTypeControl = new kakao.maps.MapTypeControl();
							// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
							// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
							map.addControl(mapTypeControl,
									kakao.maps.ControlPosition.TOPRIGHT);
							// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
							var zoomControl = new kakao.maps.ZoomControl();
							map.addControl(zoomControl,
									kakao.maps.ControlPosition.RIGHT);
							// 마커를 표시할 위치와 title 객체 배열입니다 
							var positions = [];
							for (var i = 0; i < data.length; i++) {
								positions
										.push({
											title : '<div style="padding:5px;">'
													+ data[i].hosnm
													+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
											latlng : new kakao.maps.LatLng(
													data[i].xpos, data[i].ypos)
										})
							}
							// 마커 이미지의 이미지 주소입니다
							var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
							for (var i = 0; i < positions.length; i++) {
								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new kakao.maps.Size(24, 35);
								// 마커 이미지를 생성합니다    
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize);
								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : positions[i].latlng,
									image : markerImage
								});

								var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
								// 마커에 표시할 인포윈도우를 생성합니다 
								var infowindow = new kakao.maps.InfoWindow({
									content : positions[i].title, // 인포윈도우에 표시할 내용
									removable : iwRemoveable
								});
								// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
								// 이벤트 리스너로는 클로저를 만들어 등록합니다 
								// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								kakao.maps.event.addListener(marker, 'click',
										makeOverListener(map, marker,
												infowindow));
							}// for

							/* // '내 위치' 마커 이미지의 이미지 주소입니다
							var myImageSrc = "https://icons.veryicon.com/png/o/leisure/tourism-icon/location-39.png"; 
							var myImageSize = new kakao.maps.Size(24, 35); 
							// '내 위치' 마커 이미지를 생성합니다    
							var myMarkerImage = new kakao.maps.MarkerImage(myImageSrc, myImageSize); */
							// '내 위치' 마커가 표시될 위치입니다 
							var myMarkerPosition = new kakao.maps.LatLng(lat,
									lon);
							// '내 위치' 마커를 생성합니다
							var myMarker = new kakao.maps.Marker({
								position : myMarkerPosition,
							//image: myMarkerImage
							});
							// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
							myMarker.setMap(map);

							// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
							function makeOverListener(map, marker, infowindow) {
								return function() {
									infowindow.open(map, marker);
								};
							}
							// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
							function makeOutListener(infowindow) {
								return function() {
									infowindow.close();
								};
							}
						});// 접속위치 (lat, lng)
			}// 위치정보 if문
		}// allBtn()

		/*========== 1개 데이터 호출하는 함수 ==========*/
		function clickHere(hno) {
			object.clickHere(hno);
		}

		// 함수 정의
		var object = {
			// clickHere
			clickHere : function clickHere(hno) {
				$("#mapBox").empty();// 기존 지도 비우기

				$
						.ajax({
							url : "../allData",// 데이터 전체 가져오기
							type : "get",
							async : false,
							success : function(data) {
								var allData = data;
								// 전체좌표배열
								var m = [];
								for (var i = 0; i < data.length; i++) {
									m.push([ data[i].xpos, data[i].ypos ]);
								}

								$
										.ajax({
											url : "../oneData",// 1개 데이터 가져오기
											type : "get",
											data : {
												"hno" : hno
											},
											async : false,
											success : function(data) {

												// 부드럽게 이동 구현 아직 안됨;;;

												// GeoLocation을 이용해서 접속 위치를 얻어옵니다
												navigator.geolocation
														.getCurrentPosition(function(
																position) {
															var lat = position.coords.latitude, // 위도
															lon = position.coords.longitude; // 경도
															// '선택한 장소'의 위치 
															var latOne = data[0].xpos, // 위도
															lonOne = data[0].ypos; // 경도
															var mapContainer = document
																	.getElementById('mapBox'), // 지도를 표시할 div  
															mapOption = {
																center : new kakao.maps.LatLng(
																		latOne,
																		lonOne), // '선택한 장소'로 지도의 중심좌표 옮기기
																level : 3
															// 지도의 확대 레벨
															};
															var map = new kakao.maps.Map(
																	mapContainer,
																	mapOption); // 지도를 생성합니다
															// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
															var mapTypeControl = new kakao.maps.MapTypeControl();
															// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
															// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
															map
																	.addControl(
																			mapTypeControl,
																			kakao.maps.ControlPosition.TOPRIGHT);
															// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
															var zoomControl = new kakao.maps.ZoomControl();
															map
																	.addControl(
																			zoomControl,
																			kakao.maps.ControlPosition.RIGHT);
															// 전체 데이터의 마커를 표시할 위치와 title 객체 배열입니다 
															var positions = [];
															for (var i = 0; i < allData.length; i++) {
																positions
																		.push({
																			title : '<div style="padding:5px;">'
																					+ allData[i].hosnm
																					+ '<br><a href="https://map.kakao.com/link/to/'+allData[i].hosnm+','+allData[i].xpos+','+allData[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
																			latlng : new kakao.maps.LatLng(
																					allData[i].xpos,
																					allData[i].ypos)
																		})
															}// for

															// '선택 위치' 마커 이미지의 이미지 주소입니다
															var imageSrcOne = "https://icons.veryicon.com/png/o/miscellaneous/multicolor-3/location-point-1.png";
															// '선택 위치' 마커 이미지의 이미지 크기 입니다
															var imageSizeOne = new kakao.maps.Size(
																	70, 70);
															// '선택 위치' 마커 이미지를 생성합니다    
															var markerImageOne = new kakao.maps.MarkerImage(
																	imageSrcOne,
																	imageSizeOne);
															// '선택 위치' 마커가 표시될 위치입니다 
															var positionOne = new kakao.maps.LatLng(
																	latOne,
																	lonOne);
															// '선택 위치' 마커를 생성합니다
															var markerOne = new kakao.maps.Marker(
																	{
																		map : map, // 마커를 표시할 지도
																		position : positionOne,
																		image : markerImageOne,
																	});

															// '전체' 마커 이미지의 이미지 주소입니다
															var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
															for (var i = 0; i < positions.length; i++) {
																// 마커 이미지의 이미지 크기 입니다
																var imageSize = new kakao.maps.Size(
																		24, 35);
																// 마커 이미지를 생성합니다    
																var markerImage = new kakao.maps.MarkerImage(
																		imageSrc,
																		imageSize);
																// 마커를 생성합니다
																var marker = new kakao.maps.Marker(
																		{
																			map : map, // 마커를 표시할 지도
																			position : positions[i].latlng,
																			image : markerImage,
																		});
																var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
																// 마커에 표시할 인포윈도우를 생성합니다 
																var infowindow = new kakao.maps.InfoWindow(
																		{
																			content : positions[i].title, // 인포윈도우에 표시할 내용
																			removable : iwRemoveable
																		});
																// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
																// 이벤트 리스너로는 클로저를 만들어 등록합니다 
																// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
																kakao.maps.event
																		.addListener(
																				marker,
																				'click',
																				makeOverListener(
																						map,
																						marker,
																						infowindow));
															}// for

															// '내 위치' 마커가 표시될 위치입니다 
															var myMarkerPosition = new kakao.maps.LatLng(
																	lat, lon);
															// '내 위치' 마커를 생성합니다
															var myMarker = new kakao.maps.Marker(
																	{
																		position : myMarkerPosition,
																	//image: myMarkerImage
																	});
															// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
															myMarker
																	.setMap(map);

															// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
															function makeOverListener(
																	map,
																	marker,
																	infowindow) {
																return function() {
																	infowindow
																			.open(
																					map,
																					marker);
																};
															}
															// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
															function makeOutListener(
																	infowindow) {
																return function() {
																	infowindow
																			.close();
																};
															}
														});// 위치정보
											},
											error : function() {
												alert("실패");
											}
										});// ajax 데이터 1개
							}// success 전체 데이터
						});// ajax 전체 데이터
			}// clickHere
		}

		/* -------------------- 병원버튼 --------------------  */
		function hosBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("병원 데이터 받아오기");
						$
								.ajax({
									url : "../hosBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr><td>--------------------</td></tr>";
											htmlData += "<tr><th><a onclick='clickHere("
													+ data[i].hno
													+ ")' style='color:orange; cursor:pointer'>"
													+ data[i].hosnm
													+ "</a></th></tr>";
											htmlData += "<tr><td>진료과목: "
													+ data[i].sbjnm
													+ "</td></tr>";
											htmlData += "<tr><td>주소: "
													+ data[i].addr
													+ "</td></tr>";
											htmlData += "<tr><td onclick='test()'>전화번호: "
													+ data[i].tel
													+ "</td></tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/business/wb-legend-of-shanghai-ocean-bearing-body/wb_-hospital.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													35, 35);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											
											
											// '내 위치' 마커가 표시될 위치입니다 
											var myMarkerPosition = new kakao.maps.LatLng(lat,
													lon);
											// '내 위치' 마커를 생성합니다
											var myMarker = new kakao.maps.Marker({
												position : myMarkerPosition,
											//image: myMarkerImage
											});
											// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
											myMarker.setMap(map);
											
											
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
											return function() {
												infowindow.open(map, marker);
											};
										}
										// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
										function makeOutListener(infowindow) {
											return function() {
												infowindow.close();
											};
										}// for문
									},
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn

		/* -------------------- 약국버튼 --------------------  */
		function pharmBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("약국 데이터 받아오기");
						$
								.ajax({
									url : "../pharmBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr><td>--------------------</td></tr>";
											htmlData += "<tr><th><a onclick='clickHere("
													+ data[i].hno
													+ ")' style='color:orange; cursor:pointer'>"
													+ data[i].hosnm
													+ "</a></th></tr>";
											htmlData += "<tr><td>주소: "
													+ data[i].addr
													+ "</td></tr>";
											htmlData += "<tr><td onclick='test()'>전화번호: "
													+ data[i].tel
													+ "</td></tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/healthcate-medical/mental-health-department-icon-library/pharmacy-department.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													40, 40);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											
											// '내 위치' 마커가 표시될 위치입니다 
											var myMarkerPosition = new kakao.maps.LatLng(lat,
													lon);
											// '내 위치' 마커를 생성합니다
											var myMarker = new kakao.maps.Marker({
												position : myMarkerPosition,
											//image: myMarkerImage
											});
											// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
											myMarker.setMap(map);
											
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
											return function() {
												infowindow.open(map, marker);
											};
										}
										// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
										function makeOutListener(infowindow) {
											return function() {
												infowindow.close();
											};
										}// for문
									},
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn

		/* -------------------- 요양병원버튼 --------------------  */
		function nursBtn() {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("요양병원 데이터 받아오기");
						$
								.ajax({
									url : "../nursBtn",
									type : "get",
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr><td>--------------------</td></tr>";
											htmlData += "<tr><th><a onclick='clickHere("
													+ data[i].hno
													+ ")' style='color:orange; cursor:pointer'>"
													+ data[i].hosnm
													+ "</a></th></tr>";
											htmlData += "<tr><td>진료과목: "
													+ data[i].sbjnm
													+ "</td></tr>";
											htmlData += "<tr><td>주소: "
													+ data[i].addr
													+ "</td></tr>";
											htmlData += "<tr><td onclick='test()'>전화번호: "
													+ data[i].tel
													+ "</td></tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/business/service-icon-1/s_-provide-for-the-aged.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													40, 40);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											
											// '내 위치' 마커가 표시될 위치입니다 
											var myMarkerPosition = new kakao.maps.LatLng(lat,
													lon);
											// '내 위치' 마커를 생성합니다
											var myMarker = new kakao.maps.Marker({
												position : myMarkerPosition,
											//image: myMarkerImage
											});
											// '내 위치' 마커가 지도 위에 표시되도록 설정합니다
											myMarker.setMap(map);
											
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
											return function() {
												infowindow.open(map, marker);
											};
										}
										// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
										function makeOutListener(infowindow) {
											return function() {
												infowindow.close();
											};
										}// for문
									},
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn
		
		
		/* -------------------- 검색버튼 --------------------  */
		function searchBtn(hosnm) {
			// 이전에 표시된 데이터 초기화
			$("#hosList").empty();
			$("#mapBox").empty();

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation
					.getCurrentPosition(function(position) {

						var lat = position.coords.latitude, // 위도
						lon = position.coords.longitude; // 경도

						alert("검색 데이터 받아오기");
						$
								.ajax({
									url : "../searchData",
									type : "get",
									data : {"hosnm":hosnm},
									success : function(data) {
										console.log(data);
										for (var i = 0; i < data.length; i++) {
											let htmlData = "";
											htmlData += "<tr><td>--------------------</td></tr>";
											htmlData += "<tr><th><a onclick='clickHere("
													+ data[i].hno
													+ ")' style='color:orange; cursor:pointer'>"
													+ data[i].hosnm
													+ "</a></th></tr>";
											htmlData += "<tr><td>주소: "
													+ data[i].addr
													+ "</td></tr>";
											htmlData += "<tr><td onclick='test()'>전화번호: "
													+ data[i].tel
													+ "</td></tr>";
											$("#hosList").append(htmlData);
										}
										var mapContainer = document
												.getElementById('mapBox'), // 지도를 표시할 div  
										mapOption = {
											center : new kakao.maps.LatLng(lat,
													lon), // 지도의 중심좌표
											level : 5
										// 지도의 확대 레벨
										};
										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다
										// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
										var mapTypeControl = new kakao.maps.MapTypeControl();
										// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
										// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
										map
												.addControl(
														mapTypeControl,
														kakao.maps.ControlPosition.TOPRIGHT);
										// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
										var zoomControl = new kakao.maps.ZoomControl();
										map
												.addControl(
														zoomControl,
														kakao.maps.ControlPosition.RIGHT);
										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [];
										for (var i = 0; i < data.length; i++) {
											positions
													.push({
														title : '<div style="padding:5px;">'
																+ data[i].hosnm
																+ '<br><a href="https://map.kakao.com/link/to/'+data[i].hosnm+','+data[i].xpos+','+data[i].ypos+'" style="color:blue" target="_blank">길찾기</a></div>',
														latlng : new kakao.maps.LatLng(
																data[i].xpos,
																data[i].ypos)
													})
										}
										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "https://icons.veryicon.com/png/o/healthcate-medical/mental-health-department-icon-library/pharmacy-department.png";
										for (var i = 0; i < positions.length; i++) {
											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new kakao.maps.Size(
													40, 40);
											// 마커 이미지를 생성합니다    
											var markerImage = new kakao.maps.MarkerImage(
													imageSrc, imageSize);
											// 마커를 생성합니다
											var marker = new kakao.maps.Marker(
													{
														map : map, // 마커를 표시할 지도
														position : positions[i].latlng,
														image : markerImage,
													});
											var iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
											// 마커에 표시할 인포윈도우를 생성합니다 
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : positions[i].title, // 인포윈도우에 표시할 내용
														removable : iwRemoveable
													});
											// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
											// 이벤트 리스너로는 클로저를 만들어 등록합니다 
											// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
											kakao.maps.event
													.addListener(marker,
															'click',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
										}
										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
											return function() {
												infowindow.open(map, marker);
											};
										}
										// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
										function makeOutListener(infowindow) {
											return function() {
												infowindow.close();
											};
										}// for문
									},
									error : function(data) {
										alert("실패");
									}
								});// ajax
					});// 위치정보
		}// hosBtn
	</script>
	<!--================End Contact Success and Error message Area =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/isotope/isotope-min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
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