<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String sid = (String)session.getAttribute("sid");
int qna_id = Integer.parseInt(request.getParameter("qna_id"));
%>
<jsp:useBean id="vo" class="com.dream.vo.QnaVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
	QnaDAO dao = new QnaDAO();
    dao.subtractHits(qna_id); 
    vo.setMem_id2(sid);
    
	int result = dao.updateQ(vo);
	
	if(result ==1){
	    dao.subtractHits(qna_id);
	    response.sendRedirect("qna_content.jsp?qna_id="+qna_id);

	}
%>
