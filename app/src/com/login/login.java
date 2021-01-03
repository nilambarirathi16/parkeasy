package com.login;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
		public void service(HttpServletRequest req, HttpServletResponse rep)  throws IOException{
			Connection connection = null;
			Statement query=null;
			ResultSet rs=null;
			String act=req.getParameter("act");
			if(act.compareTo("signin")==0)
				rep.sendRedirect("signup.jsp");
			
			else if(act.compareTo("login")==0)
			{	
				long c=Long.parseLong(req.getParameter("uname"));
				HttpSession session=req.getSession();
				session.setAttribute("uname",c);
				String p=req.getParameter("pwd");
							
				try {			
					Class.forName("com.mysql.jdbc.Driver");
					connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
					query=connection.createStatement();
					rs=query.executeQuery("select contact_no, u_password from users");
					while(rs.next())
					{
						long name=0;
						String pwd="";
						name=rs.getLong(1);
						pwd=rs.getString(2);
						
						if(p.equals(pwd) && c==name)
						{
							break;
							//rep.sendRedirect("vehicle.jsp");
						}
					}
					if(!rs.next())
						rep.sendRedirect("login1.jsp");
					else
						rep.sendRedirect("vehicle.jsp");

					rs.close();
					connection.close();
					//rep.sendRedirect("login1.jsp");

				}
				catch (Exception e)
				{
					rep.sendRedirect("login1.jsp");
				}
			}
			else if(act.compareTo("logedin")==0) {
				
				long c=Long.parseLong(req.getParameter("uname"));
				HttpSession session=req.getSession();
				session.setAttribute("uname",c);
				String p=req.getParameter("pwd");
				long nam=0000000000;
				String pt="root";
				if(p.equals(pt) && c==nam)
					rep.sendRedirect("admin.jsp");
			}
			else
				rep.sendRedirect("login1.jsp");
		}
	}