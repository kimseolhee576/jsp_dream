<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.ReviewDAO,com.dream.vo.ReviewVO, java.util.ArrayList" %>
<% 
	String login_id = (String)session.getAttribute("sid");
	ReviewDAO dao = new ReviewDAO();
	ArrayList<ReviewVO> list= dao.select();

%>
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
<title>후기게시판 | 드림월드</title>
<!-- bootstrap.min css -->
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
<!-- Icon Font Css -->
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/themify/css/themify-icons.css">
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/fontawesome/css/all.css">
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/magnific-popup/dist/magnific-popup.css">

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
		         <h1 class="text-capitalize mb-4 text-lg">고객센터</h1>
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
					<form name="searchForm" action="search.jsp" method="post">
						 <table class="review_list">
						<!--<table class="table table-striped">-->
							<tr>
								<td colspan="6">
									<select name="searchField" class="listSelect">
										<option value="review_title">제목</option>
										<option value="mem_id1">작성자</option>
									</select>
									<input type="text" placeholder="검색어 입력" name="searchText" id="searchText">
									<button type="button" class="btn_style3" onclick="searchCheck()">검색</button> <!-- button type="button" -->
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
								<td><a href="reviewContent.jsp?review_id=<%= vo.getReview_id()%>"><%= vo.getReview_title() %></a></td>
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
									<% if(login_id != null) {%>
									<a href="http://localhost:9000/dream/reviewboard/reviewWrite.jsp?login_id=<%= login_id %>">
									<% }else{ %>  <a href="http://localhost:9000/dream/login/login.jsp"> 
									<% } %>
											<button type="button" class="btn_style1">글쓰기</button>
										</a>
									</a>
								</td>
							</tr>
						</table> 
					</form>
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

    <script src="js/script.js"></script>

</body>
</html>