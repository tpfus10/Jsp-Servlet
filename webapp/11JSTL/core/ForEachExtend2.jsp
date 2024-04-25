<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.LinkedList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head><title>JSTL - forEach 2</title></head>
<body>
	<h4>List 컬렉션 사용하기</h4>
	<%
	LinkedList<Person> lists = new LinkedList<Person>();
	lists.add(new Person("맹사성", 34, "위인1"));
	lists.add(new Person("장영실", 44, "위인2"));
	lists.add(new Person("신숙주", 54, "위인3"));
	%>
	<c:set var="lists" value="<%= lists %>"/>
	<c:forEach items="${ lists }" var="list">
	<li>
	이름 : ${ list.name }, 나이 : ${ list.age }, 직업 : ${ list.job }
	</li>
	</c:forEach>
	
	<h4>Map 컬렉션 사용하기</h4>
	<%
	Map<String, Person> maps = new HashMap<String, Person>();
	maps.put("1st", new Person("맹사설", 34, "위인1"));
	maps.put("2st", new Person("장영실", 44, "위인2"));
	maps.put("3st", new Person("신숙주", 54, "위인3"));
	%>
	<c:set var="maps" value="<%= maps %>"/>
	<c:forEach items="${ maps }" var="map">
	<li>
	key => "${ map.key }" <br />
	value => 이름 : ${ map.value.name }, 나이 : ${ map.value.age }, 직업 : ${ map.value.job }
	</li>
	</c:forEach>
</body>
</html>