<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(id.equals(password)){
		session.setAttribute("MEMBERID", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	로그인 성공이요~
</body>
</html>
<%
	}else{
%>

<script>
alert("아이디,비밀번호가 틀려용~")
history.go(-1);
</script>
<%
	}
%>