<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String s = request.getParameter("hanja")+","+request.getParameter("hanja2")+","+request.getParameter("hanja3");
String file = "D:/encoding/encoding/WebContent/WEB-INF/hanja.txt";
PrintWriter pw = new PrintWriter(new FileWriter(file, true));
pw.println(s);
pw.close();
%>
</body>
</html>