package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String act=request.getParameter("act");
		try {
			if(act.compareTo("showdb")==0)
				response.sendRedirect("showdb.jsp");
			else if(act.compareTo("updb")==0)
				response.sendRedirect("updb.jsp");
			else if(act.compareTo("addl")==0)
				response.sendRedirect("addloc.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("admin.jsp");
		}
	}
}
