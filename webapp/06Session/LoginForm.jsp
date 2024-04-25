<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
		.box {
 			border: 1px solid black;
 			width: 100%;
 			padding: 10px;
 			display: flex;
            flex-direction: column;
            justify-content: center; /* 수직 중앙 정렬 */
			align-items: center; /* 수평 중앙 정렬 */
}

		.all {
			display: flex;
            flex-direction: column;
            justify-content: center; /* 수직 중앙 정렬 */
			align-items: center; /* 수평 중앙 정렬 */
			width: 90%;
}
</style>
<title>Session</title>
</head>
<body>
<div class="all">
<jsp:include page="../Common/Link.jsp" />
<h2>로그인 페이지</h2>
<span style="color: red; font-size:1.2em;">
	<%= request.getAttribute("LoginErrMsg") == null ?
	"" : request.getAttribute("LoginErrMsg")%>
</span>
<%
if(session.getAttribute("UserId") == null) {
%>
<script>
function validateForm(form) {
	if(!form.user_id.value) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if(form.user_pw.value == "") {
		alert("패스워드를 입력하세요");
		return false;
	}
}
</script>
<div class="box">
<form action="LoginProcess.jsp" method="post" name="loginForm"
	  onsubmit="return validateForm(this);">
	  아이디 : <input type="text" name="user_id" /><br />
	  패스워드 : <input type="password" name="user_pw" /><br />
	  <input type="submit" value="로그인하기" /><br />
</form>
</div>
<%
} else {
%>
<%=session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br />
<a href="Logout.jsp">[로그아웃]</a>
<%
}
%>
</div>
</body>
</html>