<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>이용정보 | 드림월드</title>
  <link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link href="http://localhost:9000/dream/css/reserv.css" rel="stylesheet">
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">

</head>

<body>


<!-- header start -->
<%@ include file="../header.jsp" %>
<!-- Header Close --> 

<div class="main-wrapper ">
	<section class="page-title bg-navi">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="block text-center">
	          <span class="text-white"></span>
	          <h1 class="text-capitalize mb-4 text-lg">이용정보</h1>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</div>

<section class="section blog-wrap bg-gray">
<h2 class="enter_h2">오시는 길</h2>
<div id="MapContent">
	<div id="MapImg">
		<ul>
			<li class="on"><img src="http://localhost:9000/dream/images/submap.jpg" class="navi-img"></li>
		</ul>
	</div>
	<div id="MapTxt">
		<div class="detail on">
			<div class="car">
				<h6>자동차 이용시</h6>
				<div class="txt">
					수원시외버스터미널 → 강변로 → 경감로 → 목적지
				</div>
			</div>
			<div class="public">
				<h6>대중교통 이용시</h6>
				<div class="txt">
					<b>경로1</b><br>
					<span class="busStop">시외버스, 고속버스터미널 정류장</span>까지  약 194m 걷기 →<br>
					<span class="bgYellow">[일반]10(시외버스,고속버스터미널)</span> 승차 후, <span class="busStop">드림월드, 캘리포니아비치, 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 24개 약 33분<br>
					<b>경로2</b><br>
					<span class="busStop">시외버스, 고속버스터미널 정류장</span>까지  약 194m 걷기 →<br>
					<span class="bgYellow">[일반]16(시외버스,고속버스터미널)</span> 승차 후, <span class="busStop">드림월드, 캘리포니아비치 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 23개 약 35분<br>
					<b>경로3</b><br>
					<span class="busStop">시외버스, 고속버스터미널 정류장</span>까지  약 194m 걷기 →<br>
					<span class="bgYellow">[좌석]18(시외버스,고속버스터미널)</span> 승차 후, <span class="busStop">드림월드, 캘리포니아비치 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 23개 약 34분<br>
					<b>경로4</b><br>
					<span class="busStop">시외버스, 고속버스터미널 정류장</span>까지  약 194m 걷기 →<br>
					<span class="bgYellow">[좌석]100-1(시외버스,고속버스터미널)</span> 승차 후, <span class="busStop">드림월드, 캘리포니아비치 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 24개 약 32분<br>
				</div>
			</div>
		</div>
		<!-- <div class="detail">
			<div class="car">
				<h6>자동차 이용시</h6>
				<div class="txt">
					신경주역 → 대경로 → 서라벌대로 → 경감로 → 목적지
				</div>
			</div>
			<div class="public">
				<h6>대중교통 이용시</h6>
				<div class="txt">
					<b>경로1</b><br>
					<span class="busStop">신경주역 정류장</span>까지 약 34m 걷기 →<br>
					<span class="bgYellow">[일반] 50(신경주역)</span> 승차후, <span class="busStop">고속버스, 시외버스터미널 정류장</span>에서 하차 →<br>
					<span class="bgYellow">[일반] 10(고속버스,시외버스터미널)</span>승차 후, <span class="busStop">드림월드, 캘리포니아비치 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 38개 약 49분<br>
					<b>경로2</b><br>
					<span class="busStop">신경주역 정류장</span>까지 약 34m 걷기 →<br>
					<span class="bgYellow">[일반]60(신경주역)</span> 승차후, <span class="busStop">고속버스, 시외버스터미널 정류장</span>에서 하차 →<br>
					<span class="bgYellow">[좌석]18(고속버스, 시외버스터미널)</span>승차 후, <span class="busStop">드림월드, 캘리포니아비치 정류장</span>에서 하차 →<br>
					드림월드까지 약 65m 걷기<br>
					버스정류장 31개 약 46분<br>
					<b>경로3</b><br>
					<span class="busStop">신경주역 정류장</span>까지 약 34m 걷기 →<br>
					<span class="bgYellow">[좌석]700(신경주역)</span> 승차후, <span class="busStop">힐튼호텔, KT수련원, 하이코 정류장</span>에서 하차 →<br>
					드림월드까지 약 641m 걷기 →<br>
					버스정류장 37개 약 51분<br>


								</div>
							</div>
						</div>
						<div class="detail">
							<div class="car">
								<h6>자동차 이용시</h6>
								<div class="txt">
									경부 고속도로 → 경주I.C → 서라벌대로 → 경감로 → 목적지
								</div>
							</div>
						</div>
						<div class="detail">
							<div class="car">
								<h6>자동차 이용시</h6>
								<div class="txt">
									남경주IC → 동해고속도로 → 토함산로 → 경감로 → 목적지
								</div>
							</div>
						</div>
						<div class="detail">
							<div class="car">
								<h6>자동차 이용시</h6>
								<div class="txt">
									울산공항 → 산업로 → 보불로 → 경감로 → 목적지
								</div>
							</div>
						</div>-->
					</div>
				</div> 

</section>

<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close -->

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.js"></script>
    <script src="js/contact.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup-->
    <script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>

    
    <script src="js/script.js"></script>

  </body>
  </html>
   