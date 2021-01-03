package com.signup;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/SIGNUP")
public class signup extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String act=request.getParameter("act");
		System.out.println(act);
		if(act.compareTo("login")==0)
			response.sendRedirect("login.jsp");
		else if(act.compareTo("signin")==0)
		{
			long uname=Long.parseLong(request.getParameter("uname"));
			String email=request.getParameter("email");
			String pwd=request.getParameter("pwd");
			Connection con = null;
			int rs = 0;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
				PreparedStatement st =con.prepareStatement("insert into users values(?,?,?);");
				st.setLong(1,uname);
				st.setString(2,email);
				st.setString(3,pwd);
				rs=st.executeUpdate();
				if(rs==1)
				{
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