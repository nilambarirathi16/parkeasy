<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin-->Update</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
         <style>
           
            
          
section
{
    padding:1vh 0vh;
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
}
.ul
{
    padding:0% 0% 2% 0%;
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
    background:black;

}
.a:hover{
    color: black;
    border: none;

    background:#797979;
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
.b{
    padding:2% 1% 0% 1%;
    margin-top: 7%;
    margin-left:0%;
    height:60%;
    position:relative;
    /*background:linear-gradient(to top,rgb(121, 119,119) 4%,rgb(109, 108, 108) 24%);*/
    background-attachment:fixed;
    background:white;
    border-radius: 1%;
    box-sizing: border-box;
    box-shadow: 0.5px 0.5px 4px 4px rgba(0,0,0,0.6);
    }
.p{
    text-align: center;
    font-style: italic;
    font-weight: bold;
 }
.submit {
                text-align: center;
                font-family: 'Roboto Slab', serif;
                margin-left: 0%;
                padding-top: 1%; 
     }

.bg{
    background-image: url(park2.jpg);
      background-repeat: no-repeat;
    background-attachment: scroll;
 } 
.box .inputbox {
    position: relative;
   
}
.box{
    padding-top:10%;
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


.fpass{
    margin-left:84%;
        padding:1% 0% 4% 0%;
}


select{
            background: none;
            padding-left:25%;
            border: none;
            border-bottom: 2px solid rgb(35, 36, 41);
            margin-bottom: 15%;
            margin-left: 4%;
        }
   option{
            border:none;
            background-color: transparent
            }
.bt{
    height:0%;
    width: 30%;
    
    color: black;
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
.container{
    background-color: white;
    grid-column-start: start;
    display: grid;
    grid-column-gap:7%;
    grid-row-gap: 10%;
    grid-template-columns: auto auto auto;
    font-size:4vh;
    text-align: center;
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
  <div style="background-image: url(images/blacky.jpg);height:800px">
    <div class="container-fluid div" style="border:2px solid transparent;height:86vh;">
        <div class="row " style="border:2px solid transparent; display: flex; justify-content: center;">
            <div  class="col-xs-3 b">                   
                        <ul class="nav nav-tabs">
                            <li class="a">
                                    <a class="nav-link a active" data-toggle="tab" href="#menu1">INSERT</a></li>
                                    <li class="a" >        
                                    <a class="nav-link a " data-toggle="tab" href="#menu2">DELETE</a></li>                               
                        </ul>
                        <div class="tab-content">
                            <div id="menu1" class="tab-pane active">
                                <section class="form-group box">
                                    <form action="UPDB">
                                        <div class="inputbox" >
                                               <label><font color="black"><b>Location:</b></font></label><br><br>
                                               
        					<select name="location" style="width:100%;height:30%;">
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
						        </div>
						                                                
						                                                <div class="inputbox">
                                                    <label><font color="black"><b>Two Wheeler:</b></font></label><br>
                                                    <input type="text" name="two" required >
                                                    </div>
                                                    
                                                <div class="inputbox">
                                                    <label><font color="black"><b>Four Wheeler:</b></font></label><br>
                                                    <input type="text" name="four" required >
                                                    </div>
                                                    
                                                    <div class="inputbox">
                                                    <label><font color="black"><b>Others:</b></font></label><br>
                                                    <input type="text" name="others" required >
                                                    </div>
                                                    <div class="submit">  
                                <button type="submit" class="btn bt" name="act" value="insertdb">ENTER</button></div>
                            </div>
                                    </form>
                                </section>   
                                
                            <div id="menu2" class="tab-pane fade">
                                <section class="form-group box">
                                    <form action="UPDB"> 
                                        
                                            <div class="inputbox">
                                                <label><font color="black"><b>Slot_id :</b></font></label><br>
                                                <input type="text" name="slot_id" required minlength="4" maxlength="5">
                                                    
                                            </div>
                                            <div class="submit">  
                                <button type="submit" class="btn bt" name="act" value="deletedb">ENTER</button></div>
                                
                                                
                                    </form>
                                </section>
                            </div>                                  
                        </div>
            </div> 
        </div> 
    </div>  
 </div>         
<br>
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
</form>
</body>
</html>