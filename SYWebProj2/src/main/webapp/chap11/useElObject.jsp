<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "yukr");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Object</title>
</head>
<body>
요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성: ${requestScope.name }<br>
code 파라미터: ${param.code} 
<!-- EL에서 code param은 값이 없어도 null로 표현X  -->
</body>
</html>