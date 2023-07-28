<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
					<h2>About Us</h2>
					<div class="page_link">
						<a href="../index.jsp">Home</a>
						<a href="../about.jsp">About</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!-- Start Appointment Area -->
	<section class="appointment-area">
		<div class="container">
			<div class="row justify-content-between align-items-center appointment-wrap">
				<div class="col-lg-5 col-md-6 appointment-left">
					<h1>
						Servicing Hours
					</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
					<ul class="time-list">
						<li class="d-flex justify-content-between">
							<span>Monday-Friday</span>
							<span>08.00 am - 10.00 pm</span>
						</li>
						<li class="d-flex justify-content-between">
							<span>Saturday</span>
							<span>08.00 am - 10.00 pm</span>
						</li>
						<li class="d-flex justify-content-between">
							<span>Sunday</span>
							<span>08.00 am - 10.00 pm</span>
						</li>
					</ul>
				</div>
				<div class="col-lg-6 col-md-6 pt-60 pb-60">
					<div class="appointment-right">
						<form class="form-wrap" action="#">
							<h3 class="pb-20 text-center mb-20">Book an Appointment</h3>
							<input type="text" class="form-control" name="name" placeholder="Patient Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Patient Name'">
							<input type="text" class="form-control" name="phone" placeholder="Phone " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone'">
							<input type="email" class="form-control" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
							<input id="datepicker1" name="dop" class="dates form-control" placeholder="Date of Birth" type="text">
							<div class="form-select" id="service-select">
								<select>
									<option data-display="">Disease Type</option>
									<option value="1">Type One</option>
									<option value="2">Type Two</option>
									<option value="3">Type Three</option>
									<option value="4">Type Four</option>
								</select>
							</div>
							<input id="datepicker2" class="dates form-control" placeholder="appointment Date" type="text">
							<textarea name="messege" class="" rows="5" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'"></textarea>
							<div class="text-center">
								<button class="main_btn text-uppercase">Confirm Booking</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Appointment Area -->

	<!--================ About Myself Area =================-->
	<section class="about_myself section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 pr-0">
					<div class="about_img">
						<img class="img-fluid w-100" src="../img/about-me.jpg" alt="">
					</div>
				</div>

				<div class="col-lg-6 pl-0">
					<div class="about_box">
						<div class="section-title-wrap text-left">
							<h1>About Myself</h1>
							<p>
								nappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the
								workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach.
							</p>
						</div>

						<div class="activity">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="activity_box">
										<div>
											<i class="lnr lnr-database"></i>
										</div>
										<h3>$<span class="counter">2.5</span> M</h3>
										<p>Total Donation</p>
									</div>
								</div>

								<div class="col-lg-6 col-md-6">
									<div class="activity_box">
										<div>
											<i class="lnr lnr-book"></i>
										</div>
										<h3 class="counter">1465</h3>
										<p>Total Project</p>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="activity_box">
										<div>
											<i class="lnr lnr-users"></i>
										</div>
										<h3 class="counter">3965</h3>
										<p>Total Volunteers</p>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="activity_box">
										<div>
											<i class="lnr lnr-users"></i>
										</div>
										<h3 class="counter">3965</h3>
										<p>Total Volunteers</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End About Myself Area =================-->

	<!-- Start Feedback Area -->
	<section class="feedback_area section_gap relative">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
					<h1>Enjoy our Client’s Feedback</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
			</div>

			<div class="feedback_contents justify-content-center align-items-center">
				<div class="active-review-carusel owl-carousel">
					<div class="row">
						<div class="col-lg-6">
							<img src="../img/feedback-bg.jpg" alt="">
						</div>

						<div class="col-lg-6">
							<div class="single-feedback-carusel">
								<div class="d-flex flex-row">
									<h4 class="">Fannie Rowe</h4>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p class="">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can
									find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<img src="../img/feedback-bg.jpg" alt="">
						</div>

						<div class="col-lg-6">
							<div class="single-feedback-carusel">
								<div class="d-flex flex-row">
									<h4 class="">Fannie Rowe</h4>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p class="">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can
									find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<img src="../img/feedback-bg.jpg" alt="">
						</div>

						<div class="col-lg-6">
							<div class="single-feedback-carusel">
								<div class="d-flex flex-row">
									<h4 class="">Fannie Rowe</h4>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p class="">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can
									find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<img src="../img/feedback-bg.jpg" alt="">
						</div>

						<div class="col-lg-6">
							<div class="single-feedback-carusel">
								<div class="d-flex flex-row">
									<h4 class="">Fannie Rowe</h4>
									<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<p class="">
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can
									find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Feedback Area -->

	<!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="../js/jquery.ajaxchimp.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="../https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="../js/mail-script.js"></script>
	<script src="../js/custom.js"></script>
</body>

</html>