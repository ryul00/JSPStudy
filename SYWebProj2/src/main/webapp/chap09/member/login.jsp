<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "util.Cookies" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
	
	
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
로그인 성공!
</body>
</html>
<%
	}else {
%>
<script>
alert("로그인 실패ㅠㅠ");
history.go(-1);
</script>
<%
	}
%>