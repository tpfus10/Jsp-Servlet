package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/12Servlet/AnnoMapping.do")//이 url이 호출되면 
public class AnnoMapping extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)//이 메소드를 호출 
			throws ServletException, IOException {
		req.setAttribute("message", "@WebServlet으로 매핑");
		req.getRequestDispatcher("/12Servlet/AnnoMapping.jsp")
		   .forward(req, resp);
	}
	
}
