<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String popupMode = "on"; //레이어 팝업창 띄울지 여부

Cookie[] cookies = request.getCookies(); //쿠키를 읽어 popupMode 값 설정
if(cookies != null) {
	for(Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if(cookieName.equals("PopupClose")) { //PopupClose 쿠키가 존재하면 
			popupMode = cookieValue; //popupMode의 값 갱신
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리 ver 0.1</title>
<style> /*css로 레이어 팝업창의 위치와 디자인 설정  */
div#popup {
position: absolute; top:100px; left:50px; color:yellow;
width: 270px; height:100px; background-color:gray;
}
div#popup>div {
position: relative; background-color:#ffffff; top: 0px;
border:1px solid gray; padding: 10px; color:black;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
$(function() {
	$('#closeBtn').click(function() { //닫기 버튼을 누르면 
		$('#popup').hide(); //팝업창을 숨김 처리
		var chkVal = $("input:checkbox[id=interactiveToday]:checked").val(); //체크여부를 저장하는 변수
		if(chkVal == 1) {
			$.ajax({ //jQuery의 ajax() 함수로 비동기 요청
				url : './PopupCookie.jsp', //PopupCookie.jsp 파일에
				type : 'get', //HTTP GET 방식으로 
				data : {inactiveToday : chkVal}, //inactiveToday=<chkVal 변수의 값> 데이터를 
				dataType : "text", //응답 데이터의 타입은 일반 텍스트이며
				success : function(resData) { //요청 성공 시 호출되는 함수
					if(resData != '') //요청 성공시
						location.reload(); //페이지를 새로 고칩니다.
				}
			});
		}
	});
});
</script>
</head>
<body>
<h2>팝업 메인 페이지(ver 0.1)</h2>
<%
for(int i = 1; i<=10; i++) {
	out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
}
if(popupMode.equals("on")) { //popupMode 값이 "on"일 때만 팝업창 표시
%>
<div id="popup"> <!-- 현재 창 위에 팝업을 띄울 때는 div 사용 -->
<h2 align="center">공지사항 팝업입니다.</h2>
<div align="center"><form name="popFrm">
<input type="checkbox" id="interactiveToday" value="1" /> <!-- 체크박스 -->
하루 동안 열지 않음
<input type="button" value="닫기" id="closeBtn" /><!-- 닫기 버튼 -->
</form></div>
</div>
<%
}
%>
</body>
</html>