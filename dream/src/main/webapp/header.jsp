<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String sid = (String)session.getAttribute("sid");
%>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>::Welcome to DreamWorld::</title>

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
  
  <script type="text/javascript" src="http://localhost:9000/dream/js/reserv.js"></script>

</head>
<body>
<header class="navigation">
	<div class="header-top " > 
		<div class="container" > 
				<div class="header-top-info">
				<% if(sid == null){ %>
                    <a href="http://localhost:9000/dream/login/login.jsp" ><span>로그인</span></a>
                    <a href="http://localhost:9000/dream/join/join.jsp"><span>회원가입</span></a>
	            <% }else{ %>
	                <span><%=sid%>님, 환영합니다!</span>
	                <a href="http://localhost:9000/dream/mypage/myPage.jsp"><span>마이페이지</span></a>   
		            <a href="http://localhost:9000/dream/login/logout.jsp" ><span>로그아웃</span></a>
		        <% } %>          
			</div>
		</div>
	</div>
	
	<nav class="navbar navbar-expand-lg  py-4" id="navbar">
		<div class="container">
		  <a class="navbar-brand" href="http://localhost:9000/dream/index.jsp">
		  	<img src="http://localhost:9000/dream/images/logo3-1.png">
		  </a>

		  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
			<span class="fa fa-bars"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse text-center" id="navbarsExample09">
			<ul class="navbar-nav ml-auto">

			  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="http://localhost:9000/dream/index.jsp" id="dropdown03"  aria-haspopup="true" aria-expanded="false">Home</a>
			  </li>
			  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">이용정보</a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						<li><a class="dropdown-item" href="http://localhost:9000/dream/information/use_info.jsp">이용안내</a></li>
						<li><a class="dropdown-item" href="http://localhost:9000/dream/information/cash_info.jsp">요금정보</a></li>
						<li><a class="dropdown-item" href="http://localhost:9000/dream/information/navi.jsp">오시는길</a></li>
						<li><a class="dropdown-item" href="http://localhost:9000/dream/information/all_map.jsp">가이드맵</a></li>
					</ul>
			  </li>
			  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">즐길거리</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown03">
                        <li><a class="dropdown-item" href="http://localhost:9000/dream/entertainment/attraction.jsp">어트랙션</a></li>
                        <li><a class="dropdown-item" href="http://localhost:9000/dream/entertainment/amenity.jsp">부대시설</a></li>
                        <li><a class="dropdown-item" href="http://localhost:9000/dream/entertainment/restaurant.jsp">레스토랑&amp;스낵</a></li>
                    </ul>
              </li>
			   <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
					<ul class="dropdown-menu" aria-labelledby="dropdown05">
						<li><a class="dropdown-item" href="http://localhost:9000/dream/notice/notice_list.jsp">공지사항</a></li>
						<li><a class="dropdown-item" href="http://localhost:9000/dream/qna/qna_list.jsp">문의게시판</a></li>
						<li><a class="dropdown-item" href="http://localhost:9000/dream/reviewboard/reviewList.jsp">후기게시판</a></li>
					</ul>
			  </li>
			  
			</ul>

			<form class="form-lg-inline my-2 my-md-0 ml-lg-4 text-center">
			<% if(sid == null) { %>
				<a href="http://localhost:9000/dream/login/login.jsp" class="btn btn-solid-border btn-round-full" onclick="aa()">예매하기</a>
			<% }else { %>
			  <a href="http://localhost:9000/dream/reserve/reserv.jsp" class="btn btn-solid-border btn-round-full">예매하기</a>
			<% } %>
			</form>
		  </div>
		</div>
	</nav>
</header>
</body>
</html>