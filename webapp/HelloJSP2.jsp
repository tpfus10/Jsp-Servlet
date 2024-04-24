<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
String str2 = "안녕하세요!! ";
String getMessage(String str1) {
	if(str1 == null) {
	return "null입니다.";
	} else if (str1.equals("JSP")) {
		return "열공합시다^^*";
	} else {
		return "빡시게 하자잉";
	}
}
%>
<%
//request는 jsp 내장객체
String str1 = request.getParameter("lang");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body>
<h2>처음 만들어보는 <%=str1%></h2>
<p>
<%
//out은 jsp 내장객체
	out.println(str2 + str1 + "입니다. " + getMessage(str1));
%>
</p>
</body>
</html>