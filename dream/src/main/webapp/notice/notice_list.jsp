<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.dream.dao.NoticeDao, com.dream.vo.NoticeVO, java.util.ArrayList, java.time.LocalDate"%>

<%
	NoticeDao dao = new NoticeDao();
	ArrayList<NoticeVO> list = dao.select();
%>

<!doctype html>
<html>
  <head profile="http://www.w3.org/2005/10/profile">
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

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
  <link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet"> 
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
		         <h1 class="text-capitalize mb-4 text-lg">고객센터</h1>
		         <ul class="list-inline"></ul>
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
					<form name="searchForm" action="search.jsp" method="post">
						<table class="notice_list">
							<tr>
								<td colspan="4" class="search">
									<select class="listSelect" name="searchField">
										<option value="ntitle">제목</option>
									</select>
									<input type="text" placeholder="검색어 입력" name="searchText" id="searchText">
									<button type="button" class="btn_style3" onclick="searchCheck()">검색</button>
								</td>
							</tr>
							<tr>
								<th width="10%" >번호</th>
								<th >제목</th>
								<th width="15%">작성일</th>
								<th width="10%">조회수</th>
							</tr>
							<% for(NoticeVO vo : list) { %>
							<tr>
								<td><%= vo.getRno() %></td>
								<td>&emsp;<a href="notice_content.jsp?notice_id=<%=vo.getNotice_id() %>"><%=vo.getNtitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a>&nbsp;
								<% LocalDate today = LocalDate.now();
								if(today.toString().equals(vo.getNotice_date())){%>   
		              <span class="badge " style="background:#B4B4FF">new</span></td>
		            			<% } %>
								<td><%= vo.getNotice_date() %></td>
								<td><%= vo.getNotice_hits() %></td>
							</tr>
							<% } %>
							<tr>
								<% if("admin".equals(sid)) { %>
								<td colspan="4">
									<a href="notice_write.jsp"><button type="button" class="btn_style1">글쓰기</button></a> 
								</td>
								<% } else if (sid == null) { %>	
								<td colspan="4">
								</td>
								<% } else { %>
								<td colspan="4">
								</td>
								<% } %>
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

<!--  Essential Scripts =====================================-->    
    <script src="http://localhost:9000/dream/js/project02.js"></script>
</body>
</html>