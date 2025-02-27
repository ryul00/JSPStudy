package mvc.hello;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;


public class HelloHandler implements CommandHandler {
	private static final long serialVersionUID = 1L;
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("hello", "안녕하세요!");
		return "/WEB-INF/view/hello.jsp";
	}
	
	

}
