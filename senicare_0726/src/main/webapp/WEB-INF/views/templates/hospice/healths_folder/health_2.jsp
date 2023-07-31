<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 나의 건강정보 결과 페이지 2023.07.25 시작 (영섭) -->
<!-- 나의 건강정보 결과 페이지 2023.07.27 완료 (영섭) -->
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="../img/favicon.png" type="image/png">
<title>Hospice Medical</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../vendors/linericon/style.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" shref="../vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="../vendors/animate-css/animate.css">
<link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
<!-- main css -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/responsive.css">
<link rel="stylesheet" href="../css/style_jiin.css">
<link rel="stylesheet" href="../css/style_ys.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
					<h2>자가진단 검사결과</h2>
					<div class="page_link">
						<a href="/">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="health_2?auth_id=${sessionScope.id}">클릭하시면 [ 자가진단 검사결과 ] 페이지를 새로 고침합니다.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start team Area -->
	<section class="team-area section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>노인성 5대질환 자가진단 검사결과</h1>
					<p>
						치매, 퇴행성 관절염, 고혈압, 당뇨병, 뇌혈관질환을 간단하게 진단합니다.<br>본 진단은 단순 참고용으로
						의학적인 진단을 대체할 수 없습니다.
					</p>
				</div>
			</div>

			<!-- 스타일 적용! 처음에 디스플레이 안.보.이.게 -->

			<script>
			
			</script>
			<div style="display: flex; justify-content: space-around;">
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
							<!-- <div class="thumb" style="width:70%"> -->
								<img class="img-fluid" src="../img/demen.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectDemen()">
								<!-- style="width: 120%; height: 120%; top: -15px; left: -15px"> -->
									<p>자가진단 결과보기 >></p>
									<h4>치매</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/arth.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectArth()">
									<!-- style="width: 120%; height: 120%; top: -15px; left: -15px"> -->
									<p>자가진단 결과보기 >></p>
									<h4>퇴행성 관절염</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/hyper.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectHyper()">
								<!-- style="width: 120%; height: 120%; top: -15px; left: -15px"> -->
									<p>자가진단 결과보기 >></p>
									<h4>고혈압</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/diabet.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectDiabet()">
								<!-- style="width: 120%; height: 120%; top: -15px; left: -15px"> -->
									<p>자가진단 결과보기 >></p>
									<h4>당뇨병</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/cerebro.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectCerebro()">
								<!-- style="width: 120%; height: 120%; top: -15px; left: -15px"> -->
									<p>자가진단 결과보기 >></p>
									<h4>뇌혈관질환</h4>
								</div>
							</div>
						</div>
					</div>


			<!--========== 치매 자가진단 ==========-->
			<div class="demenTest">
				<h3 class="c-tit01">내 기억력 점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">치매 자가진단 검사결과</h4>
				<span style="display:inline-block; width:600px;">
					<canvas id="demenChart"></canvas>
				</span>
				<span style="display:inline-block; width:500px;">	
					<canvas id="demenPolar"></canvas>
				</span>
				<h4 class="c-tit02">치매 예방 및 관리에 도움을 주는 운동과 식단</h4>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/uk3oKzjhMT4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/VMj0DzBbefU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			<!--========== 퇴행성 관절염 자가진단 ==========-->
			<div class="arthTest">
				<h3 class="c-tit01">내 관절점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">퇴행성 관절염 자가진단</h4>
				<span style="display:inline-block; width:600px;">
					<canvas id="arthChart"></canvas>
				</span>
				<span style="display:inline-block; width:500px;">	
					<canvas id="arthPolar"></canvas>
				</span>
				<h4 class="c-tit02">퇴행성 관절염 예방 및 관리에 도움을 주는 운동과 식단</h4>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/MIx329dU8ug" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/bM0hJWePWfs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				
			</div>
			<!--========== 고혈압 자가진단 ==========-->
			<div class="hyperTest">
				<h3 class="c-tit01">내 혈압점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">고혈압 자가진단</h4>
				<span style="display:inline-block; width:600px;">
					<canvas id="hyperChart"></canvas>
				</span>
				<span style="display:inline-block; width:500px;">	
					<canvas id="hyperPolar"></canvas>
				</span>
				<h4 class="c-tit02">고혈압 예방 및 관리에 도움을 주는 운동과 식단</h4>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/H8D77McC8Uc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/LzHMy2ScdhA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				
			</div>
			<!--========== 당뇨병 자가진단 ==========-->
			<div class="diabetTest">
				<h3 class="c-tit01">내 혈당점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">당뇨병 자가진단</h4>
				<span style="display:inline-block; width:600px;">
					<canvas id="diabetChart"></canvas>
				</span>
				<span style="display:inline-block; width:500px;">	
					<canvas id="diabetPolar"></canvas>
				</span>
				<h4 class="c-tit02">당뇨병 예방 및 관리에 도움을 주는 운동과 식단</h4>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/tj0FuDZ3Dpg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/BFeF_5NywSs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				
			</div>
			<!--========== 뇌혈관질환 자가진단 ==========-->
			<div class="cerebroTest">
				<h3 class="c-tit01">내 뇌혈관점수는 몇 점 일까?</h3>
				<h4 class="c-tit02">뇌혈관질환 자가진단</h4>
				<span style="display:inline-block; width:600px;">
					<canvas id="cerebroChart"></canvas>
				</span>
				<span style="display:inline-block; width:500px;">	
					<canvas id="cerebroPolar"></canvas>
				</span>
				<h4 class="c-tit02">뇌혈관질환 예방 및 관리에 도움을 주는 운동과 식단</h4>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/Q4hKh6dSScw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
				<iframe width="550" height="315" style="margin:0 1.5px;"src="https://www.youtube-nocookie.com/embed/iUJSO5CMJ3E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
		</div>
	</section>
	
	<!-- 누적그래프 & 종합그래프 그리는 스크립트 -->
	<script>
		function generateGradient(ctx, startColor, middleColor, endColor) {
			const gradient = ctx.createLinearGradient(0, 0, 0,
					ctx.canvas.height);
			gradient.addColorStop(0, startColor);
			gradient.addColorStop(0.5, middleColor);
			gradient.addColorStop(1, endColor);
			return gradient;
		}
		
		function drawChart(disNm) {
			
			// Chart객체 리셋해야 다시 차트를 그릴 수 있음!!!
			let chartStatus = Chart.getChart(disNm+"Chart"); // <canvas> id
			if (chartStatus != undefined) { // 만약 myChart 이미 있으면
			  chartStatus.destroy(); // 객체선언을 삭제
			} 

			let chart_labels = []; // 10개 초과
			let chart_datas = []; // 10개 초과
			let chart_label = []; // 10개 이하
			let chart_data = []; // 10개 이하
			$.ajax({	
				url : "/health/testList",
				type : "post",
				data : {"auth_id" : '${sessionScope.id}'},
				success : function(data) {
					console.log(data);
					
					var maxLength;
					var label;
	
					if (disNm == "demen") {
						// 일단 데이터 담아서
						chart_labels = data.demenDateList;
						chart_datas = data.demenList;
						maxLength = 14;
						label = "치매 자가진단 결과";
					}
					if (disNm == "arth") {
						// 일단 데이터 담아서
						chart_labels = data.arthDateList;
						chart_datas = data.arthList;
						maxLength = 10;
						label = "퇴행성 관절염 자가진단 결과";
					}
					if (disNm == "hyper") {
						// 일단 데이터 담아서
						chart_labels = data.hyperDateList;
						chart_datas = data.hyperList;
						maxLength = 17;
						label = "고혈압 자가진단 결과";
					}
					if (disNm == "diabet") {
						// 일단 데이터 담아서
						chart_labels = data.diabetDateList;
						chart_datas = data.diabetList;
						maxLength = 9;
						label = "당뇨병 자가진단 결과";
					}
					if (disNm == "cerebro") {
						// 일단 데이터 담아서
						chart_labels = data.cerebroDateList;
						chart_datas = data.cerebroList;
						maxLength = 10;
						label = "뇌혈관질환 자가진단 결과";
					}

					// x축 이름 10개 초과인지 비교
					if (chart_labels.length > 10) {
						var startIndex = chart_labels.length - 10;
						var endIndex = chart_labels.length;
						// 10개 이하로 자름
						for (var i = startIndex; i < endIndex; i++) {
							chart_label.push(chart_labels[i]);
						}
					} else {
						// 삼항식
						disNm == "demen" ? chart_label = data.demenDateList
						: disNm == "arth" ? chart_label = data.arthDateList
						: disNm == "hyper" ? chart_label = data.hyperDateList
						: disNm == "diabet" ? chart_label = data.diabetDateList
						: disNm == "cerebro" ? chart_label = data.cerebroDateList
						: chart_label = "ERROR";
					}

					// y축 값 10개 초과인지 비교
					if (chart_datas.length > 10) {
						var startIndex = chart_datas.length - 10;
						var endIndex = chart_datas.length;
						// 10개 이하로 자름
						for (var i = startIndex; i < endIndex; i++) {
							chart_data.push(chart_datas[i]);
						}
					} else {
						// 삼항식
						disNm == "demen" ? chart_data = data.demenList
						: disNm == "arth" ? chart_data = data.arthList
						: disNm == "hyper" ? chart_data = data.hyperList
						: disNm == "diabet" ? chart_data = data.diabetList
						: disNm == "cerebro" ? chart_data = data.cerebroList
						: chart_data = "404";
					}

					console.log(chart_label);
					console.log(chart_data);

					new Chart($("#" + disNm + "Chart"), {
						type : 'line',
						data : {
							labels : chart_label,
							datasets : [{
								label : label,
								data : chart_data,
								borderColor : function(context) {
									return generateGradient(context.chart.ctx,'#ff6384', '#ffcd56','#36a2eb')
								},
								backgroundColor : function(context) {
									return generateGradient(context.chart.ctx,'#ff6384', '#ffcd56', '#36a2eb')
								},
								pointStyle : 'circle',
								pointRadius : 5,
								pointHoverRadius : 15,
							}]
						},
						  options: {
							    responsive: true,
							    plugins: {
							    	legend: {
							        position: 'bottom',
							      },
							    	
							      	title: {
							        display: true,
							        text: '누적 자가진단 결과',
							        font: {
				                        size: 20
				                    }
							      	}
							    },
							    scales: {
							      	y: {
							        	beginAtZero: true, // y축이 0부터 시작하도록 설정
							        	max:maxLength+1 // 각 진단 항목별 최대값!
							      	}
							    }
						  	}
						});
					},
				error : function() {
					alert("실패");
				}
			});// ajax
		}// drawChart
		
		
		// 종합 그래프
		function drawAllchart(disNm) {
			
			// Chart객체 리셋해야 다시 차트를 그릴 수 있음!!!
			let chartStatus = Chart.getChart(disNm+"Polar"); // <canvas> id
			if (chartStatus != undefined) { // 만약 myChart 이미 있으면
			  chartStatus.destroy(); // 객체선언을 삭제
			} 
			
			$.ajax({	
				url : "/health/testList",
				type : "post",
				data : {"auth_id" : '${sessionScope.id}'},
				success : function(data) {
					console.log("종합:" , data.demenList[data.demenList.length-1]);
					const latestSC = [data.demenList[data.demenList.length-1]/14, data.arthList[data.arthList.length-1]/10, data.hyperList[data.hyperList.length-1]/17,
								data.diabetList[data.diabetList.length-1]/9, data.cerebroList[data.cerebroList.length-1]/8]
					new Chart($("#" + disNm + "Polar"), {
						type : 'polarArea',
						data : {
							  labels: ['치매', '퇴행성 관절염', '고혈압', '당뇨병', '뇌혈관질환'],
							  datasets: [
							    {
							      label: '위험도',
							      data: latestSC,
							      backgroundColor: [ "#ff6483", "#ff9f40", "#ffcd56", "#4cbfbf", "#36a1eb" ]
							    }
							  ]
							},
						options: {
						    responsive: true,
						    scales: {
						      r: {
						        pointLabels: {
						          display: true,
						          centerPointLabels: true,
						          font: {
						            size: 18
						          }
						        }
						      }
						    },
						    plugins: {
						      legend: {
						        position: 'bottom',
						      },
						      title: {
						        display: true,
						        text: '종합 위험도 (최대치: 1)',
						        font: {
			                        size: 20
			                    }
						      }
						    }
						  },
						});
				},
				error : function() {
					alert("실패");
				}
			});// ajax
		}// drawAllChart	
		
	</script>
	
	<!-- End team Area -->

	<!-- start footer Area -->
	<%@ include file="../senicare_sub_footer.jsp" %>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
	<script src="../js/health_2.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- 그래프 그리는 js 주소 -->
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