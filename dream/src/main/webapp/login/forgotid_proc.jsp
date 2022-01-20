<%@ page import="com.dream.vo.MemberVO" %>
<%@ page import="com.dream.dao.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/> 
    
<%
    MemberDao dao = new MemberDao();
    String result = dao.getFindIdResult(vo);
    
    if(result != null){
        session.setAttribute("userid", result); 
        response.sendRedirect("http://localhost:9000/dream/login/forgotid_result.jsp");
    }else{
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('일치하는 회원 정보가 없습니다.')");
        script.println("history.back()");
        script.println("</script>");
    }    
%>    
