<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

    <style>
         
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
    padding:1% 6% 3% 6%;
    margin-top: 5%;
    margin-left:3%;
    position:relative;
    /*background:linear-gradient(to top,rgb(121, 119,119) 4%,rgb(109, 108, 108) 24%);*/
    background-attachment:fixed;
    background:white;
    border-radius: 1%;
    box-sizing: border-box;
    box-shadow: 0.5px 0.5px 4px 4px rgba(0,0,0,0.6);
    }

.box .inputbox {
    position: relative;
    padding-top: 20%;
   
}
.box{
    padding-top:6%;
}


.bt{
    height:0%;
    width: 100%;
    
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
    <button class="nav-link1" type="submit"><h5>Log Out</h5></button> 
</nav></div>
</form>
<form action="admin">
<div style="background-image: url(images/blacky.jpg);height:68vh">
    <div class="container-fluid div" style="border:2px solid tansparent;height:86vh;">
        <div class="row " style="border:2px solid transparent; display: flex; justify-content: center;">
            <div  class="col-xs-3 b"> <form class="form-container box">
                    <fieldset>
                        <form> 
                        <br>
                        <div class="inputbox">
                            <button type="submit" class="btn bt" name="act" value="showdb">Show Databases</button>
                        </div>
                        <br><br>
                        <div class="inputbox">
                            <button type="submit" class="btn bt" name="act" value="addl">Add Location</button>
                        </div>
                        <br><br>             
                        <div class="inputbox">
                            <button type="submit" class="btn bt" name="act" value="updb">Update Database</button>
                        </div>   
                        <br>                       
                    </form>
                </fieldset>
            
            </div>
        </div>
    </div>            
</div><br>
<footer>
    <center>
        
          <img height="3%" width="3%" src="icon2.png">
<h3>ParkEasy</h3>

<p>
<a href="#">About</a>
|
<a href="#">Contact</a>
</p>
<div>
<i class="fa fa-envelope"></i>
<p><a href="mailto:support@eduonix.com">support@justpark.com</a></p>
</div>
<div class="footer-icons"><pre>
<a href="#"><i class="fa fa-facebook"></i></a>    <a href="#"><i class="fa fa-twitter"></i></a>    <a href="#"><i class="fa fa-instagram"></i></a>     <a href="#"><i class="fa fa-linkedin"></i></a>    <a href="#"><i class="fa fa-youtube"></i></a>
</pre>
</div>
</center>     
</footer>
</form>
</body>
</html>
    