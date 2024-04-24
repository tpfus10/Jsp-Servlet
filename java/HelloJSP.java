import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String str2 = "안녕하세요..!";

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		String str1 = request.getParameter("lang");
		
		PrintWriter out = response.getWriter();
		
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>HelloJSP</title>");
		out.write("</head>");
		out.write("<body>");
		out.write("<h2>처음 만들어보는 <%=str1%></h2>");
		out.write("<p>");
		out.println(str2 + str1 + "입니다. 열공합시다^^*");
		out.write("</p>");
		out.write("</body>");
		out.write("</html>");
	}
	
	

}
