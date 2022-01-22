<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String sid = (String)session.getAttribute("sid");
int comm_id = Integer.parseInt(request.getParameter("comm_id"));
int qna_id = Integer.parseInt(request.getParameter("qna_id"));
/* String qna_id = request.getParameter("qna_id");  */
%>

<jsp:useBean id="vo" class="com.dream.vo.CommVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
    
    CommDAO dao = new CommDAO();
    vo.setMem_id2(sid);
   
    
	int result = dao.updateC(vo);
	
	if(result ==1){
	    System.out.println(qna_id);
	    response.sendRedirect("qna_content.jsp?qna_id="+qna_id);
	}
	
%>
