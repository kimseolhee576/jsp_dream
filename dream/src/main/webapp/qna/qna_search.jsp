<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>

<%
	int pageNo = 1; 
	if(request.getParameter("pageNo") != null){
	    pageNo = Integer.parseInt(request.getParameter("pageNo"));
	}

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
				<section class="review_board">
          <h2>문의게시판</h2>
    			<table class="review_list">
  					<tr>
		              <td colspan="6">
                         <a href="http://localhost:9000/dream/qna/qna_list.jsp">
                            <button type="button" class="btn_style2">전체 목록</button>
                          </a>
                      </td>
                    </tr>
                    <tr>
                    
						<th width="7%">번호</th>
						<th width="40%">제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th width="10%">조회수</th>
  					</tr>
            <%
	            QnaDAO dao = new QnaDAO();
                ArrayList<QnaVO> list = dao.getSearch(request.getParameter("searchField"), request.getParameter("searchText"));
	           
                for(QnaVO vo : list){ 
            %>
    				<tr>
		              <td><%=vo.getQna_id() %></td>
		              <td>&emsp;<a href="qna_content.jsp?qna_id=<%=vo.getQna_id() %>"><%=vo.getQna_title().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a>
		            <%if(vo.getComm_count()!=0){ %>
		              <span style="color: orange">[<%=vo.getComm_count() %>]</span>
		            <%} %>
		            <% LocalDate today = LocalDate.now();
		            if(today.toString().equals(vo.getQna_date())){%>   
		              <span class="badge " style= "background: #B4B4FF">new</span></td>
		            <%} %> 
		              <td><%=vo.getMem_id1() %></td>
		              <td><%=vo.getQna_date() %></td>
		              <td><%=vo.getQna_hits() %></td>
		          </tr>
            <%} %>  
          <tr>
            <td colspan="6">
               
            </td>
          </tr>
            
        </table>
       </section>
     </div>
   </div>
</section>   
</div>

<script>
function qnaWriteAlert(){
    alert("글쓰기는 회원만 가능합니다. 로그인페이지로 이동합니다.");
    location.href="login/login.jsp";
    
}

function searchCheck(){
    let searchText=document.getElementById("searchText");
        if(searchText.value == ""){
            alert("검색어를 입력해주세요");
            return false;
        }else{
            searchForm.submit();
        }
}
</script>
<!-- footer Start -->
<%@include file ="../footer.jsp" %>

  </body>
  </html>
