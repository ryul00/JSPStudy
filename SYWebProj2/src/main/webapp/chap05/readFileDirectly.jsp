<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>
<%
	char[]buff = new char[128];
	int len = -1;
	
	/* Java에서 파일 경로를 지정할 때, 역슬래시(\)는 이스케이프 문자로 사용되기 때문에, 실제 역슬래시 하나를 나타내려면 URL을 문자열로 인식하게 하려면 \\ 두 개를 사용해야함 */
	String filePath = "C:\\Users\\gju07\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Apache Tomcat 9.0 Tomcat9\\message\\notice.txt";
	try(InputStreamReader fr = new InputStreamReader(
			new FileInputStream(filePath), "UTF-8")) {
		while((len = fr.read(buff))!= -1){
			out.print(new String(buff,0,len));
		}
	} catch(IOException ex){
		out.println("예외 발생: " + ex.getMessage());
	}	
%>
</body>
</html>