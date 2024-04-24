<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
if(id == null) {
	id="musthave";
}
%>
<html>
<head><title>JDBC</title></head>
<body>
<h2>사용자 <%=id %>가 작성한 board 목록 출력</h2>
<table border ="1" style="width: 700px; height: 180px">
<tr>
<th>NUM</th>
<th>TITLE</th>
<th>CONTENT</th>
<th>NAME</th>
<th>POSTDATE</th>
<th>VISITCOUNT</th>
</tr>
<%
JDBConnect jdbc = new JDBConnect();

String sql = "SELECT b.num, b.title, b.content, m.name, b.postdate, b.visitcount "
			+"FROM board b, member m "
			+"WHERE b.id = m.id AND b.id= '"+ id +"'";
Statement stmt = jdbc.con.createStatement();

ResultSet rs = stmt.executeQuery(sql);

while(rs.next()) {
%>
<tr>
<td><%= rs.getString(1)%></td>
<td><%= rs.getString(2)%></td>
<td><%= rs.getString(3)%></td>
<td><%= rs.getString(4)%></td>
<td><%= rs.getString(5)%></td>
<td><%= rs.getString(6)%></td>
</tr>
<%
}

jdbc.close();
%>
</table>
</body>
</html>