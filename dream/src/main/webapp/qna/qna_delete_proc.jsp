<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>    

<%
	String qna_id = request.getParameter("qna_id");
	QnaDAO dao = new QnaDAO();
	int result = dao.deleteQ(qna_id);
	
	if(result ==1){
	    response.sendRedirect("qna_list.jsp");
	}
%>
