<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
	String resourcePath = "/message/notice.txt";
%>
자원의 실제 경로(서버 내 지정 경로): <br>
<%= application.getRealPath(resourcePath) %>
<br>
------------<br>
<%= resourcePath %>의 내용<br>
------------<br>
<%
	char[] buff = new char[128];
	int len = -1;
	
	
	try (InputStreamReader br = new InputStreamReader(
			application.getResourceAsStream(resourcePath), "UTF-8")) {
		while ((len = br.read(buff)) != -1) {
			out.print(new String(buff, 0, len)); // char 배열의 내용을 출력
		}
	} catch (IOException ex) {
		out.print("예외 발생: " + ex.getMessage());
	}
%>
</body>

</html>