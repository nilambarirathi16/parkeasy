<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Slot Booked</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
            <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
         
            <style>
               body

        section
        {
            padding:1vh 0vh;
        }

        .footer 
        {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;      
            background-color:rgb(17, 16, 16);
            color: white;
            text-align: center;
        }
        .navig{
            height:12%;
        width:100%;
        background-color:white;
        position:fixed;
        z-index:1;
        
            
        }
        .div
        {
            padding-top:8vh;
            padding-bottom:8vh;
        }
        .button{
            margin: 0% 47.5%;
            margin-top: 10%;
            padding-top: 10%;
        }
        
        .a{
            border:1px solid black;
            display: flex;
            justify-content: center;
            width: 154.3px;
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            color: rgb(0, 0, 0);
            font-weight: bold;
            font-size: 2.5vh;
        }
        .a:active{
            background:#c5c4c483;

        }
        .a:hover{
            color: black;
            border: none;
            background: #797979;
        }
        .nav-tabs{

            color:white;
            background: transparent;
        }
        .nav-link1{
        color:black;
        height: 100%;
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
        .b{
            padding:3% 3% 3% 3%;
        margin-top:5%;
        margin-left:0%;
        
        position:relative;
        /*background:linear-gradient(to top,rgb(121, 119,119) 4%,rgb(109, 108, 108) 24%);*/
        background-attachment:fixed;
        background:white;
        border-radius: 1%;
        box-sizing: border-box;
        box-shadow: 0.5px 0.5px 4px 4px rgba(0,0,0,0.6);
            }

        .submit {
                    text-align: center;
                    font-family: 'Roboto Slab', serif;
                    margin-left: -15%;
                    margin-top: 28%; 
         }

        .p{
            text-align: center;
            font-style: italic;
            font-weight: bold;
         }

        .bg{
            background-image: url(images/blacky.jpg);

         }

        
        
        .box{
            padding-top: 10%;
        }

        .box .inputbox input {

        width: 80%;
        padding:5% 5% 0 5%;
        font-size: 19px;
        color:black;
        font-family: 'Times New Roman', Times, serif;
        margin-bottom: 8%;
        margin-left: 10%;
        border: none;
        border-bottom: 2px solid rgb(35, 36, 41);
        transition: 0.2s ease-in-out; 
        outline: none;
        background: transparent;

        }

        .box .inputbox label{
            position: absolute;
        top:0;
        left:0;
        padding:4% 0;
        margin-left: 10%;
        font-family: sans-serif;
        font-size: 16px;
        color: rgb(231, 229, 229);
        opacity: 0.8;
        pointer-events: none;
        transition: .5s; 
        }


        .box .inputbox input:focus~label,
        .box .inputbox input:valid~label{
            top:-18px;
            left:0;
            color: rgb(189, 251, 255);
            font-size: 13px;
            font-weight: lighter;
            font-family: monospace;
        }
        .bt{
               height: 100%;
        width: 100%;
        
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
        
        .boxdisplay{
        	margin-top:10%;
        	border: 1px solid black;
        	text-align:center;
        	margin-left: 30%;
            padding-left: 10%;
            padding-right: 28%;
            font-size: 20px;
            text-size-adjust: auto;
            padding-top: 0%;
            padding-bottom: 0%;
            margin-bottom: 10%;
        }
        .boxdisplay1{
        	margin-top:6%;
        	border: 1px solid black;
        	text-align:center;
        	margin-left: 11%;
        	margin-right:11%;
            padding-left: 10%;
            padding-right: 10%;
            font-size: 20px;
            text-size-adjust: auto;
            padding-top: 0%;
            padding-bottom: 0%;
            margin-bottom: 10%;
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
                <div style="background-image: url(images/blacky.jpg); height:550px">
            <div class="container-fluid div" style="border:2px solid transparent;height:86vh;">
                <div class="row " style="border:2px solid transparent; display: flex; justify-content: center;">
                    <div  class="col-lg-3 b">
                        <form class="form-group">
                            <fieldset>
                          		<div class="p">                       
                                	<p><h2><i>SLOT IS UNAVAILABLE</i></h2><br>
                                	 <h4>SORRY FOR INCONVENIENCE</h4>
                                	 <h4>THANK YOU FOR VISITING US!!</h4></p>
                                </div>
                     </fieldset>
                  </form>
               </div>
                </div>
        	   </div>
        	</div>
        <br>
<%
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
		{}
	}
}
catch(Exception e){}
%>

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

        </body>
        </html>
