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
					<h2>자가진단검사</h2>
					<div class="page_link">
						<a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
						<a href="health_1">클릭하시면 [ 자가진단검사 ] 페이지를 새로 고침합니다.</a>
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
					<h1>노인성 5대질환 자가진단</h1>
					<p>
						치매, 퇴행성 관절염, 고혈압, 당뇨병, 뇌혈관질환을 간단하게 진단합니다.<br>본 진단은 단순 참고용으로 의학적인 진단을 대체할 수 없습니다.
					</p>
				</div>
			</div>
			<!-- Start Offered Services Area -->

			<!-- <section class="service_area section_gap1">
				<div class="container1">
					<div class="left-area">
						사이드바 영역 카테고리 메뉴
						<div data-include-path="/healths_folder/health_list"></div>
						사이드바 영역 카테고리 메뉴
					</div> -->

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


					<div class="row justify-content-center d-flex align-items-center">
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/demen.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectDemen()">
									<p>자가진단 하러가기 >></p>
									<h4>치매</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/arth.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectArth()">
									<p>자가진단 하러가기 >></p>
									<h4>퇴행성 관절염</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/hyper.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectHyper()">
									<p>자가진단 하러가기 >></p>
									<h4>고혈압</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/diabet.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectDiabet()">
									<p>자가진단 하러가기 >></p>
									<h4>당뇨병</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 single-team mb-50">
							<div class="thumb">
								<img class="img-fluid" src="../img/cerebro.png" alt="">
								<div class="align-items-end justify-content-center d-flex" onclick="selectCerebro()">
									<p>자가진단 하러가기 >></p>
									<h4>뇌혈관질환</h4>
								</div>
							</div>
						</div>
					</div>

					<!--========== 치매 자가진단 ==========-->
					<form action="../healths_folder/health_2" name="demenTest" method="post">
						<div class="demenTest">
							<h3 class="c-tit01">내 기억력 점수는 몇 점 일까?</h3>
							<h4 class="c-tit02">치매 자가진단</h4>
							<table class="tbl-type02" style="width: 100%">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 70%">
									<col style="width: 10%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문항</th>
										<th scope="col">예</th>
										<th scope="col">아니오</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">01</th>
										<td class="left">자신의 기억력에 문제가 있다고 생각한다.</td>
										<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
										<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
									</tr>
									<tr>
										<th scope="row">02</th>
										<td class="left">자신의 기억력이 10년 전보다 나빠졌다고 생각한다.</td>
										<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
										<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
									</tr>
									<tr>
										<th scope="row">03</th>
										<td class="left">자신의 기억력이 같은 또래의 다른 사람들에 비해 나쁘다고 생각한다.</td>
										<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
										<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
									</tr>
									<tr>
										<th scope="row">04</th>
										<td class="left">기억력 저하로 인해 일상생활에 불편이 느껴진다.</td>
										<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
										<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
									</tr>
									<tr>
										<th scope="row">05</th>
										<td class="left">최근에 일어난 일을 기억하는 것이 어렵다.</td>
										<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
										<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
									</tr>
									<tr>
										<th scope="row">06</th>
										<td class="left">며칠 전에 나눈 대화 내용을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
										<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
									</tr>
									<tr>
										<th scope="row">07</th>
										<td class="left">며칠 전에 한 약속을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
										<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
									</tr>
									<tr>
										<th scope="row">08</th>
										<td class="left">친한 사람의 이름을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
										<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
									</tr>
									<tr>
										<th scope="row">09</th>
										<td class="left">물건 둔 곳을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
										<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
									</tr>
									<tr>
										<th scope="row">10</th>
										<td class="left">이전에 비해 물건을 자주 잃어버린다.</td>
										<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
										<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
									</tr>
									<tr>
										<th scope="row">11</th>
										<td class="left">집 근처에서 길을 잃은 적이 있다.</td>
										<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
										<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
									</tr>
									<tr>
										<th scope="row">12</th>
										<td class="left">가게에서 2-3가지 물건을 사려고 할 때 물건이름을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
										<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
									</tr>
									<tr>
										<th scope="row">13</th>
										<td class="left">가스불이나 전기불 끄는 것을 기억하기 어렵다.</td>
										<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
										<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
									</tr>
									<th scope="row">14</th>
									<td class="left">자주 사용하는 전화번호(자신 혹은 자녀의 집)를 기억하기 어렵다.</td>
									<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
									<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
									</tr>
								</tbody>
							</table>
							<div id="submitDemenBtn">
								<a onclick="demenSum()" class="submitBtn">
									<span>제출</span>
								</a>
							</div>
							<div class="demenResult" style="display: none;">
								<div class="jagatest-result" id="result1">
									<p class="comm">
										당신의
										<span class="spc" id="title1">~</span>
										는
										<span class="spc" id="sum1"></span>
										입니다.
									</p>
									<p class="tit">
										<span class="spc" id="result_title1"></span>
									</p>
									<p class="stxt">
										<span class="spc" id="result_content1"></span>
									</p>
								</div>
							</div>
						</div>
					</form>

					<!--========== 퇴행성 관절염 자가진단 ==========-->
					<form action="../healths_folder/health_2" name="arthTest" method="post">
						<div class="arthTest">
							<h3 class="c-tit01">내 관절점수는 몇 점 일까?</h3>
							<h4 class="c-tit02">퇴행성 관절염 자가진단</h4>
							<table class="tbl-type02" style="width: 100%">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 70%">
									<col style="width: 10%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문항</th>
										<th scope="col">예</th>
										<th scope="col">아니오</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">01</th>
										<td class="left">추운 날씨에 관절이 불편한 느낌이 든다.</td>
										<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
										<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
									</tr>
									<tr>
										<th scope="row">02</th>
										<td class="left">계단이나 평지를 걸을 때 통증이 있다.</td>
										<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
										<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
									</tr>
									<tr>
										<th scope="row">03</th>
										<td class="left">조금만 걸어도 무릎 관절이 부어오르거나 무릎에 물이 찬다.</td>
										<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
										<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
									</tr>
									<tr>
										<th scope="row">04</th>
										<td class="left">앉았다가 일어나는 것이 힘들고 통증이 심하다.</td>
										<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
										<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
									</tr>
									<tr>
										<th scope="row">05</th>
										<td class="left">아침에 일어난 후에 한참을 움직여야만 하루 생활이 가능하다.</td>
										<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
										<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
									</tr>
									<tr>
										<th scope="row">06</th>
										<td class="left">눕는 것도 힘들고 누워 있다가 일어나는 것도 힘이 든다.</td>
										<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
										<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
									</tr>
									<tr>
										<th scope="row">07</th>
										<td class="left">엉덩이 뼈(엉치)와 다리가 무거운 느낌이고 뻣뻣하며 뻑뻑한 뻐근한 느낌이 든다.</td>
										<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
										<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
									</tr>
									<tr>
										<th scope="row">08</th>
										<td class="left">관절의 통증 때문에 숙면을 취하지 못한다.</td>
										<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
										<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
									</tr>
									<tr>
										<th scope="row">09</th>
										<td class="left">O자나 X자로 다리모양이 변형되었다.(또는 변형되는 중이다.)</td>
										<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
										<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
									</tr>
									<tr>
										<th scope="row">10</th>
										<td class="left">관절의 통증 때문에 보존적치료 (약물, 물리치료)를 받았으나 통증이 여전히 심하다.</td>
										<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
										<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
									</tr>
								</tbody>
							</table>
							<div id="submitArthBtn">
								<a onclick="arthSum()" class="submitBtn">
									<span>제출</span>
								</a>
							</div>
							<div class="arthResult" style="display: none;">
								<div class="jagatest-result" id="result2">
									<p class="comm">
										당신의
										<span class="spc" id="title2">~</span>
										는
										<span class="spc" id="sum2"></span>
										입니다.
									</p>
									<p class="tit">
										<span class="spc" id="result_title2"></span>
									</p>
									<p class="stxt">
										<span class="spc" id="result_content2"></span>
									</p>
								</div>
							</div>
						</div>
					</form>

					<!--========== 고혈압 자가진단 ==========-->
					<form action="../healths_folder/health_2" name="hyperTest" method="post">
						<div class="hyperTest">
							<h3 class="c-tit01">내 혈압점수는 몇 점 일까?</h3>
							<h4 class="c-tit02">고혈압 자가진단</h4>
							<table class="tbl-type02" style="width: 100%">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 70%">
									<col style="width: 10%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문항</th>
										<th scope="col">예</th>
										<th scope="col">아니오</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">01</th>
										<td class="left">손발이 저리다.</td>
										<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
										<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
									</tr>
									<tr>
										<th scope="row">02</th>
										<td class="left">뒷머리가 아프다. 특히 아침에 심하다.</td>
										<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
										<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
									</tr>
									<tr>
										<th scope="row">03</th>
										<td class="left">어지럽다.</td>
										<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
										<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
									</tr>
									<tr>
										<th scope="row">04</th>
										<td class="left">심장이 두근거린다.</td>
										<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
										<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
									</tr>
									<tr>
										<th scope="row">05</th>
										<td class="left">쉽게 피로하다.</td>
										<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
										<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
									</tr>
									<tr>
										<th scope="row">06</th>
										<td class="left">코피가 자주 난다.</td>
										<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
										<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
									</tr>
									<tr>
										<th scope="row">07</th>
										<td class="left">시야가 흐려지곤 한다.</td>
										<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
										<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
									</tr>
									<tr>
										<th scope="row">08</th>
										<td class="left">갑자기 힘이 빠졌다가 금세 회복된다.</td>
										<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
										<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
									</tr>
									<tr>
										<th scope="row">09</th>
										<td class="left">가슴이 조이듯 아프고 답답하다.</td>
										<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
										<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
									</tr>
									<tr>
										<th scope="row">10</th>
										<td class="left">호흡이 불편하다.</td>
										<td><input type="radio" name="Q10" value="1" id="Q10_1"></td>
										<td><input type="radio" name="Q10" value="0" id="Q10_2"></td>
									</tr>
									<tr>
										<th scope="row">11</th>
										<td class="left">조금만 움직여도 숨이 찬다.</td>
										<td><input type="radio" name="Q11" value="1" id="Q11_1"></td>
										<td><input type="radio" name="Q11" value="0" id="Q11_2"></td>
									</tr>
									<tr>
										<th scope="row">12</th>
										<td class="left">귀에서 소리가 난다.</td>
										<td><input type="radio" name="Q12" value="1" id="Q12_1"></td>
										<td><input type="radio" name="Q12" value="0" id="Q12_2"></td>
									</tr>
									<tr>
										<th scope="row">13</th>
										<td class="left">정신이 혼란하고 착란 증세가 있다.</td>
										<td><input type="radio" name="Q13" value="1" id="Q13_1"></td>
										<td><input type="radio" name="Q13" value="0" id="Q13_2"></td>
									</tr>
									<tr>
										<th scope="row">14</th>
										<td class="left">혼자 중얼중얼한다.</td>
										<td><input type="radio" name="Q14" value="1" id="Q14_1"></td>
										<td><input type="radio" name="Q14" value="0" id="Q14_2"></td>
									</tr>
									<tr>
										<th scope="row">15</th>
										<td class="left">전반적인 행동이 일상에서 벗어난다.</td>
										<td><input type="radio" name="Q15" value="1" id="Q15_1"></td>
										<td><input type="radio" name="Q15" value="0" id="Q15_2"></td>
									</tr>
									<tr>
										<th scope="row">16</th>
										<td class="left">만성질환 치료제나 진통제의 복용이 잦다.</td>
										<td><input type="radio" name="Q16" value="1" id="Q16_1"></td>
										<td><input type="radio" name="Q16" value="0" id="Q16_2"></td>
									</tr>
									<tr>
										<th scope="row">17</th>
										<td class="left">피로감을 늘 느낀다.</td>
										<td><input type="radio" name="Q17" value="1" id="Q17_1"></td>
										<td><input type="radio" name="Q17" value="0" id="Q17_2"></td>
									</tr>
								</tbody>
							</table>
							<div id="submitHyperBtn">
								<a onclick="hyperSum()" class="submitBtn">
									<span>제출</span>
								</a>
							</div>
							<div class="hyperResult" style="display: none;">
								<div class="jagatest-result" id="result3">
									<p class="comm">
										당신의
										<span class="spc" id="title3">~</span>
										는
										<span class="spc" id="sum3"></span>
										입니다.
									</p>
									<p class="tit">
										<span class="spc" id="result_title3"></span>
									</p>
									<p class="stxt">
										<span class="spc" id="result_content3"></span>
									</p>
								</div>
							</div>
						</div>
					</form>

					<!--========== 당뇨병 자가진단 ==========-->
					<form action="../healths_folder/health_2" name="diabetTest" method="post">
						<div class="diabetTest">
							<h3 class="c-tit01">내 혈당점수는 몇 점 일까?</h3>
							<h4 class="c-tit02">당뇨병 자가진단</h4>
							<table class="tbl-type02" style="width: 100%">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 70%">
									<col style="width: 10%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문항</th>
										<th scope="col">예</th>
										<th scope="col">아니오</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">01</th>
										<td class="left">목이 자주 마르고 침이 마른다.</td>
										<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
										<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
									</tr>
									<tr>
										<th scope="row">02</th>
										<td class="left">소변을 누러 화장실 가는 횟수가 늘어났다.</td>
										<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
										<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
									</tr>
									<tr>
										<th scope="row">03</th>
										<td class="left">아무리 먹어도 공복감이 생기고 식욕이 생긴다.</td>
										<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
										<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
									</tr>
									<tr>
										<th scope="row">04</th>
										<td class="left">점점 살이 빠지고 몸이 야위어 간다.</td>
										<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
										<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
									</tr>
									<tr>
										<th scope="row">05</th>
										<td class="left">항상 나른하고 매사가 귀찮다.</td>
										<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
										<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
									</tr>
									<tr>
										<th scope="row">06</th>
										<td class="left">부스럼이 잘 일어나고 습진, 무좀이 생긴다.</td>
										<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
										<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
									</tr>
									<tr>
										<th scope="row">07</th>
										<td class="left">눈에 초점이 잘 안 잡히는 증상이 잦다.</td>
										<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
										<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
									</tr>
									<tr>
										<th scope="row">08</th>
										<td class="left">잇몸 염증이 자주 발생하고 피가 난다.</td>
										<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
										<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
									</tr>
									<tr>
										<th scope="row">09</th>
										<td class="left">부모님 중에 당뇨 환자가 있다.</td>
										<td><input type="radio" name="Q9" value="1" id="Q9_1"></td>
										<td><input type="radio" name="Q9" value="0" id="Q9_2"></td>
									</tr>
								</tbody>
							</table>
							<div id="submitDiabetBtn">
								<a onclick="diabetSum()" class="submitBtn">
									<span>제출</span>
								</a>
							</div>
							<div class="diabetResult" style="display: none;">
								<div class="jagatest-result" id="result4">
									<p class="comm">
										당신의
										<span class="spc" id="title4">~</span>
										는
										<span class="spc" id="sum4"></span>
										입니다.
									</p>
									<p class="tit">
										<span class="spc" id="result_title4"></span>
									</p>
									<p class="stxt">
										<span class="spc" id="result_content4"></span>
									</p>
								</div>
							</div>
						</div>
					</form>

					<!--========== 뇌혈관질환 자가진단 ==========-->
					<form action="../healths_folder/health_2" name="cerebroTest" method="post">
						<div class="cerebroTest">
							<h3 class="c-tit01">내 뇌혈관점수는 몇 점 일까?</h3>
							<h4 class="c-tit02">뇌혈관질환 자가진단</h4>
							<table class="tbl-type02" style="width: 100%">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 70%">
									<col style="width: 10%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문항</th>
										<th scope="col">예</th>
										<th scope="col">아니오</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">01</th>
										<td class="left">'이~' 하고 웃었을 때 좌우 모양이 다르다.</td>
										<td><input type="radio" name="Q1" value="1" id="Q1_1"></td>
										<td><input type="radio" name="Q1" value="0" id="Q1_2"></td>
									</tr>
									<tr>
										<th scope="row">02</th>
										<td class="left">두 손을 뻗었을 때 한쪽 팔이 자꾸 처진다.</td>
										<td><input type="radio" name="Q2" value="1" id="Q2_1"></td>
										<td><input type="radio" name="Q2" value="0" id="Q2_2"></td>
									</tr>
									<tr>
										<th scope="row">03</th>
										<td class="left">발음이 어눌하고 대화를 잘 이어가지 못한다.</td>
										<td><input type="radio" name="Q3" value="1" id="Q3_1"></td>
										<td><input type="radio" name="Q3" value="0" id="Q3_2"></td>
									</tr>
									<tr>
										<th scope="row">04</th>
										<td class="left">양쪽 눈이 한쪽으로 쏠려있다.</td>
										<td><input type="radio" name="Q4" value="1" id="Q4_1"></td>
										<td><input type="radio" name="Q4" value="0" id="Q4_2"></td>
									</tr>
									<tr>
										<th scope="row">05</th>
										<td class="left">얼굴, 팔, 다리에 감각이 없고 무겁게 느껴진다.</td>
										<td><input type="radio" name="Q5" value="1" id="Q5_1"></td>
										<td><input type="radio" name="Q5" value="0" id="Q5_2"></td>
									</tr>
									<tr>
										<th scope="row">06</th>
										<td class="left">시야가 갑자기 어두워지거나 이내 괜찮아진다.</td>
										<td><input type="radio" name="Q6" value="1" id="Q6_1"></td>
										<td><input type="radio" name="Q6" value="0" id="Q6_2"></td>
									</tr>
									<tr>
										<th scope="row">07</th>
										<td class="left">머리가 심하게 아프고 어지럽다.</td>
										<td><input type="radio" name="Q7" value="1" id="Q7_1"></td>
										<td><input type="radio" name="Q7" value="0" id="Q7_2"></td>
									</tr>
									<tr>
										<th scope="row">08</th>
										<td class="left">중심을 잘 못 잡고 자꾸 넘어진다.</td>
										<td><input type="radio" name="Q8" value="1" id="Q8_1"></td>
										<td><input type="radio" name="Q8" value="0" id="Q8_2"></td>
									</tr>
								</tbody>
							</table>
							<div id="submitCerebroBtn">
								<a onclick="cerebroSum()" class="submitBtn">
									<span>제출</span>
								</a>
							</div>
							<div class="cerebroResult" style="display: none;">
								<div class="jagatest-result" id="result5">
									<p class="comm">
										당신의
										<span class="spc" id="title5">~</span>
										는
										<span class="spc" id="sum5"></span>
										입니다.
									</p>
									<p class="tit">
										<span class="spc" id="result_title5"></span>
									</p>
									<p class="stxt">
										<span class="spc" id="result_content5"></span>
									</p>
								</div>
							</div>
						</div>
					</form>


				</div>
			</section>
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
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
			<script src="../js/mail-script.js"></script>
			<script src="../js/custom.js"></script>

			<!-- 헬스 기능 js들 -->
			<script src="../js/health_sub.js"></script>
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