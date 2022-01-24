<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ page import="java.util.ArrayList" %>


<!doctype html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>비밀번호 찾기 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> 
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">

    
 <!--Custom styles for this template-->
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
                <h2><strong>비밀번호 찾기</strong></h2>
                <p class="msg">가입시 입력한 정보를 적어주세요</p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                        <form name="forgotid_form" action="forgotpw_proc.jsp" method="post" id="msform">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li id="personal"><strong>아이디 찾기</strong></li>
                                <li class="active" id="account"><strong>비밀번호 찾기</strong></li>
                                <li id="confirm"><strong>비밀번호 재설정</strong></li>
                            </ul> <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card" style="height:480px;">
                                    <h2 class="fs-title"></h2> 
                                        <p></p>
                                        <input type="text" name="mem_id" placeholder="아이디" required>
                                        <input type="text" name="mem_name" placeholder="이름" required>
                                        <input type="text" name="mem_birth" placeholder="생년월일(ex.19901231)" required>
                                        <input type="text" name="mem_hp" placeholder="핸드폰 번호(ex.01012345678)" required>
                                        <button type="button" onclick="location.href='forgotid.jsp'" class="btn_style3" style="float:left;">&#8678&nbsp;ID찾기</button>
                                        <button type="submit" class="btn_style3" style="float:right;">PW찾기&nbsp;&#8680</button>
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

    <!-- Forgot Custom -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  </body>
  </html>