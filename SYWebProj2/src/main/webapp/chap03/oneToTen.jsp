<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-10까지의 합</title>
</head>
<body>
	<!-- p66 -->
	<%
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	%>
	1부터 10까지의 합은
	<%=sum%>입니다.

	<!-- p67 -->
	<br>
	<%
	int sum2 = 0;
	for (int i = 11; i <= 20; i++) {
		sum2 += i;
	}
	%>

	11부터 20까지 합은
	<%=sum2%>입니다.

	<br>
	<!-- 표현식 만으로 계산 -->
	1부터 10까지 합은
	<%=1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10%>
	입니다.
</body>
</html>