<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int col = Integer.parseInt(request.getParameter("col"));
%>
<html>
<head>
<title>구구단 출력 Type2 JSP 완성</title>
</head>
<body>
	<h2>구구단 출력</h2>
	<%
	if (col != 0) {
		try {
		for(int k = 2; k<10; k+=col) {
			for (int i = 1; i < 10; i++) {
				for (int j = k; j < k+col; j++) {
					if (j > 9) { //j가 9인 채로 j반복문이 종료되고 나머지 반복문이 실행됨
                        break; 
                    }
					out.println(j + "*" + i + "=" + i * j + " ");
					}
				out.println("<br />");
				}
			out.println("<br />");
		}
		} catch (Exception e) {
			out.println("숫자를 입력해주세요");
		}
	}
	%>
</body>
</html>