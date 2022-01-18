<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.dream.vo.MemberVO,com.dream.dao.MemberDao"%>
    
<%
    request.setCharacterEncoding("UTF-8");
    %>
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>

<%
	MemberDao dao = new MemberDao();
	int result = dao.insert(vo);
	if(result==1){
//	    System.out.println("로그인으로 이동");
	    response.sendRedirect("http://localhost:9000/dream/login/login.jsp?join_result=succ");
	}else{
	    System.out.println("회원가입 실패");
	}
%>
