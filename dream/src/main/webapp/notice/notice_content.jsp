<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.dream.dao.NoticeDao,com.dream.vo.NoticeVO" %>
<%
	String notice_id = request.getParameter("notice_id");
	NoticeDao dao = new NoticeDao();
	NoticeVO vo = dao.select(notice_id, "content");
%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- Required meta tags -->
<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
<meta name="author" content="themefisher.com">

<title>공지사항 | 드림월드</title>

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
	       </div>
	     </div>
	   </div>
	 </div>
</section>
	<section class="section blog-wrap bg-gray">
	   <div class="container">
			<div class="content">
				<form name="notice_contentform" action="notice_delete_proc.jsp" method="post">
				<input type="hidden" name="notice_id" value="<%= notice_id %>">
					<section class="notice">
						<h2>공지사항</h2>
						<table class="notice_content">
							<tr>
								<td colspan="4">
									<a href="notice_list.jsp">
										<button type="button" class="btn_style2">목록</button>
									</a>
								</td>	
							</tr>
							<tr>
								<th>제목</th>
								<td class="title_style">&nbsp;&nbsp;<%= vo.getNtitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")  %></td>
								<td class="date_style">날짜: <%=vo.getNotice_date() %></td>
								<td class="date_style">조회수: <%=vo.getNotice_hits() %></td>
							</tr>
							<tr>
								<th>내용</th><td colspan="4" height="300px">&nbsp;&nbsp;<%=vo.getNcontent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")  %></td>
							</tr>
							<tr>
							<%if ("admin".equals(sid)) { %>
								<td colspan="4">
									<a href="notice_update.jsp?notice_id=<%= notice_id%>"><button type="button" class="btn_style1">수정</button></a>
									<button type="button" onclick="notice_delete()" class="btn_style1">삭제</button>
								</td>
							<% }else{ %>
								<td colspan="4"></td>
							<% } %>
							
							</tr>
						</table>		
					</section>
				</form>
			</div>
		</div>
	</section>
</div>
		<!-- footer Start -->
<%@include file ="../footer.jsp" %>
 <!-- 
    Essential Scripts
    =====================================-->

    <script src="http://localhost:9000/dream/js/project02.js"></script>
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