<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
<meta name="author" content="themefisher.com">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<title>마이페이지 | 드림월드</title>
<!-- bootstrap.min css -->
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
<!-- Icon Font Css 
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/themify/css/themify-icons.css">
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/fontawesome/css/all.css">
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/magnific-popup/dist/magnific-popup.css">-->
<!-- Owl Carousel CSS 
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick-theme.css">-->

<!-- Main Stylesheet -->
<link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
<link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">

</head>
<body>
<%@include file ="../header.jsp" %>
<div class="main-wrapper ">
	<section class="page-title bg-3">
	  <div class="container">
		  <div class="row">
		    <div class="col-md-12">
		       <div class="block text-center">
		         <h1 class="text-capitalize mb-4 text-lg">마이페이지</h1>
		         <ul class="list-inline">
		         </ul>
		       </div>
		     </div>
		   </div>
		 </div>
	</section>
	<section class="section blog-wrap bg-gray">
	   <div class="container">
			<div class="content">
				<div class="container">
					<div class="cta-block mt-5 p-5 rounded">
						<div class="row justify-content-center align-items-center ">
							<div class="col-lg-7">
								<span class="text-color">Dream World</span>
								<h2 class="mt-2 text-white">예매 내역 확인</h2>
							</div>
							<div class="col-lg-4">
								<a href="http://localhost:9000/dream/reserve/reserv_result.jsp" class="btn btn-main btn-round-full float-lg-right float-md-right float-sm-right">&gt;&gt;&nbsp;Go</a>
							</div>
						</div>
					</div>
					<div class="cta-block mt-5 p-5 rounded">
						<div class="row justify-content-center align-items-center ">
							<div class="col-lg-7">
								<span class="text-color"> Dream World</span>
								<h2 class="mt-2 text-white">내 정보 수정</h2>
							</div>
							<div class="col-lg-4">
								<a href="infoUpdate.jsp" class="btn btn-main btn-round-full float-lg-right float-md-right float-sm-right">&gt;&gt;&nbsp;Go</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	<!-- footer Start -->
<%@include file ="../footer.jsp" %>
  <!-- 
    Essential Scripts
    =====================================-->
    <script src="http://localhost:9000/dream/js/dreamReview.js"></script>
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.js"></script>
    <script src="js/contact.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup
    <script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>-->
    <!-- Slick Slider 
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>-->
    <!-- Counterup 
    <script src="plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>-->
    
    <script src="js/script.js"></script>
</body>
</html>