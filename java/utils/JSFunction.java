package utils;

import jakarta.servlet.jsp.JspWriter; // 필요한 클래스 임포트

public class JSFunction {

	public static void alertLocation(String msg, String url, JspWriter out) {
		//메시지 알림창을 띄운 후 명시한 URL로 이동
		try {
			//삽입할 자바스크립트 코드
			String script = ""
						  + "<script>"
						  + "	alert('" + msg + "');"
						  + "	location.href='" + url +"';"
						  + "</script>";
			out.println(script); //자바스크립트 코드를 out 내장 객체로 출력(삽입)
		}
		catch (Exception e) {}
	}
	
	//메시지 알림창을 띄운 후 이전 페이지로 돌아감
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
					      +"<script>"
					      +"	alert('" + msg + "');"
					      +"	history.back();"
						  +"</script>";
			out.println(script);
		}
		catch (Exception e) {}
	}
	
}
