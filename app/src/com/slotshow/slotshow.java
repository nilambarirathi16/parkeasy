package com.slotshow;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class slotshow
 */
@WebServlet("/slotshow")
public class slotshow extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	try
	{
		int vehitype=0;
		String address=request.getParameter("location");
		String vehicletype=request.getParameter("vehicle_type");
		if(vehicletype.compareTo("Two Wheeler")==0)
			vehitype=2;
		else if(vehicletype.compareTo("Four Wheeler")==0)
			vehitype=4;
		else if(vehicletype.compareTo("Other")==0)
			vehitype=6;			
		HttpSession session=request.getSession();
		session.setAttribute("location",address);
		session.setAttribute("vehicle_type",vehitype);
		response.sendRedirect("show.jsp");
	}
	catch(Exception e)
	{
		
	}
}
}
