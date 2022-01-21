<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>


<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.CommVO"></jsp:useBean> 
<jsp:setProperty name="vo" property="*" />

<%
    CommDAO dao = new CommDAO();
    String qna_id = request.getParameter("qna_id");
    String mem_id1 = request.getParameter("mem_id1");
    
	int result = dao.writeC(vo);
	
	if(result ==1){
		response.sendRedirect("qna_content.jsp?qna_id="+qna_id);
	} 
	
%>    