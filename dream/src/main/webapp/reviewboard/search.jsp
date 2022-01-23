<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.ReviewDAO, com.dream.vo.ReviewVO, java.util.ArrayList"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
	ReviewDAO dao=new ReviewDAO();
	ArrayList<ReviewVO> list = dao.getSearch(request.getParameter("searchField"), request.getParameter("searchText"));
%>	
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
<meta name="author" content="themefisher.com">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- Required meta tags -->

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
				<section class="review_board">
					<h2>후기게시판</h2>
						 <table class="review_list">
						<!--<table class="table table-striped">-->
							<tr>
								<td colspan="6">
									<a href="http://localhost:9000/dream/reviewboard/reviewList.jsp">
										<button type="button" class="btn_style2">전체 목록</button>
									</a>
								</td>
							</tr>
							<tr>
								<th width="7%">번호</th>		
								<th width="40%">제목</th>		
								<th >별점</th>		
								<th >작성자</th>		
								<th >등록일</th>		
								<th width="10%">조회수</th>		
							</tr>
							<% for( ReviewVO vo : list){ %>
							<tr>
								<td><%= vo.getRno()%></td>
								<td><a href="reviewContent.jsp?review_id=<%= vo.getReview_id()%>"><%= vo.getReview_title().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a></td>
								<td>
								<%  int star = vo.getReview_star();
									if(star == 1){%>
									    <label class="list_star">⭐</label>
								<%}else if(star == 2){%>
									    <label class="list_star"> ⭐⭐</label>
								<%}else if(star == 3) {%>
										 <label class="list_star">⭐⭐⭐</label>
								<%}else if(star == 4) {%>
										 <label class="list_star">⭐⭐⭐⭐</label>
								<%}else if(star == 5) {%> 
										 <label class="list_star">⭐⭐⭐⭐⭐</label>
								<% } %>
								</td>
								<td><%= vo.getMem_id1() %></td>
								<td><%= vo.getReview_date() %></td>
								<td><%= vo.getReview_hits() %></td>
							</tr>
							<% } %>
							<tr>
								<td colspan="6">
									<!--  <a href="http://localhost:9000/dream/reviewboard/reviewWrite.jsp">
										<button type="button" class="btn_style1">글쓰기</button>
									</a>-->
								</td>
							</tr>
						</table> 
					</section>
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
</body>
</html>