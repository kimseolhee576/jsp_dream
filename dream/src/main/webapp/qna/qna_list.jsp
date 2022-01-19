<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page import="java.util.ArrayList" %>

<%
  QnaDAO dao = new QnaDAO();
  ArrayList<QnaVO> list = dao.getList();
%>

<!doctype html>
<html>
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

  <meta name="author" content="themefisher.com">

<title>문의게시판 | 드림월드</title>
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

  <!-- 게시판 스타일 통일-->
  <link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">

</head>

<body>

<!-- Header Start -->

<%@include file ="../header.jsp" %>

<!-- Header Close -->

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
          <h2>문의게시판</h2>
    			<table class="review_list">
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
						<th>작성자</th>
						<th>등록일</th>
						<th width="10%">조회수</th>
  					</tr>
            <% for(QnaVO vo : list){ %>
    				<tr>
              <td><%=vo.getQna_id() %></td>
              <td><a href="qna_content.jsp?qna_id=<%=vo.getQna_id()%>">&emsp;<%=vo.getQna_title() %></a></td>
              <td><%=vo.getMem_id1() %></td>
              <td><%=vo.getQna_date() %></td>
              <td><%=vo.getQna_hits() %></td>
          </tr>
          <% } %>
          <tr>
            <td colspan="6">
    			<% if(sid!=null){ %>
    			     <a href="http://localhost:9000/dream/qna/qna_write.jsp"> 	<button type="button" class="btn_style1">글쓰기</button>
               </a>
    			<% }else{ %>
    			     <button type="button" class="btn_style1" onclick="qnaLoginAlert()">글쓰기</button>
                <% } %>
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
    <script src="http://localhost:9000/dream/plugins/jquery/jquery.js"></script>
    <script src="http://localhost:9000/dream/js/contact.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="http://localhost:9000/dream/plugins/bootstrap/js/popper.js"></script>
    <script src="http://localhost:9000/dream/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup-->
    <script src="http://localhost:9000/dream/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Slick Slider -->
    <script src="http://localhost:9000/dream/plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="http://localhost:9000/dream/plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="http://localhost:9000/dream/plugins/counterup/jquery.counterup.min.js"></script>


    <script src="http://localhost:9000/dream/js/script.js"></script>

  </body>
  </html>
