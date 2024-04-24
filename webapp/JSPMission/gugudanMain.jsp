<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String type = request.getParameter("sel");//input의 value값을 가져옴
String sval = request.getParameter("val");

if(type.equals("Type1")) { //sel=Type1
	response.sendRedirect("gugudan1.jsp?dan=" + sval);//상대 경로 사용
}

if(type.equals("Type2")) { //sel=Type2
	response.sendRedirect("gugudan2.jsp?col=" + sval);//상대 경로 사용
}
%>

