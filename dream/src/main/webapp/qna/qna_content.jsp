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
    <h2>문의게시판</h2>
        <div class="row" style="display: block;">
			<table class="table" style="text-align: left; border: 1px solid #dddddd">
				
				<tbody>
					<tr>
						<th>제목</th>
						<td><%=vo.getQna_title() %></td>
					</tr>
					<tr>   
					    <th>작성자</th>
                        <td><%=vo.getMem_id1() %></td>
                        <th>작성일</th>
                        <td><%=vo.getQna_date() %></td>
                    </tr>
					<tr>	
						<th>파일첨부</th>
                        <td><input type="file" name="fileName"></td>
                        <th>조회수</th>
                        <td><%=vo.getQna_hits() %></td>
					</tr>
                    <tr>
                        <th>내용</th>
                        <td colspan="4" style="height: 350px; text-align:left;"><%=vo.getQna_content() %></td>
                    </tr>
				</tbody>
			</table>
			
		
             <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <%-- 홀,짝 행 구분 --%>
                    <thead>
                        <tr>
                            <th colspan="3"
                                style="background-color: #eeeeeee; text-align: left;">댓글</th>
                        </tr>
                    </thead>
                        <%  
                           CommDAO dao = new CommDAO();
                           ArrayList<CommVO> list = dao.getList(vo.getQna_id());
                           for(int i=0; i<list.size(); i++){
                        %>
                    <tbody>
                        <tr>
                            <td style="text-align: left;"><%= list.get(i).getMem_id() %></td>
                            <td style="text-align: left;"><%= list.get(i).getComm_content() %>
                            <td style="text-align: right;"><%= list.get(i).getComm_date() %>
                            <td style="text-align: right;"><a href="update.jsp?bbsID=수정" class="btn-primary pull">수정</a></td>
                            <td style="text-align: right;"><a href="update.jsp?bbsID=삭제" class="btn-primary pull">삭제</a></td>
                        </tr>
                        <%
                           }
                        %>
                        
	                    <form method="post" action="comm_write_proc.jsp?qna_id=<%=vo.getQna_id()%>&mem_id=<%=sid%>">
	                       
		                     <tr>
		                         <td style="text-align: left;"><%=sid %></td>
		                         <td><input type="text" style="height:100px; width:150%;" class="form-control" placeholder="(200자 이내)" name = "comm_content"></td>
		                         <td></td>
		                         <td style="text-align: right;"><input type="submit" class="btn-primary pull" value="댓글 작성"></td>
		                     </tr>
	                    </form>  
	                </tbody>  
	            </table>
	        </div>
     </div>
        <div>    
			<a href="qna_list.jsp" class="btn btn-primary">목록</a>
			<a href="qna_update.jsp?qna_id=<%=qna_id%>" class="btn btn-primary">수정</a>
			<a href="qna_delete_proc.jsp?qna_id=<%=qna_id%>" class="btn btn-primary">삭제</a>
			
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