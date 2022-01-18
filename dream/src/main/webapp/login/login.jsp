<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ page import="java.util.ArrayList" %>


<!doctype html>
<html lang="en">
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>로그인 | 드림월드</title>
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
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">

  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="http://localhost:9000/dream/css/signin.css" rel="stylesheet">

</head>

<body>

<!-- Header Start --> 

<%@include file ="../header.jsp" %>

<!-- Header Close --> 

<div class="main-wrapper ">
<section class="page-title bg-3">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <h1 class="text-capitalize mb-4 text-lg">로그인</h1>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section blog-wrap bg-gray">
    <div class="container">
        <div class="row" style="display:block">
             <div class="text-center">
				<main class="form-signin">
					  <form name="login_form" action="login_proc.jsp" method="post">
					    <img class="mb-4" src="" alt="" width="72" height="57">
					    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
					
					    <div class="form-floating">
					      <input type="text" name="mem_id" class="form-control" id="mem_id" autocomplete="off" required placeholder="아이디">
					    </div>
					    <div class="form-floating">
					      <input type="password" name="mem_pass" class="form-control" id="mem_pass" autocomplete="off" required placeholder="비밀번호">
					    </div>
					
					    <div class="checkbox mb-3">
					      <label>
					        <input class="form-check-input" type="checkbox">아이디 기억하기
					      </label>
					    </div>
					    <button class="w-100 btn btn-lg btn-primary" id="login_btn" type="submit">로그인</button>
					    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
					  </form>
	             </main>
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
    
    <!-- Main jQuery -->
    <script src="http://localhost:9000/dream/plugins/jquery/jquery.js"></script>
    <script src="http://localhost:9000/dream/js/contact.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="http://localhost:9000/dream/plugins/bootstrap/js/popper.js"></script>
    <script src="http://localhost:9000/dream/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup-->
    <script src="http://localhost:9000/dream/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Slick Slider -->
    <script src="http://localhost:9000/dream/plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="http://localhost:9000/dream/plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="http://localhost:9000/dream/plugins/counterup/jquery.counterup.min.js"></script>

  
    <script src="http://localhost:9000/dream/js/script.js"></script>

  </body>
  </html>