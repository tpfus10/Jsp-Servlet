<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>구구단 출력 Type3 JSP 완성</title>
<style>
input#select {
	margin-top: 10px;
}

</style>
</head>
<body>
<form action="gugudanMain.jsp">
<!-- radio: 폼에서 여러 옵션 중에서 사용자가 하나만 선택할 수 있는 입력 요소 -->
<!-- 각각의 라디오 버튼에 동일한 name 속성을 부여하고, 서로 다른 value 속성을 지정 -->
<input type="radio" name="sel" value="Type1">Type1<br/>
<input type="radio" name="sel" value="Type2">Type2<br/>
<input type="number" name="val"> 단수/열수<br/>
<!-- 클릭하면 폼에 입력한 데이터가 폼의 action 속성에 지정된 URL로 전송됨 -->
<!-- 폼 데이터는 폼 안의 모든 입력 요소(텍스트 입력란, 체크박스, 라디오 버튼 등)에 입력된 값들을 포함 -->
<input type="submit" value="선택" id="select"/>
</form>
</body>
</html>