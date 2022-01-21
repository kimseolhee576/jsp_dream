<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.QnaVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
	QnaDAO dao = new QnaDAO();
	int result = dao.updateQ(vo);
	
	if(result ==1){
	    response.sendRedirect("qna_list.jsp");

	}
%>
