package com.receipt;

import java.awt.Desktop;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
@WebServlet("/RECEIPT")
public class receipt extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		String vehino=(String) session.getAttribute("vehicleno");
		Connection con = null;
		int rs = 0,rp=0;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");	
			
			PreparedStatement st =con.prepareStatement("delete from fees where vehicle_no='"+vehino+"';");
			rs=st.executeUpdate();
			if(rs==1)
			{
				PreparedStatement s =con.prepareStatement("update slot set available='available', vehicle_no='null' where vehicle_no='"+vehino+"';");
				int r=s.executeUpdate();
				if(r==1)
				{
					st =con.prepareStatement("delete from vehicle where vehicle_no='"+vehino+"';");
					rp=st.executeUpdate();
					if(rp==1)
					{
						response.sendRedirect("vehicle.jsp");
					}
				}
				else
					response.sendRedirect("receipt.jsp");
		}
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("receipt.jsp");
		}
		
	}
}
