<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/chap10/member/sessionLogin.jsp"
	method="post">
	아이디 <input type="text" name="id" size="20">
	패스워드 <input type="password" name="password" size="20">
	<input type="submit" value="로그인">
</form>
</body>
</html>