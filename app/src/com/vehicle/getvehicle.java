package com.vehicle;

import com.login.login;
import java.io.IOException;
import java.sql.*;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/VEHICLE")
public class getvehicle extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		   
			String address=request.getParameter("location");
			String vehicletype=request.getParameter("vehicle_type");
			String vehicleno=request.getParameter("vehicle_no");
			vehicleno=vehicleno.toUpperCase();
			//vehicleno=vehino;
			int vehitype=2;
			Connection con = null;
			int rs = 0;
	
			try {
				
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
				HttpSession session=request.getSession();
				long uname=(long) session.getAttribute("uname");
				if(vehicletype.compareTo("Two Wheeler")==0)
					vehitype=2;
				else if(vehicletype.compareTo("Four Wheeler")==0)
					vehitype=4;
				else if(vehicletype.compareTo("Other")==0)
					vehitype=6;			
				session.setAttribute("vehicleno",vehicleno);	
				session.setAttribute("address",address);
				session.setAttribute("type",vehitype);			
				PreparedStatement st =con.prepareStatement("insert into vehicle values('"+vehicleno+"',"+vehitype+",'"+address+"',"+uname+");");
				rs=st.executeUpdate();
				if(rs==1)
				{
					Statement query=con.createStatement();
					ResultSet r=query.executeQuery("select slot_id from slot where address='"+address+"' and vehicle_type="+vehitype+" and available='available' limit 1;");
					if(r.next())
					{
						String slot_id=r.getString(1);
						st =con.prepareStatement("update slot set available='unavailable' ,vehicle_no='"+vehicleno+"' where slot_id='"+slot_id+"';");
						rs=st.executeUpdate();
						session.setAttribute("slots", slot_id);
						if(rs==1)
							st =con.prepareStatement("insert into fees(vehicle_no,vehicle_type,entry_time,entry_date) values('"+vehicleno+"',"+vehitype+",current_time(),current_date());");
						int rt=st.executeUpdate();
						if(rt==1)
							response.sendRedirect("slot.jsp");
					}
					else
					{
						session.setAttribute("slots", "unav");			
						response.sendRedirect("unavailable.jsp");
					}
				}
			}
			catch(Exception e) {
				response.sendRedirect("vehicle.jsp");
			}
	}
}
