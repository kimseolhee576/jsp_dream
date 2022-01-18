<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.dream.dao.reservDao,com.dream.vo.reservVO" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.dream.vo.reservVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>


<%
	reservDao dao = new reservDao();
	int result = dao.insert(vo);
	
	
	if(result == 1){
	    
		response.sendRedirect("reserv_result.jsp");
		
		
	}else{
		System.out.println("예매실패");
	}	
%>
