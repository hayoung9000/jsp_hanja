<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
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
request.setCharacterEncoding("utf-8");
String radioValue = request.getParameter("hanja");
out.print(radioValue);
String file = "D:/encoding/Hanja/WebContent/WEB-INF/han.txt";
PrintWriter pw = new PrintWriter(new FileWriter(file, true));
pw.println(radioValue);
pw.close();
%>
</body>
</html>