<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int qna_id = 0;
qna_id = Integer.parseInt(request.getParameter("qna_id"));
QnaVO vo = new QnaDAO().getQnaVO(qna_id);
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
        <section class="qna">
             <h2>문의게시판</h2>
               <form name="reviewUpdateForm" action="qna_update_proc.jsp" method="post" >
                  <input type="hidden" name="qna_id" value="<%= qna_id %>" >
                     <table class="review_write">
                            <tr>
                                <td colspan="2">
                                    <a href="http://localhost:9000/dream/qna/qna_list.jsp">
                                        <button type="button" class="btn_style2">목록</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td><input type="text" id="qna_title" name="qna_title" value="<%= vo.getQna_title() %>" style="width: 99%" required></td>
                            </tr>   
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="qna_content" name="qna_content" style="width: 99%; height:400px;" required><%= vo.getQna_content() %></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" id="qna_write_btn">수정완료</button>
                                    <button type="reset" class="btn_style1">다시쓰기</button>
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
