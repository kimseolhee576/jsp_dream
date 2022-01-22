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
        <section>
             <h2>문의게시판</h2>             
               <form action="qna_delete_proc.jsp" method="post" onsubmit="return confirm('문의글을 정말로 삭제하시겠습니까?');">
                  <input type="hidden" name="qna_id" value="<%= vo.getQna_id() %>" >
                     <table class="review_content" >
                        <tr>
                            <td colspan="4">
                                <a href="http://localhost:9000/dream/qna/qna_list.jsp">
                                    <button type="button" class="btn_style2">목록</button>
                                </a>
                            </td>
                        </tr>
                        <tr>
						<tr>
							<th>제목</th>
                            <td class="title_style">&nbsp;&nbsp;<%= vo.getQna_title() %></td>
                            <td class="date_style">날짜 <%= vo.getQna_date() %></td>
                            <td class="date_style">조회수 <%= vo.getQna_hits() %></td>
                        </tr>   
                        <tr>
                            <th>작성자</th><td colspan="3">&nbsp;&nbsp; <%= vo.getMem_id1() %></td>   
                        </tr>  
	                    <tr>
	                        <th>내용</th><td colspan="4" height="300px">&nbsp;&nbsp;<%= vo.getQna_content() %></td>
	                    </tr>
						<tr>
	                        <% if(vo.getMem_id1().equals(sid) || "admin".equals(sid)){ %>
	                            <td colspan="4">
	                                <a href="http://localhost:9000/dream/qna/qna_update.jsp?qna_id=<%= vo.getQna_id()%>">
	                                    <button id="update_qna_btn" type="button" class="btn_style1">수정</button>
	                                </a>
	                                    <button type="submit" class="btn_style1">삭제</button>
	                            </td>
	                        <% }else{ %>
	                            <td colspan="4"></td>
	                        <% } %>
	                    </tr>
                    </table>
                    <p></p>
                  </form>  
               
                   <p></p>
	                   <table id="qna_comment_list" style="border-bottom: none; width: 1000px; margin:auto" >
	                       <thead style="border-bottom: none !important; margin:auto"> 
		                      <tr>
		                          <th style="font-weight: bold; color: black; border-bottom: 2px solid black; width:4%">댓글</th>
		                      </tr>
		                      
		                   </thead>
		                   <tbody>   
		                       <%
		                        CommDAO dao = new CommDAO();
		                        ArrayList<CommVO> list = dao.getList(vo.getQna_id());
		                        for(int i=0; i<list.size(); i++){
		                       %>   
		                      <tr style="border-bottom: 1px dotted grey !important;">
		                          <td style="width: 8%"><%=list.get(i).getMem_id1() %></td>
		                          <!-- <div id="read_comment"> -->
		                          <td style="width: 50%"><%=list.get(i).getComm_content() %></td>
		                          <td style="text-align: right; width: 20%;"><%=list.get(i).getComm_updatedate() %></td>
		                          <!-- </div> -->
		                          
		                          
		                            <% if(list.get(i).getMem_id1().equals(sid) || "admin".equals(sid)){ %>
		                          <td>  
		                                   <a href="http://localhost:9000/dream/qna/comm_edit.jsp?qna_id=<%= list.get(i).getQna_id()%>&comm_id=<%=list.get(i).getComm_id() %>">
		                                   <button type="button" class="btn_style1">수정</button>
		                                   </a>
		                                   <a href="http://localhost:9000/dream/qna/comm_delete_proc.jsp?qna_id=<%= list.get(i).getQna_id()%>&comm_id=<%=list.get(i).getComm_id() %>">
		                                   <button type="button" class="btn_style1">삭제</button>
		                                   </a>
		                                   
		                          </td> 
		                            <% }else{ %>
	                              <td></td>
	                              <% }  %>
		                       </tr>   
		                        <% }  %>       
	                        </tbody> 
	                            
	                    </table> 
	                 
                     <br>  
                     
                     <% if(vo.getMem_id1().equals(sid)|| "admin".equals(sid)){ %> 
                <form name="qna_comment_form" style="padding:0 60px !important;" method="post" action="comm_write_proc.jsp?qna_id=<%=vo.getQna_id()%>&mem_id1=<%=sid%>">    
                    
                    <table id="write_comment" class="qna_comment_write" style="border-bottom: none; margin:auto" >    
                       
                         <tbody style="border-bottom: none !important; margin:auto">
		                     <tr style="border-bottom: none !important; margin:auto">
		                         <td style="text-align: left;"><%=sid %>&emsp;</td>
		                         <td style="width: 700px !important"><textarea style="height:100px; width:100%;" class="form-control" placeholder="댓글을 등록해주세요(200자 이내)" name = "comm_content" required></textarea></td>
		                         <td style="text-align: right;">&emsp;<button type="submit" class="btn_style3">댓글 등록</button></td>
		                     </tr>
		                
		                 </tbody>   
                   </table>
               </form>    
                     <% }  %> 
             </div>        
  
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
