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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
					<h2>자가진단 검사결과</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="health_2">클릭하시면 [ 자가진단 검사결과 ] 페이지를 새로 고침합니다.</a>
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
						치매, 퇴행성 관절염, 고혈압, 당뇨병, 뇌혈관질환을 간단하게 진단합니다.<br>본 진단은 단순 참고용으로 의학적인 진단을 대체할 수 없습니다.
					</p>
				</div>
			</div>

			<!-- 스타일 적용! 처음에 디스플레이 안.보.이.게 -->
			<style>
.demenTest {
	display: none;
}

.arthTest {
	display: none;
}

.hyperTest {
	display: none;
}

.diabetTest {
	display: none;
}

.cerebroTest {
	display: none;
}
</style>

			<script>
	// 디스플레이 숨기고 보여주는 함수
	function selectDemen() {
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".demenTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".demenTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectArth() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".arthTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectHyper() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".hyperTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectDiabet() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".diabetTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
	}
	function selectCerebro() {
		$(".demenTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".arthTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".hyperTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".diabetTest").css("display","none"); /* 디스플레이를 안.보.이.게! */
		$(".cerebroTest").css("display","block"); /* 디스플레이를 보.이.게! */
		// 스크롤 이동
		var offset = $(".cerebroTest").offset();
        $('html, body').animate({scrollTop : offset.top-300}, 400);
        
   		// 결과창 숨겨놓기
    	$(document).ready(function(){
    		$(".demenResult").hide();
    	})
    	$(document).ready(function(){
    		$(".arthResult").hide();
    	})
    	$(document).ready(function(){
    		$(".hyperResult").hide();
    	})
    	$(document).ready(function(){
    		$(".diabetResult").hide();
    	})
    	$(document).ready(function(){
    		$(".cerebroResult").hide();
    	})        
	}
</script>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/demen.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectDemen()">
							<p>검사결과 보기 >></p>
							<h4>치매</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/arth.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectArth()">
							<p>검사결과 보기 >></p>
							<h4>퇴행성 관절염</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/hyper.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectHyper()">
							<p>검사결과 보기 >></p>
							<h4>고혈압</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/diabet.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectDiabet()">
							<p>검사결과 보기 >></p>
							<h4>당뇨병</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-team mb-50">
					<div class="thumb">
						<img class="img-fluid" src="../img/cerebro.png" alt="">
						<div class="align-items-end justify-content-center d-flex" onclick="selectCerebro()">
							<p>검사결과 보기 >></p>
							<h4>뇌혈관질환</h4>
						</div>
					</div>
				</div>
			</div>

			<!--========== 치매 자가진단 ==========-->
			<form action="../healths_folder/health_2" name="demenTest" method="post">
				<div class="demenTest">
					<h3 class="c-tit01">내 기억력 점수는 몇 점 일까?</h3>
					<h4 class="c-tit02">치매 자가진단 검사결과</h4>
					<div>
						<canvas id="demenChart"></canvas>
					</div>
					<div id="submitDemenBtn">
						<a onclick="demenSum()" class="submitBtn">
							<span>제출</span>
						</a>
					</div>
				</div>
			</form>



		</div>
	</section>
	<!-- End team Area -->

	<!-- start footer Area -->
	<div data-include-path="../senicare_sub_footer"></div>
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


	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
  		  type: 'line',
  		  data: {
  		      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
  		      datasets: [{
  		        label: 'OO 진단검사 결과 ',
  		        data: [12, 19, 3, 5, 2, 3],
  		        borderColor: '#FF6384',
  		    	backgroundColor: '#9BD0F5',
  		    	pointStyle: 'circle',
  		   		pointRadius: 10,
  		      	pointHoverRadius: 15
  		      }]
  		    },
  		  options: {
  		    responsive: true,
  		    plugins: {
  		      title: {
  		        display: true,
  		        text: (ctx) => 'Point Style: ' + ctx.chart.data.datasets[0].pointStyle,
  		      }
  		    }
  		  }
  		});
  
</script>

<!-- subfooter -->
<%@ include file="../senicare_main_footer.jsp" %>
<!-- subfooter -->

</body>

</html>