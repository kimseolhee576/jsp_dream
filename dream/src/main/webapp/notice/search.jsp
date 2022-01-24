<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.NoticeDao, com.dream.vo.NoticeVO, java.util.ArrayList"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
	NoticeDao dao=new NoticeDao();
	ArrayList<NoticeVO> list = dao.getSearch(request.getParameter("searchField"), request.getParameter("searchText"));
%>	
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="themefisher.com">

<title>공지사항 | 드림월드</title>

<!-- bootstrap.min css -->
<link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">

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
		         <ul class="list-inline">
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
					<h2>공지사항</h2>
						 <table class="review_list">
							<tr>
								<td colspan="6">
									<a href="http://localhost:9000/dream/notice/notice_list.jsp">
										<button type="button" class="btn_style2">전체 목록</button>
									</a>
								</td>
							</tr>
							<tr>
								<th width="7%">번호</th>		
								<th width="40%">제목</th>				
								<th >등록일</th>		
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
  <!--Essential Scripts =====================================-->
    <script src="http://localhost:9000/dream/js/dreamReview.js"></script>   
</body>
</html>