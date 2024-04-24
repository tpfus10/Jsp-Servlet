<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
int dan = Integer.parseInt(request.getParameter("dan"));
%>
<html>
<head><title>구구단 출력 Type1 JSP 완성</title></head>
<body>
<h2>구구단 출력</h2>
<%
if(dan != 0) {
	try {
		for(int i = 1; i<10; i++)
			out.println(dan + "*" + i + "=" + dan * i + "<br/>");
	} catch (Exception e){
		out.println("숫자를 입력해주세요");
	}
}

%>
</body>
</html>

