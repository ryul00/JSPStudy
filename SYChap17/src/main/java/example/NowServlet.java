package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/hello")
public class NowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NowServlet() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter outPrintWriter = response.getWriter();
		outPrintWriter.println("<html>");
		outPrintWriter.println("<head><title>현재시간</title></head>");
		outPrintWriter.println("<body>");
		outPrintWriter.println("현재 시간은");
		outPrintWriter.println(new Date());
		outPrintWriter.println("입니다.");
		outPrintWriter.println("</body></html>");
	}
}
