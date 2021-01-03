package com.addloc;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ADDLOC")
public class addloc extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con=null;
		Statement query=null;
		ResultSet rs=null;
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int t=Integer.parseInt(request.getParameter("two"));
		int f=Integer.parseInt(request.getParameter("four"));
		int o=Integer.parseInt(request.getParameter("others"));
		int r=0;
		String address=request.getParameter("location");
		String location=request.getParameter("locadd");
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
			query=con.createStatement();
			rs=query.executeQuery("select distinct address from slot");
			while(rs.next())
			{
				String addres="";
				addres=rs.getString(1);
				if(address.equals(addres))
				{
					response.sendRedirect("addloc.jsp");
				}
			}
			int i=0;
			while(i<t)
			{
				char c=address.charAt(0);
				String pt="P"+c+"_"+i;
				PreparedStatement p=con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',2,'available');");
				r=p.executeUpdate();
				i++;
			}
			int j=0;
			while(j<f)
			{
				char c=address.charAt(0);
				String pt="P"+c+"_"+i;
				PreparedStatement p=con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',4,'available');");
				r=p.executeUpdate();
				i++;
				j++;
			}
			int k=0;
			while(k<o)
			{
				char c=address.charAt(0);
				String pt="P"+c+"_"+i;
				PreparedStatement p=con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',6,'available');");
				r=p.executeUpdate();
				i++;
				k++;
			}
			int s=2;
			if(r==1)
			{
				PreparedStatement p=con.prepareStatement("insert into daily_collection (address,vehicle_type) values('"+address+"',"+s+");");
				int rt=p.executeUpdate();
				if(rt==1)
				{
					p=con.prepareStatement("insert into daily_collection (address,vehicle_type) values('"+address+"',"+4+");");
					int rp=p.executeUpdate();
					if(rp==1)
					{
						p=con.prepareStatement("insert into daily_collection (address,vehicle_type) values('"+address+"',"+6+");");
						int rk=p.executeUpdate();
						if(rk==1)
						{
							p=con.prepareStatement("insert into loc values('"+address+"','"+location+"');");
							int rr=p.executeUpdate();
							if(rr==1)
							{
								response.sendRedirect("admin.jsp");
							}
						}
					}
				}
			}
			rs.close();
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("addloc.jsp");
		}
	}
}
