<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String file = "D:/encoding/Hanja/WebContent/WEB-INF/han.txt";
BufferedReader br = new BufferedReader(new FileReader(file));
String str = "";
while ((str = br.readLine()) != null) {
	 String[] txtArr = str.split(",") ;
	 %>
	 <div id="box">
	 	<p id="hanja"><%=txtArr[0] %></p>
	 	<span id="left"><%=txtArr[1] %></span>
	 	<span id="right"><%=txtArr[2] %></span>
	 </div><%
}
br.close();
%>
</body>
</html>