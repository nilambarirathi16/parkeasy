package com.genpdf;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class genpdf
 */
@WebServlet("/genpdf")
public class genpdf extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
			String file_name="D:/KOMAL/Project PDF/receipt.pdf";
			
			Document document=new Document();
			PdfWriter.getInstance(document,new FileOutputStream(file_name));
			document.open();
			
			PreparedStatement ps=con.prepareStatement("select fees.vehicle_no, slot.slot_id, slot.address, fees.total_amount from fees inner join slot on fees.vehicle_no=slot.vehicle_no where slot.vehicle_no='mh 30 aw 2089';");
			ResultSet rs=ps.executeQuery();
		}
		catch(Exception e){
			
		}
	}
}
