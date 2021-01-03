package com.updb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mysql.jdbc.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.*;
@WebServlet("/UPDB")
public class updb extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection con;
		java.sql.Statement query=null;
		ResultSet rs=null;
		String act=request.getParameter("act");
		int i=1,j=0,r=0,k,l;
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
			if(act.compareTo("insertdb")==0)
			{
				String address=request.getParameter("location");
				int t=Integer.parseInt(request.getParameter("two"));
				int f=Integer.parseInt(request.getParameter("four"));
				int o=Integer.parseInt(request.getParameter("others"));
				query=con.createStatement();
				rs=query.executeQuery("select distinct address from slot");
				while(rs.next())
				{
					String addres="";
					addres=rs.getString(1);
					if(address.equals(addres))
					{
						query=con.createStatement();
						ResultSet rp=query.executeQuery("select count(*) from slot where address='"+addres+"'");
						if(rp.next())
							i=rp.getInt(1);
						l=0;
						while(l<t)
						{
							char c=address.charAt(0);
							String pt="P"+c+"_"+i;
							PreparedStatement p=(PreparedStatement) con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',2,'available');");
							r=p.executeUpdate();
							i++;
							l++;
						}
						j=0;
						while(j<f)
						{
							char c=address.charAt(0);
							String pt="P"+c+"_"+i;
							PreparedStatement p=(PreparedStatement) con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',4,'available');");
							r=p.executeUpdate();
							i++;
							j++;
						}
						k=0;
						while(k<o)
						{
							char c=address.charAt(0);
							String pt="P"+c+"_"+i;
							PreparedStatement p=(PreparedStatement) con.prepareStatement("insert into slot(slot_id,address,vehicle_type,available) values('"+pt+"','"+address+"',6,'available');");
							r=p.executeUpdate();
							i++;
							k++;
						}
						if(r==1)
							response.sendRedirect("admin.jsp");
					}
				}
			}
			else if(act.compareTo("deletedb")==0)
			{
				String slot_id=request.getParameter("slot_id");
				query=con.createStatement();
				PreparedStatement p=(PreparedStatement) con.prepareStatement("delete from slot where slot_id ='"+slot_id+"';");
				r=p.executeUpdate();
				if(r==1)
					response.sendRedirect("admin.jsp");
			}
			
		}
		catch(Exception e)
		{
			response.sendRedirect("updb.jsp");
		}
	}
}
