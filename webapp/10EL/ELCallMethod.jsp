<%@ page import="el.MyELClass" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("myClass", myClass);
%>
<html>
<head><title>표현 언어(EL) - 메서드 호출</title></head>
<body>
	<h3>영역에 저장 후 메서드 호출하기</h3>
	001225-3000000 => ${ myClass.getGender("001225-3000000") } <br /> <!-- static으로 선언되어 있어 객체를 생성하지 않고 접근 가능한 메소드 -->
	001225-2000000 => ${ myClass.getGender("001225-2000000") } <br />
	
	<ul>
		<li>isNumber("100") => ${ MyELClass.isNumber("100") } </li> <!-- static으로 선언되어 있어 객체를 생성하지 않고 접근 가능한 메소드 -->
		<li>isNumber("이백") => ${ MyELClass.isNumber("이백") } </li>
	</ul>
	
	<h3>클래스명을 통해 정적 메서드 호출하기</h3>
	${ MyELClass.showGugudan(7) }
</body>
</html>