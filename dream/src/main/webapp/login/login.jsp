<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ page import="java.util.ArrayList" %>

<%
	String login_result = request.getParameter("login_result");
	String join_result = request.getParameter("join_result");
%>

<!doctype html>
<html lang="en">
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>로그인 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Custom styles for this template -->
  <link href="http://localhost:9000/dream/css/login.css" rel="stylesheet">

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
        <div class="row" style="display:block; height:550px">
           <div class="content">
            <section>
            <h2 style="margin-left:220px;">로그인</h2>
             <div class="text-center">
				<main class="form-signin">
					  <form name="login_form" action="login_proc.jsp" method="post">
					    <img src="http://localhost:9000/dream/images/logo3.png">
					    <h1 class="h3 mb-3 fw-normal"><br></h1>
					
					    <div class="form-floating">
					      <input type="text" name="mem_id" class="form-control" id="mem_id" autocomplete="off" required placeholder="아이디">
					    </div>
					    <div class="form-floating">
					      <input type="password" name="mem_pass" class="form-control" id="mem_pass" autocomplete="off" required placeholder="비밀번호">
					    </div>
					    <div class="checkbox mb-3" style="font-size: 13px;">
					      <label>
					        <a href="http://localhost:9000/dream/login/forgotid.jsp">아이디 찾기</a>&nbsp;|
					        <a href="http://localhost:9000/dream/login/forgotpw.jsp">비밀번호 찾기</a>&nbsp;|
					        <a href="http://localhost:9000/dream/join/join.jsp">회원가입</a>    
					      </label>
					    </div>
					    <button class="btn_style3" id="login_btn" type="submit">로그인</button>
					    <p class="mt-5 mb-3 text-muted" id="copyright">&copy; 꿈과 환상의 나라 드림월드 All Rights Reserved.</p>
					  </form>
	             </main>
	         </div>    
			</section>
	       </div>
		</div>
    </div>
</section>

</div>
<!-- footer Start -->
<%@include file ="../footer.jsp" %>

   
    <script>
    /* 회원가입 성공 메시지 출력 */
	if('<%=join_result%>' == 'succ'){
		alert("회원가입에 성공하셨습니다. 로그인 페이지로 이동합니다.");
	}
    </script>

  </body>
  </html>