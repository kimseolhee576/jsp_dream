<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="themefisher.com">

<title>후기게시판 | 드림월드</title>

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
<link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
<link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">

</head>
<body>
<%@include file ="../header.jsp" %>
<div class="main-wrapper ">
	<section class="page-title bg-1">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="block text-center">
	          <!-- <span class="text-white">News details</span> -->
	          <h1 class="text-capitalize mb-4 text-lg">고객센터</h1>
	          <ul class="list-inline">
	            <!-- <li class="list-inline-item"><a href="../index.jsp" class="text-white">Home</a></li>
	            <li class="list-inline-item"><span class="text-white">/</span></li>
	            <li class="list-inline-item"><a href="#" class="text-white-50">News details</a></li> -->
	          </ul>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>


	<section class="section blog-wrap bg-gray">
	    <div class="container">
			<div class="content">
				<section class="notice">
					<h2>공지사항</h2>
					<form name="notice_writeform" action="notice_write_proc.jsp" method="post">
						<table class="notice_write">
							<tr>
								<td colspan="2">
									<a href="http://localhost:9000/dream/notice/notice_list.jsp">
										<button type="button" class="btn_style2">목록</button>
									</a>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td>
									<input type="text" name="ntitle" id="ntitle">
								</td>
							</tr>
			
							<tr>
								<th>내용</th>
								<td>
									<textarea name="ncontent" id="ncontent" rows="7" cols="70"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<button type="button" onclick="noticeWriteFormCheck()" class="btn_style1">등록완료</button>
								<button type="reset" class="btn_style1">다시쓰기</button>
								</td>
							</tr>
						</table>
					</form>
				</section>
				</div>
		   </div>
	</section>
</div>
	<%@include file ="../footer.jsp" %>
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

    <!-- Google Map -->
    <script src="plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    
    
    <script src="js/script.js"></script>
	
	<script src="http://localhost:9000/dream/js/project02.js"></script>
</body>
</html>