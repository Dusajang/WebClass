<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
http://localhost/webPro/html/days05/ex05_ok.jsp
?
id=admin
&
passwd=1234
 -->
<%
   // 스크립트 3가지 요소 중에 "스크립트릿", "표현식"
   // 자바 코딩..
   // JSP 에 내장된 9가지 객체 중 
   String id = request.getParameter("id");
   String passwd = request.getParameter("passwd");
%>
입력한 아이디 :  <%= id %><br>
입력한 비밀번호 : <%= passwd %><br>
</body>
</html>