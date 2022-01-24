<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>

<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.QnaVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*" />

<%
	String sid = (String)session.getAttribute("sid");
	vo.setMem_id1(sid);
    QnaDAO dao = new QnaDAO();
	int result = dao.writeQ(vo);
	
	if(result ==1){
		response.sendRedirect("qna_list.jsp");
	}
%>
