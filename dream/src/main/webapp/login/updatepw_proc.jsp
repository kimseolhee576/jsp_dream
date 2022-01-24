<%@ page import="com.dream.vo.MemberVO" %>
<%@ page import="com.dream.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/> 
    
<% 
    String mem_id = request.getParameter("mem_id");
    MemberDao dao = new MemberDao();
    
    int result = dao.setNewPassword(vo, mem_id);
%>    
    
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
    </head>
    <body>
    <% if(result == 1 ){ %>
        <script>
        alert("비밀번호가 성공적으로 변경되었습니다.\n새로 로그인을 진행해주세요.");
        location.href="http://localhost:9000/dream/login/login.jsp";
        
        </script>
    <% } %>
    </body>
    </html>
   
