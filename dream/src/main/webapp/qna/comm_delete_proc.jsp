<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>    
    
<% request.setCharacterEncoding("utf-8"); 
int comm_id = Integer.parseInt(request.getParameter("comm_id"));
int qna_id = Integer.parseInt(request.getParameter("qna_id"));
%>    

<%
    CommDAO dao = new CommDAO();
	int result = dao.deleteC(comm_id);
	
	if(result ==1){
	    QnaDAO qdao = new QnaDAO();
	    qdao.subtractHits(qna_id);
	    qdao.subtractCommCount(qna_id);
	    response.sendRedirect("qna_content.jsp?qna_id="+qna_id); 
	}
%>
