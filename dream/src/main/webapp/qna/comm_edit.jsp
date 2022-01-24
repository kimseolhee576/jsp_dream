<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int qna_id = 0;
    int comm_id = 0;
	qna_id = Integer.parseInt(request.getParameter("qna_id"));
	comm_id = Integer.parseInt(request.getParameter("comm_id"));
	QnaVO vo = new QnaDAO().getQnaVO(qna_id);
	CommVO cvo = new CommDAO().getComment(qna_id, comm_id);
%>

<!doctype html>
<html>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>문의게시판 | 드림월드</title>
  <link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> 

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">

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
               <form name="qna_delete_form" action="qna_delete_proc.jsp" method="post" >
                  <input type="hidden" name="qna_id" value="<%= qna_id %>" >
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
	                        <td colspan="4"><br><br></td>
	                    </tr>
                    </table>
               </form> 
                               
               <div id="edit">
                     <table id="qna_comment_list" style="border-bottom: none; width: 1000px; margin:auto; " >
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
                              <td style="width: 50%"><%=list.get(i).getComm_content() %></td>
                              <td style="text-align: right; width: 20%;"><%=list.get(i).getComm_updatedate() %></td>
                             
                              
                          </tr>   
                            <% } %>      
                        </tbody> 
                            
                    </table>  
                     <br>
                     
                     
                <form name="qna_comment_form" style="padding:0 60px !important;" method="post" action="comm_update_proc.jsp">     
                  <input type="hidden" name="comm_id" value="<%=comm_id %>" >
                  <input type="hidden" name="qna_id" value="<%=qna_id %>" >
                    <table id="edit_comment" class="qna_comment_write" style="border-bottom: none; margin:auto" >  
                         <tbody style="border-bottom: none !important; margin:auto">
                             <tr style="border-bottom: none !important; margin:auto">
                                 <td style="text-align: left;"><%=cvo.getMem_id1() %>&emsp;</td>
                                 <td style="width: 700px !important"><textarea style="height:100px; width:100%;" class="form-control" name = "comm_content" required><%=cvo.getComm_content() %></textarea></td>
                                 <td style="text-align: right;">&emsp;<button type="submit" class="btn_style3">수정 완료</button></td>
                                 <td style="text-align: right;">&emsp;<button type="button" class="btn_style3" onclick="history.back()">수정 취소</button></td>
                             </tr>      
                         </tbody>   
                   </table>
               </form>   
             </div>   
	      </section> 
	   </div>
    </div>
</section> 
</div>  
 
<!-- footer Start -->
<%@include file ="../footer.jsp" %>

  
  </body>
  </html>
