package com.slot;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/SLOT")
public class slot extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		String address=(String) session.getAttribute("address");
		int type=(Integer) session.getAttribute("type");
		String vehino=(String) session.getAttribute("vehicleno");
		String slot=(String) session.getAttribute("slots");
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
			if(slot.compareTo("unav")==0)
			{
				PreparedStatement s =con.prepareStatement("delete from vehicle where vehicle_no='"+vehino+"';");
				int rs=s.executeUpdate();
				if(rs==1)
					response.sendRedirect("vehicle.jsp");
			}
			else
			{
				PreparedStatement st =con.prepareStatement("update fees set exit_time=current_time(), exit_date=current_date() where vehicle_no='"+vehino+"';");
				int fes=st.executeUpdate();
				if(fes==1)
				{
					Statement query=con.createStatement();
					ResultSet r=query.executeQuery("select total_amount from fees where vehicle_no='"+vehino+"';");
					if(r.next())
					{
						int amt=r.getInt(1);
						session.setAttribute("total", amt);
						Statement query2=con.createStatement();
						ResultSet rt=query2.executeQuery("select total from daily_collection where address='"+address+"' and vehicle_type="+type+";");
						if(rt.next())
						{
							amt=amt+rt.getInt(1);
							PreparedStatement sk =con.prepareStatement("update daily_collection set total="+amt+" where address='"+address+"' and vehicle_type="+type+";");
							int fe=sk.executeUpdate();
							if(fe==1)
								response.sendRedirect("receipt.jsp");
						}
					}
				}
			}
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("slot.jsp");
		}
	}
}