<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)session.getAttribute("NAME");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원명(NAME)가져오기</title>
</head>
<body>
회원명 : <%= name %>
</body>
</html>