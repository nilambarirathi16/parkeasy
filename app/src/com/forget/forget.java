package com.forget;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;
@WebServlet("/FORGET")
public class forget extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String act=request.getParameter("act");
		if(act.compareTo("login")==0)
			response.sendRedirect("login.jsp");
		else if(act.compareTo("done")==0)
		{
			long uname=Long.parseLong(request.getParameter("uname"));
			String email=request.getParameter("email");
			String pwd=request.getParameter("pwd");
			Connection connection = null;
			ResultSet rs ;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
				Statement query=(Statement) connection.createStatement();
				rs=query.executeQuery("select * from users where contact_no="+uname+"");
				if(rs.next())
				{
					PreparedStatement st =connection.prepareStatement("update users set u_password='"+pwd+"' where contact_no="+uname+";");
					int r=st.executeUpdate();
					if(r==1)
						response.sendRedirect("login.jsp");
				}
			}
			catch(Exception e) {
				System.out.println(e);
				response.sendRedirect("signup.jsp");
			}
		}
	}
}
