package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/oi")
public class OiMundo extends HttpServlet{



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(request, response);
		
		PrintWriter out = response.getWriter();
		out.println("<html><title>Primeira Servlet</title><body><h1><marquee>Oi Mundo Servlet!</marquee></h1></body></html>");
	}

}
