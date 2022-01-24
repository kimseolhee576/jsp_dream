<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<% String mem_id = request.getParameter("mem_id"); %>   

<!doctype html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>비밀번호 찾기 결과 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
 
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
  
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
                <h2><strong>비밀번호 찾기 결과</strong></h2>
                <p></p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                        <form name="forgotid_form" action="updatepw_proc.jsp" method="post" id="msform">
                            <input type="hidden" name="mem_id" value="<%=mem_id%>">
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li id="personal"><strong>아이디 찾기</strong></li>
                                <li id="account"><strong>비밀번호 찾기</strong></li>
                                <li class="active" id="confirm"><strong>비밀번호 재설정</strong></li>
                            </ul> <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card" style="height:400px;">
                                    <h2 class="fs-title"></h2>
                                        <p class="find_result" style="font-size:14px; margin-bottom:0;">인증에 성공하셨습니다!</p>
                                        <p class="find_result" style="font-size:14px; margin-top:0;">새로 비밀번호를 설정해주세요</p><br>
                                        
                                        <input type="password" style="font-size:13px;" name="mem_pass" placeholder="비밀번호(영문+숫자 조합의 6~10자리)" id="pass" onblur="passSameCheck()" onKeyup="passCheck()" required>
                                        <span id="passMsg"></span>
                                        <input type="password" style="font-size:13px;" placeholder="비밀번호 확인(영문+숫자 조합의 6~10자리)" id="cpass" onblur="passSameCheck()" onKeyup="cpassCheck()" required>
                                        <span id="cpassMsg"></span>
                                        <button type="button" onclick="updatePassworFormCheck()" class="btn_style3" style="padding:11px 110px; color:white; margin:25px auto;">완료</button>
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

    
    
    <!--Forgot Custom-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="http://localhost:9000/dream/js/forgot.js"></script>

  </body>
  </html>