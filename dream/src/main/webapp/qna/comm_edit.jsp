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
int comm_id = 0;
comm_id = Integer.parseInt(request.getParameter("comm_id"));
QnaVO vo = new QnaDAO().getQnaVO(qna_id);
CommVO cvo = new CommDAO().getComment(qna_id, comm_id);
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
                              <!-- <div id="read_comment"> -->
                              <td style="width: 50%"><%=list.get(i).getComm_content() %></td>
                              <td style="text-align: right; width: 20%;"><%=list.get(i).getComm_updatedate() %></td>
                              <!-- </div> -->
                              
                          </tr>   
                            <% } %>      
                        </tbody> 
                            
                    </table>  
                     <br>
                     
                     
                <form name="qna_comment_form" style="padding:0 60px !important;" method="post" action="comm_update_proc.jsp?qna_id=<%=qna_id %>&comm_id=<%=comm_id%>">     
                    
                    <table id="edit_comment" class="qna_comment_write" style="border-bottom: none; margin:auto" >  
                         <tbody style="border-bottom: none !important; margin:auto">
                             <tr style="border-bottom: none !important; margin:auto">
                                 <td style="text-align: left;"><%=cvo.getMem_id1() %>&emsp;</td>
                                 <td style="width: 700px !important"><textarea style="height:100px; width:100%;" class="form-control" placeholder="<%=cvo.getComm_content() %>" name = "comm_content" required></textarea></td>
                                 <td style="text-align: right;">&emsp;<button type="submit" class="btn_style3">수정 완료</button></td>
                                 <td style="text-align: right;">&emsp;<button type="button" class="btn_style3" onclick="history.back()">수정 취소</button></td>
                             </tr>      
                         </tbody>   
                   </table>
               </form>   
                
               
                
             </div>        
               
 <%--              <div id="edit" style="display:none">
                     <table id="qna_comment_list2" style="border-bottom: none; width: 1000px; margin:auto; " >
                        <thead style="border-bottom: none !important; margin:auto"> 
                          <tr>
                              <th style="font-weight: bold; color: black; border-bottom: 2px solid black; width:4%">댓글</th>
                          </tr>
                          
                       </thead>
                       <tbody>   
                           <%
                            CommDAO dao2 = new CommDAO();
                            ArrayList<CommVO> list2 = dao2.getList(vo.getQna_id());
                            for(int i=0; i<list2.size(); i++){
                           %>   
                          <tr style="border-bottom: 1px dotted grey !important;">
                              <td style="width: 8%"><%=list2.get(i).getMem_id1() %></td>
                              <!-- <div id="read_comment"> -->
                              <td style="width: 50%"><%=list2.get(i).getComm_content() %></td>
                              <td style="text-align: right; width: 20%;"><%=list2.get(i).getComm_date() %></td>
                              <!-- </div> -->
                              
                          </tr>   
                           <% } %>       
                        </tbody> 
                            
                    </table>  
                     <br>
                     
                     
                <form name="qna_comment_form" style="padding:0 60px !important;" method="post" action="comm_update_proc.jsp?comm_id=<%=list2.get(i).%>">     
                    
                    <table id="edit_comment" class="qna_comment_write" style="border-bottom: none; margin:auto" >  
                         <tbody style="border-bottom: none !important; margin:auto">
                             <tr style="border-bottom: none !important; margin:auto">
                                 <td style="text-align: left;"><%=sid %>&emsp;</td>
                                 <td style="width: 700px !important"><textarea style="height:100px; width:100%;" class="form-control" placeholder="수정하세요" name = "comm_content" required></textarea></td>
                                 <td style="text-align: right;">&emsp;<button type="submit" class="btn_style3">수정 완료</button></td>
                                 <td style="text-align: right;">&emsp;<button type="submit" class="btn_style3" onclick="cancel()">수정 취소</button></td>
                             </tr>      
                         </tbody>   
                   </table>
               </form>   
                
               
                
             </div>    --%> 
                 
	      </section> 
	   </div>
    </div>
</section> 
</div>  
    <script>
    function edit(){
    	document.getElementById("update_qna_btn").style.display = "none";
        document.getElementById("delete_qna_btn").style.display = "none";
    
    }
    
    
    	
    	
   /*  	document.getElementById("update_qna_btn").style.display = "none";
        document.getElementById("delete_qna_btn").style.display = "none";
        document.getElementById("qna_comment_list").style.display = "none";
        document.getElementById("write_comment").style.display = "none";
        document.getElementById("qna_comment_list2").style.display = "";
        document.getElementById("edit_comment").style.display = ""; */
    }
   
    
    
    function goback(){
        document.getElementById("read_content").style.display = "";
        document.getElementById("edit_content").style.display = "none";
        document.getElementById("read_button").style.display = "";
        document.getElementById("update_qna_btn").style.display = "";
        document.getElementById("delete_qna_btn").style.display = "";
        document.getElementById("write_comment").style.display = "";
        document.getElementById("update_button").style.display = "none";
        document.getElementById("cancel_button").style.display = "none";
        
    }
    </script>



    <!-- jQuery CDN -->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
     <script type="text/javascript">
        function answerEdit(comm_id, mem_id1, comm_content, qna_id){
            $('#comm_content'+comm_id).html(
                "<textarea id='edit_content"+comm_id+"'>"+comm_content+"</textarea>"
                +"<style>#edit_content"+comm_id+"{width:740px; height:80px; resize:none;} </style>"
            );
            
            $('#comm_button'+comm_id).html(
                "<a onclick='answerEditSave("+comm_id+","+qna_id+")' id='btnEdit'>완료</a> "
                +"<a onclick='location.href='qna_content.jsp?qna_id="+qna_id+"' id='btnCancel'>취소</a>"
            );
        }
        
        function answerEditSave(comm_id, qna_id){
            var comm_content = $("#comm_content"+comm_id).val();
            location.href='comm_update.jsp?comm_id='+comm_id+"&comm_content="+comm_content; 
           
        }
    </script>

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
