<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //페이지 전체에 사용되는 요소를 선언하는 부분
public int add(int num1, int num2) {
	return num1 + num2;
}
%>
<% 
//요청 매개변수를 선언하고 초기화하는 코드가 처리되는 부분
//요청 매개변수를 얻는 변수는 보통 해당 요청의 범위 내에서만 필요하기 떄문에 이 영역에서 선언
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
%>
<!DOCTYPE html>
<html>
<head><title>스크립트 요소</title></head>
<body>
<%
int result1 = add(10,20);
int result2 = 0;
if(num1 != null && num2 != null) {
	try {
		result2 = add(Integer.parseInt(num1),Integer.parseInt(num2));
	} catch (Exception e){
		out.println("숫자를 입력해주세요");
	}
}
%>
덧셈 결과 1: <%=result1 %> <br />
덧셈 결과 2: <%=add(30,40) %> <br />
덧셈 결과 3: <%=result2 %>
</body>
</html>