package com.showdb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/SHOWDB")
public class showdb extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String act=request.getParameter("act");
		try {
			if(act.compareTo("usershow")==0)
				response.sendRedirect("usershow.jsp");
			else if(act.compareTo("slotshow")==0)
				response.sendRedirect("slotshow.jsp");
			else if(act.compareTo("collectshow")==0)
				response.sendRedirect("collection.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("showdb.jsp");
		}
	}

	
}
