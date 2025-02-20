<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("장준익", "utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
<%=cookie.getName()%> 쿠키의 값 = <%=cookie.getValue() %>
</body>
</html>