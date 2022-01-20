<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%
    String userid = (String)session.getAttribute("userid");
%>

<!doctype html>
<html lang="en">
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>아이디 찾기 결과 | 드림월드</title>
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
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="http://localhost:9000/dream/css/forgot.css" rel="stylesheet">

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
          <h1 class="text-capitalize mb-4 text-lg">회원정보 찾기</h1>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section blog-wrap bg-gray">
    <div class="container">
       <!-- MultiStep Form -->
<div class="container-fluid">
    <div class="row justify-content-center mt-0" style="width: 800px; margin:auto">
        <div class="col-11 col-sm-9 col-md-7 col -lg-6 text-center p-0 mt-3 mb-2" >
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3" style="padding: 50px !important;">
                <h2><strong>아이디 찾기 결과</strong></h2>
                <p></p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                        <form name="forgotid_form" action="forgotid_proc.jsp" method="post" id="msform">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="personal"><strong>아이디 찾기</strong></li>
                                <li id="account"><strong>비밀번호 찾기</strong></li>
                                <li id="confirm"><strong>비밀번호 재설정</strong></li>
                            </ul> <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card" style="height:270px;">
                                    <h2 class="fs-title"></h2><br> 
                                        <p class="find_result">회원님의 아이디는</p>
                                        <p class="find_result" style="margin-bottom:20px"><b><%=userid%></b>입니다.</p>
                                        <button type="button" onclick="location.href='login.jsp'" class="btn_style3" style="float:left;">&#8678&nbsp;로그인</button>
                                        <button type="button" onclick="location.href='forgotpw.jsp'" class="btn_style3" style="float:right;">PW찾기&nbsp;&#8680</button>
                                 </div>
                            </fieldset>
                        </form>
                    </div>
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
    
    <!-- Forgot Custom -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  </body>
  </html>