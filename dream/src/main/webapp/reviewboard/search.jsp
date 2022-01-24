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
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<title>후기게시판 | 드림월드</title>

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
						 <table class="review_list">
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
								<td colspan="6"></td>
							</tr>
						</table> 
					</section>
				</div>
			</div>
	</section>
</div>
<!-- footer Start -->
<%@include file ="../footer.jsp" %>

  <!--  Essential Scripts
    =====================================-->
    <script src="http://localhost:9000/dream/js/dreamReview.js"></script>
    
</body>
</html>