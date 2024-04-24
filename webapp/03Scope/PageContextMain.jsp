<%@ page import="common.Person" %> <!-- common.Person 객체 임포트 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%//속성 저장
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99, "위인"));
%>

<html>

<head><title>page 영역</title></head>

<body>

<h2>page 영역의 속성값 읽기</h2>
<%
int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
String pString = (String)(pageContext.getAttribute("pageString").toString());
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul>
<li>Integer 객체 : <%=pInteger %></li>
<li>String 객체 : <%=pString %></li>
<li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge() %></li>
</ul>

<h2>include된 파일에서 page 영역 읽어오기</h2>
<%@ include file="PageInclude.jsp" %>

<h2>페이지 이동 후 page 영역에서 읽어오기</h2>
<!-- a태그를 통한 이동은 새로운 페이지를 요청하는 것 -->
<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>

</body>

</html>