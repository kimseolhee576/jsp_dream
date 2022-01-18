<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.dream.dao.NoticeDao, com.dream.vo.NoticeVO, java.util.ArrayList"%>

<%
	NoticeDao dao = new NoticeDao();
	ArrayList<NoticeVO> list = dao.select();
%>

<!doctype html>
<html>
  <head profile="http://www.w3.org/2005/10/profile">
  <!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
  <link rel="icon" type="image/png" href="http://example.com/myicon.png">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  <meta name="author" content="themefisher.com">
  <title>공지사항 | 드림월드</title>
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
  
  <link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet"> <!-- 내꺼 -->

</head>
<body>

<!-- Header Start --> 
<%@include file="../header.jsp" %>  
<!-- Header End --> 
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
						<table class="notice_list">
							<tr>
								<td colspan="4" class="search">
									<select class="listSelect">
										<option>제목</option>
										<option>전체</option>
									</select>
									<input type="text">
									<a href=""><button type="button" class="btn_style3">검색</button></a>
								</td>
							</tr>
							<tr>
								<th width="10%" >번호</th>
								<th >제목</th>
								<th width="10%">작성일</th>
								<th width="10%">조회수</th>
							</tr>
							<% for(NoticeVO vo : list) { %>
							<tr>
								<td><%= vo.getRno() %></td>
								<td><a href="notice_content.jsp?notice_id=<%=vo.getNotice_id() %>"><%=vo.getNtitle() %></a></td>
								<td><%= vo.getNotice_date() %></td>
								<td><%= vo.getNotice_hits() %></td>
							</tr>
							<% } %>
							<tr>
								<td colspan="4">
									<a href="notice_write.jsp"><button type="button" class="btn_style1">글쓰기</button></a> 
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