<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<title>Slots statistics</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
.submit {
            text-align: center;
            font-family: 'Roboto Slab', serif;
            margin-left: 0%;
            padding-top: 5%; 
            }
            .bt{
            height:0%;
            width: 10%;
            color: white;
            border-radius: 10%;
            cursor:pointer;
            font-weight: bold;
            text-shadow: 1px 1px #1f272b;
            border-style:inset;
            border-radius: 7%;
            -moz-border-radius: 3%;
            -webkit-border-radius: 3%;
            background: transparent; /* old browsers */
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            box-shadow: 1px 2px 1px rgba(0,0,0,0.2); /* CSS3 */
            -moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Firefox */
            -webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Safari, Chrome */
            }
            .bt:hover {
            color: #fff;
            background: #4C5A64; /* old browsers */
            background: -moz-linear-gradient(top, rgba(52, 230, 206, 0.7) 3%, rgba(38, 212, 189, 0.7) 4%, rgba(32, 197, 175, 0.7) 100%); /* firefox */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,rgba(42, 155, 138, 0.7)), color-stop(4%,rgba(27, 134, 120, 0.7)),color-stop(100%,rgba(26, 94, 100, 0.7))); /* webkit */ 
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
            }
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   height:4%;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}

body{
	background:url("images/wall.jpg");
}

.navig{
        height:12%;
        width:100%;
        background-color:white;
        position:;
        z-index: 1;
    }
    .div
    {
        padding-top:8vh;
        padding-bottom:8vh;
    }
    
}
    .nav-tabs{

        color:white;
        background: transparent;
    }
    .nav-link1{
        color:black;
        height: 63%;
        text-align: center;
        margin-left:75%;
        border:none;
        border-radius: 10%;
        background-color:white;
    }
    .nav-link1:hover{
        color: #fff;
    background: #4C5A64; /* old browsers */
    background: -moz-linear-gradient(top, rgba(52, 230, 206, 0.7) 3%, rgba(38, 212, 189, 0.7) 4%, rgba(32, 197, 175, 0.7) 100%); /* firefox */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,rgba(42, 155, 138, 0.7)), color-stop(4%,rgba(27, 134, 120, 0.7)),color-stop(100%,rgba(26, 94, 100, 0.7))); /* webkit */ 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
    }
    .nav-link{
        color:black;
    }
    

#team{
	text-align:left;
	width:80%;
	box-shadow: 0 4px 8px 0 rgba(1, 1, 1, 1), 0 6px 20px 0 rgba(1, 1, 1, 1);	
}

#team td, #team th {
  border: 1px solid #ddd;
  padding: 10px;
}

#team tr:nth-child(even){background-color: darkgrey;}
#team tr:nth-child(odd){background-color: lightgrey;}
.selection{
	margin-top:2vh;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: black;
  border: none;
  color: white;
  text-align: center;
  padding: 20px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.disabled{
	display: inline-block;
	border-radius: 4px;
	background-color: black;
	border: none;
	color: white;
	text-align: center;
	padding: 20px;
	transition: all 0.5s;
	margin: 5px;
	opacity: 1;
	cursor:not-allowed;
}

label{
	color:white;
}
</style>
</head>
<body>
 <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    if(session.getAttribute("uname")==null){
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
    %>
    <form action="logout">
 <div> 
             <nav class="navbar navig">
  <img src="icon2.png" alt="IMAGE HERE" style="height:9vh;width:4vw;"><h1>ParkEasy</h1>
    <button class="nav-link1" type="submit"><h5>Log out</h5></button> 
</nav>

      </div>
      </form>
<div style="background-image: url(images/blacky.jpg); height:750px"><br><br>
      <div>
<center>
	<h1 style="color:#67A9C6">Slots Statistics</h1><br>
<table id="team" style="margin-top:3vh; margin-bottom:3vh; align:center;">
	<tr style="background-color:slategrey;">
		<th>Location</th>
		<th>Two-Wheeler</th>
		<th>Four-Wheeler</th>
		<th>Other</th>
	</tr>
	
	<%
	try
	{
		Connection con=null;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
		Statement query=null, query2=null;
		query=con.createStatement();
		ResultSet rs=query.executeQuery("select distinct address from slot");
		while(rs.next())
		{
			%>
			<tr>
			<th><%=rs.getString(1)%></th>
			
			<% String add=rs.getString(1);
			
			query2=con.createStatement();
			ResultSet rt=query2.executeQuery("select count(case when vehicle_type=2 then 1 end),count(case when vehicle_type=4 then 1 end),count(case when vehicle_type=6 then 1 end) from slot where address='"+add+"'");
			while(rt.next())
			{
							%><th><%=rt.getInt(1)%></th>
							<th><%=rt.getInt(2)%></th>
							<th><%=rt.getInt(3)%></th>
				
			<% } 
			%>
			</tr>
			<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println(e);
	}
	%>	
</table>
</center>
</div>
<center>

<form action="slotshow"> <br><br>
        <div class="inputbox" >
        <label><b>Location : </b></label>
        <select name="location" style="width:18%;height:30%;">
        <%try {			
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
            Statement query=c.createStatement();
            ResultSet rs=query.executeQuery("select distinct address from slot");
            while(rs.next())
            {
            	%>
        <option ><%=rs.getString(1) %></option>
        <%
            }
            }
            catch(Exception e)
            {
            }
         %>
        </select>                      
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                
        <label><b>Vehicle Type : </b></label>
        <select name="vehicle_type" style="width: 270px;height:30px">
        <option value="Two Wheeler">Two Wheeler</option>
        <option value="Four Wheeler">Four Wheeler</option>
        <option value="Other">Other</option>
        </select>                                
        </div>
        <div class="submit">
	        	<button type="submit" class="btn bt" name="act" value="enter">ENTER</button>
	        	</div>
     </form>
     </center>
     </div>
     <br><br><br>
    <div>
        <footer class="footer-distributed">
    <center>
    <div class="footer-left">
              <img height="3%" width="3%" src="icon2.png">
    <h3>ParkEasy</h3>

    <p class="footer-links">
    <a href="#">About</a>
    |
    <a href="#">Contact</a>
    </p>

    </div>

    <div>
    <i class="fa fa-envelope"></i>
    <p><a href="mailto:support@eduonix.com">support@parkeasy.com</a></p>
    </div>
    <div class="footer-icons"><pre>
    <a href="#"><i class="fa fa-facebook"></i></a>    <a href="#"><i class="fa fa-twitter"></i></a>    <a href="#"><i class="fa fa-instagram"></i></a>     <a href="#"><i class="fa fa-linkedin"></i></a>    <a href="#"><i class="fa fa-youtube"></i></a>
    </pre>
    </div>
    </center>
    </footer>
    </div>       
    
</div>
</body>
</html>    